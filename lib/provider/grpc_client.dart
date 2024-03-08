import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../util/encript.dart';
import '/api/v1/user/Auth.pbgrpc.dart';
import '/api/v1/user/AnonAuth.pbgrpc.dart';
import '/api/v1/user/Messages.pbgrpc.dart';
import '/api/v1/user/Store.pbgrpc.dart';
import '/api/v1/user/UserData.pbgrpc.dart';

final clientProvider = Provider<ClientChannel>((ref) {
  const host = '192.168.0.6';
  final channel = GrpcOrGrpcWebClientChannel.toSingleEndpoint(
    host: host,
    port: 3000,
    transportSecure: false,
  );
  debugPrint("channel: $host");
  ref.onDispose(() {
    debugPrint("channel shutdown");
    channel.shutdown();
  });
  return channel;
});

// トークン情報を管理するProvider
final tokenProvider = StateNotifierProvider<TokenNotifier, TokenState>((ref) {
  return TokenNotifier(ref);
});

// トークンの状態を管理するState
class TokenState {
  final String? accessToken;
  final String? refreshToken;
  final DateTime? expireAt; // 有効期限をDateTimeとして保持
  final int? expireIn;

  TokenState({required this.accessToken, required this.refreshToken, required this.expireIn})
      : expireAt = expireIn != null ? DateTime.now().add(Duration(seconds: expireIn)) : null;

  // DateTime.now()とexpireAtを比較してトークンの有効期限が切れているか判断
  bool get isTokenExpired => expireAt != null ? DateTime.now().isAfter(expireAt!) : false;

  String toJson() => jsonEncode({
    'accessToken': accessToken,
    'refreshToken': refreshToken,
    'expireIn': expireIn,
  });

  static TokenState fromJson(String jsonString) {
    final json = jsonDecode(jsonString);
    return TokenState(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
      expireIn: json['expireIn'],
    );
  }
}

// トークンを管理するNotifier
class TokenNotifier extends StateNotifier<TokenState> {
  final Ref ref;
  TokenNotifier(this.ref) : super(TokenState(accessToken: null, expireIn: null, refreshToken: null));

  @override
  set state(TokenState state) {
    super.state = state;
    _saveTokenState(state);
  }
  // shared_preferencesにトークン情報を保存する
  Future<void> _saveTokenState(TokenState state) async {
    final prefs = await SharedPreferences.getInstance();
    final encryptedTokenState = EncryptionUtils.encryptString(state.toJson());
    await prefs.setString('encryptedTokenState', encryptedTokenState);
  }

  Future<TokenState?> loadTokenState() async {
    final prefs = await SharedPreferences.getInstance();
    final encryptedTokenState = prefs.getString('encryptedTokenState');
    if (encryptedTokenState != null) {
      final decryptedTokenState = EncryptionUtils.decryptString(encryptedTokenState);
      state = TokenState.fromJson(decryptedTokenState);
      return state;
    }
    return null;
  }

  // アクセストークンをリフレッシュするメソッド
  Future<void> refreshToken() async {
    // APIを呼び出してトークンを更新
    final newToken = await ref.read(authControllerProvider).refresh(RefreshTokenRequest());

    state = TokenState(accessToken: newToken.accessToken, refreshToken: newToken.refreshToken, expireIn: newToken.expiresIn.toInt());
  }
}


// 認証情報の更新を行うInterceptor
ClientInterceptor _authInterceptor(Ref ref) {
  final token = ref.watch(tokenProvider);

  return TokenClientInterceptor(token,
    onTokenUpdate: (newToken) {
      ref.read(tokenProvider.notifier).state = newToken ?? TokenState(accessToken: null, expireIn: null, refreshToken: null);
    },
  );
}

typedef TokenUpdateCallback = void Function(TokenState? token);

class TokenClientInterceptor implements ClientInterceptor {
  TokenState? token;
  final TokenUpdateCallback onTokenUpdate;

  TokenClientInterceptor(this.token,  {required this.onTokenUpdate});

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request, CallOptions options, invoker) {
    final metadata = token != null && token?.accessToken != null && token?.refreshToken != null
        ? <String, String>{
      'Authorization': 'Bearer ${token!.accessToken}',
      'X-Refresh-Token': token!.refreshToken ?? '',
    }
        : <String, String>{};
    var newOptions = options.mergedWith(
        CallOptions(
            metadata: metadata
        )
    );
    final responseFuture = invoker(method, request, newOptions);

    // レスポンスが利用可能になったときにヘッダーを取得
    responseFuture.then((response) async {
      final headers = await responseFuture.headers;
      print("headers: $headers");
      final newAccessToken = headers['AccessToken'];
      final newRefreshToken = headers['RefreshToken'];
      final newExpireStr = headers['newExpireIn'];

      int? newExpireIn;
      if (newExpireStr != null) {
        newExpireIn = int.tryParse(newExpireStr);
      }

      final newToken = TokenState(accessToken: newAccessToken, refreshToken: newRefreshToken, expireIn: newExpireIn);
      if (newAccessToken != null || newRefreshToken != null || newExpireIn != null) {
        onTokenUpdate(newToken);
      }else{
        log('Token is not updated token:$newToken');
      }
    });

    return responseFuture;
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(ClientMethod<Q, R> method, Stream<Q> requests, CallOptions options, ClientStreamingInvoker<Q, R> invoker) {
    throw UnimplementedError();
  }
}

final anonAuthControllerProvider =
Provider<AnonAuthControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return AnonAuthControllerClient(channel, interceptors: [_authInterceptor(ref)]);
});

final authControllerProvider =
    Provider<AuthControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return AuthControllerClient(channel, interceptors: [_authInterceptor(ref)]);
});

final messageControllerProvider =
    Provider<MessageControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return MessageControllerClient(channel, interceptors: [_authInterceptor(ref)]);
});

final storeControllerProvider =
    Provider<StoreControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return StoreControllerClient(channel, interceptors: [_authInterceptor(ref)]);
});

final userDataControllerProvider =
    Provider<UserDataControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return UserDataControllerClient(channel, interceptors: [_authInterceptor(ref)]);
});
