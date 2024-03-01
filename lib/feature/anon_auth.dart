import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:heiwadai_app/provider/rest_client.dart';

import 'package:heiwadai_app/api/v1/user/UserData.pb.dart';
// import 'package:heiwadai_app/models/user.dart';

Future<bool> register(
  WidgetRef ref,
  UserRegisterRequest userData,
  BuildContext context,
) async {
  await dotenv.load(fileName: ".env");
  String backend = dotenv.env['API_BASE_URL'] ?? "http://localhost:3000";
  final url = Uri.parse("$backend/server.user.AnonAuthController/Register");

  try {
    Map<String, String> headers = {'content-type': 'application/json'};
    Object body = json.encode(userData.toProto3Json());
    var response = await http.post(url, headers: headers, body: body);
    print(response.body);

    if (response.statusCode >= 200 && response.statusCode <= 300) {
      Map<String, dynamic> resStatus = json.decode(response.body);
      if (resStatus['accessToken'] != null && resStatus['accessToken'] != "") {
        ref
            .read(tokenProvider.notifier)
            .update((state) => resStatus['accessToken']);
        return true;
      }
      return false;
    } else {
      print(response.statusCode);
      print('A network error occurred');
      return false;
    }
  } catch (e) {
    // エラー処理
    print("登録失敗: $e");
    return false;
  }
}

Future<void> signIn(WidgetRef ref, String email, String password) async {
  await dotenv.load(fileName: ".env");
  String backend = dotenv.env['API_BASE_URL'] ?? "http://localhost:3000";
  final url = Uri.parse("$backend/server.user.AnonAuthController/SignIn");

  try {
    Map<String, String> headers = {'content-type': 'application/json'};
    String body = json.encode({"email": email, "password": password});
    var response = await http.post(url, headers: headers, body: body);

    print(response.body);

    if (response.statusCode >= 200 && response.statusCode <= 300) {
      Map<String, dynamic> resStatus = json.decode(response.body);
      if (resStatus['accessToken'] != null && resStatus['accessToken'] != "") {
        ref
            .read(tokenProvider.notifier)
            .update((state) => resStatus['accessToken']);
      }
      if (resStatus['refreshToken'] != null &&
          resStatus['refreshToken'] != "") {
        ref
            .read(refreshTokenProvider.notifier)
            .update((state) => resStatus['refreshToken']);
      }
    } else {
      print(response.statusCode);
      print('A network error occurred');
    }
  } catch (e) {
    // エラー処理
    print("ログイン失敗: $e");
  }
}

Future<void> signUp(WidgetRef ref, String email, String password) async {
  await dotenv.load(fileName: ".env");
  String backend = dotenv.env['API_BASE_URL'] ?? "http://localhost:3000";
  final url = Uri.parse("$backend/server.user.AnonAuthController/SignUp");

  try {
    var response = await http.post(url);

    if (response.statusCode >= 200 && response.statusCode <= 300) {
      print(response.body);
      Map<String, dynamic> resStatus = json.decode(response.body);
      if (resStatus['accessToken'] != "") {
        print("token true");
        ref
            .read(tokenProvider.notifier)
            .update((state) => resStatus['accessToken']);
      }
      if (resStatus['refreshToken'] != "") {
        print("ref true");
        ref
            .read(refreshTokenProvider.notifier)
            .update((state) => resStatus['refreshToken']);
      }
    } else {
      print(response.statusCode);
      print('A network error occurred');
    }
  } catch (e) {
    // エラー処理
    print("ログイン失敗: $e");
  }
}

