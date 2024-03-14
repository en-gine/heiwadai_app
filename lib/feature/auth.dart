
import 'package:heiwadai_app/api/v1/user/Auth.pb.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/provider/rest_client.dart';

import '../provider/token_provider.dart';
import 'base_feature.dart';

class AuthClient extends BaseClient {
  AuthClient(super.ref) : super(controller: 'AuthController');

  Future<void> signOut() async {
    await client.call(
        '$controller/SignOut');
  }

  Future<void> refresh( String accessToken, String refreshToken) async {
    final body = RefreshTokenRequest(
      accessToken: accessToken,
      refreshToken: refreshToken
    );

    var response = await client.call('$controller/Refresh', request: body);
    final token = UserAuthTokenResponse.create()
      ..mergeFromProto3Json(response);
    ref
        .read(tokenProvider.notifier)
        .state = TokenState(
      accessToken: token.accessToken,
      refreshToken: token.refreshToken,
      expireIn: token.expiresIn.toInt(),
    );
  }

  Future<void> updatePassword( String password) async {
    final body = UpdatePasswordRequest(password: password);
    await client.call('$controller/UpdatePassword', request: body);
  }

  Future<void> updateEmail( String email) async {
    final body = UpdateEmailRequest(email: email);
    await client.call('$controller/UpdateEmail', request: body);
  }

}
