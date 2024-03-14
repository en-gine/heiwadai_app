import 'dart:convert';

import 'package:heiwadai_app/provider/rest_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../api/v1/user/AnonAuth.pb.dart';
import '../util/encript.dart';
import '/api/v1/user/Auth.pbgrpc.dart';

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
    // final newToken = await ref.read(authControllerProvider).refresh(RefreshTokenRequest());
    final res = await ref.read(httpClientProvider).call('AuthController/Refresh');
    final newToken = UserAuthTokenResponse.fromJson(res.body);

    state = TokenState(accessToken: newToken.accessToken, refreshToken: newToken.refreshToken, expireIn: newToken.expiresIn.toInt());
  }
}

