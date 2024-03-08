
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:heiwadai_app/api/google/protobuf/empty.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';

import '../env.dart';

final tokenProvider = StateProvider<String?>((ref) => null);
final refreshTokenProvider = StateProvider<String?>((ref) => null);

final baseUrl = '${Env.apiBaseURL}/server.user.';

typedef TokenUpdateCallback = void Function(String? newAccessToken, String? newRefreshToken);

// httpクライアントを作成するプロバイダー
final httpClientProvider = Provider<CustomMessageClient>((ref) {
  final token = ref.watch(tokenProvider);
  final refreshToken = ref.read(refreshTokenProvider);
  return CustomMessageClient(token, refreshToken,onTokenUpdate: (newAccessToken, newRefreshToken) {
    if (newAccessToken != null) {
      ref.read(tokenProvider.notifier).state = newAccessToken;
    }
    if (newRefreshToken != null) {
      ref.read(refreshTokenProvider.notifier).state = newRefreshToken;
    }
  });
});

class CustomMessageClient {
  final String? token;
  final String? refreshToken;
  final http.Client _inner = http.Client();
  final TokenUpdateCallback onTokenUpdate;

  CustomMessageClient(this.token, this.refreshToken, {required this.onTokenUpdate});

  Future<http.Response> call(String endpoint, {GeneratedMessage? message}) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final defaultHeaders = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
      if (refreshToken != null) 'X-Refresh-Token': refreshToken!,
    };

    final combinedHeaders = {...defaultHeaders};
    final postBody = message ?? Empty();
    var response = await _inner.post(uri, headers: combinedHeaders, body: json.encode(postBody.toProto3Json()));
    if (response.statusCode >= 400) {
      log('HTTP Error: ${response.statusCode}:${response.body}', error: response.body, name: uri.toString());
      throw HttpException('HTTP Error: ${response.statusCode}:${response.body}', uri: uri);
    }
    final newAccessToken = response.headers['AccessToken'];
    final newRefreshToken = response.headers['RefreshToken'];
    onTokenUpdate(newAccessToken, newRefreshToken);

    return response;
  }
}