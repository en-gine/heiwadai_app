
import 'package:flutter/material.dart';
import 'package:heiwadai_app/api/v1/user/AnonAuth.pb.dart';

import 'package:heiwadai_app/api/v1/user/UserData.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/rest_client.dart';
import '../provider/token_provider.dart';
import 'base_feature.dart';

class AnonAuthClient extends BaseClient {
  final Ref ref;
  AnonAuthClient(super.client, this.ref) : super(controller: 'AnonAuthController');

  Future<void> register(
    UserRegisterRequest userData,
    BuildContext context,
  ) async {
    await client.call(
        '$controller/Register', request: userData);
  }

  Future<void> signIn( String email, String password) async {
    final UserAuthRequest body = UserAuthRequest(email:email, password: password);
    var response = await client.call('$controller/SignIn', request: body);
    final token = AnonTokenResponse.create()..mergeFromProto3Json(response);
    ref.read(tokenProvider.notifier).state = TokenState(
      accessToken: token.accessToken,
      refreshToken: token.refreshToken,
      expireIn: token.expiresIn.toInt(),
    );
  }

  Future<void> signUp(String email, String password) async {
    final UserAuthRequest body = UserAuthRequest(email:email, password: password);
    await client.call('$controller/SignUp', request: body);
  }

  Future<void> resetPassword(String email) async {
    final UserMailRequest body = UserMailRequest(email:email);
    await client.call('$controller/ResetPasswordMail', request: body);
  }

  Future<void> isUnderRegister(String email) async {
    final UserMailRequest body = UserMailRequest(email:email);
    await client.call('$controller/IsUnderRegister', request: body);
  }

  Future<void> resendInviteMail(String email) async {
    final UserMailRequest body = UserMailRequest(email:email);
    await client.call('$controller/ResendInviteMail', request: body);
  }

  Future<void> deleteUnderRegisterUser(String email) async {
    final UserMailRequest body = UserMailRequest(email:email);
    await client.call('$controller/DeleteUnderRegisterUser', request: body);
  }

}
final anonAuthClientProvider = Provider<AnonAuthClient>((ref) {
  final customRestClient = ref.watch(httpClientProvider);
  return AnonAuthClient(customRestClient, ref);
});

