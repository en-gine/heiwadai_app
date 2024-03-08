import 'package:flutter/material.dart';
import 'package:heiwadai_app/api/v1/user/AnonAuth.pb.dart';
import 'package:heiwadai_app/api/v1/user/Auth.pb.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/provider/rest_client.dart';

import 'package:heiwadai_app/api/v1/user/UserData.pb.dart';

Future<void> register(
  WidgetRef ref,
  UserRegisterRequest userData,
  BuildContext context,
) async {
  final client = ref.watch(httpClientProvider);
  await client.call(
      'AnonAuthController/Register', message: userData);
}

Future<void> signIn(WidgetRef ref, String email, String password) async {
  final UserAuthRequest body = UserAuthRequest(email:email, password: password);
  final client = ref.watch(httpClientProvider);
  var response = await client.call('AnonAuthController/SignIn', message: body);

  final resStatus = UserAuthTokenResponse.fromJson(response.body);
  if (resStatus.accessToken != "") {
    ref
        .read(tokenProvider.notifier)
        .update((state) => resStatus.accessToken);
  }
  if (resStatus.refreshToken != "") {
    ref
        .read(refreshTokenProvider.notifier)
        .update((state) => resStatus.refreshToken);
  }
}

Future<void> signUp(WidgetRef ref, String email, String password) async {
  final UserAuthRequest body = UserAuthRequest(email:email, password: password);
  final client = ref.watch(httpClientProvider);
  await client.call('AnonAuthController/SignUp', message: body);
}

Future<void> resetPassword(WidgetRef ref, String email) async {
  final ResetPasswordRequest body = ResetPasswordRequest(email:email);
  final client = ref.watch(httpClientProvider);
  await client.call('AnonAuthController/SignIn', message: body);
}


