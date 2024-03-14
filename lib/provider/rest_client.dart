
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:heiwadai_app/api/google/protobuf/empty.pb.dart';
import 'package:heiwadai_app/provider/token_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import '../env.dart';

final baseUrl = '${Env.apiBaseURL}server.user.';

typedef TokenUpdateCallback = void Function(TokenState);

// httpクライアントを作成するプロバイダー
final httpClientProvider = Provider<CustomRestClient>((ref) {
  final token = ref.watch(tokenProvider);
  return CustomRestClient(token, onTokenUpdate: (newToken) {
    ref.read(tokenProvider.notifier).state = newToken;
  });
});

class CustomRestClient<T> {
  final TokenState? token;
  final http.Client _inner = http.Client();
  final TokenUpdateCallback onTokenUpdate;


  CustomRestClient(this.token, {required this.onTokenUpdate});

  Future<dynamic> call(String endpoint, {GeneratedMessage? request}) async {
    print("$baseUrl$endpoint");
    final uri = Uri.parse('$baseUrl$endpoint');
    final defaultHeaders = {
      'Content-Type': 'application/json',
      if (token?.accessToken != null) 'Authorization': 'Bearer ${token!.accessToken}',
      if (token?.refreshToken != null) 'X-Refresh-Token': token!.refreshToken!,
    };

    final combinedHeaders = {...defaultHeaders};
    final postBody = request ?? Empty();
    var response = await _inner.post(uri, headers: combinedHeaders, body: json.encode(postBody.toProto3Json()));
    if (response.statusCode >= 400) {
      log('HTTP Error: ${response.statusCode}:${response.body}', error: response.body, name: uri.toString());
      throw ServerException(response.body, response.statusCode);
    }
    final newAccessToken = response.headers['AccessToken'];
    final newRefreshToken = response.headers['RefreshToken'];
    final newExpireStr = response.headers['newExpireIn'];
    try{
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
      return jsonDecode(response.body);
    }catch($e){
      log('$baseUrl$endpoint');
      rethrow;
    }
  }

}

// サーバーのエラーレスポンスと合わせるために、HTTPステータスコードをgrpcのエラーコードに変換しています
class ServerException implements Exception {
  final String message;
  final int statusCode;
  final Uri? uri;

  ServerException(this.message, int httpStatus, {this.uri}): statusCode = StatusCode.fromHttpStatus(httpStatus);

  @override
  String toString() => 'HttpExceptionWithStatus: $message (status code: $statusCode)';
}

