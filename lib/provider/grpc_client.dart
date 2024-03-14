import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:heiwadai_app/provider/token_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/api/v1/user/Auth.pbgrpc.dart';
import '/api/v1/user/AnonAuth.pbgrpc.dart';
import '/api/v1/user/Messages.pbgrpc.dart';
import '/api/v1/user/Store.pbgrpc.dart';
import '/api/v1/user/UserData.pbgrpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
final clientProvider = Provider<ClientChannel>((ref) {
  const host = '192.168.0.6';
  final channel = ClientChannel(host,
      port: 9000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
  debugPrint("channel: $host");
  ref.onDispose(() {
    debugPrint("channel shutdown");
    channel.shutdown();
  });
  return channel;
});


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
