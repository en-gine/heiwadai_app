
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:heiwadai_app/api/google/protobuf/empty.pb.dart';
import 'package:heiwadai_app/provider/token_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:protobuf/protobuf.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../env.dart';
import '../util/encript.dart';

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

  // メモリーキャッシュ
  final Map<String, dynamic> _cache = {};

  CustomRestClient(this.token, {required this.onTokenUpdate});

  Future<dynamic> call(String endpoint, {GeneratedMessage? request, bool? cacheable = false, bool? useCache = true}) async {

    final uri = Uri.parse('$baseUrl$endpoint');
    final defaultHeaders = {
      'Content-Type': 'application/json',
      if (token?.accessToken != null) 'Authorization': 'Bearer ${token!.accessToken}',
      if (token?.refreshToken != null) 'X-Refresh-Token': token!.refreshToken!,
    };

    final combinedHeaders = {...defaultHeaders};
    final postBody = request ?? Empty();

    if (useCache == true) {
      final cachedData = _cache[endpoint];
      if (cachedData != null) {
        return cachedData;
      }
    }

    var response = await _inner.post(uri, headers: combinedHeaders, body: json.encode(postBody.toProto3Json()));
    if (response.statusCode >= 400) {
      final error = jsonDecode(utf8.decode(response.bodyBytes));
      debugPrint('HTTP Error: ${response.statusCode} error: ${error['message']} url: ${uri.toString()}');
      throw ServerException(error['message'] ?? response.body, response.statusCode, uri: uri);
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
        debugPrint('Token is not updated token:$newToken');
      }
      final body = jsonDecode(utf8.decode(response.bodyBytes));
      if (cacheable == true) {
        _cache[endpoint] = body;
      }
      return body;
    }catch($e){
      debugPrint('$baseUrl$endpoint');
      rethrow;
    }
  }

}

// サーバーのエラーレスポンスと合わせるために、HTTPステータスコードをgrpcのエラーコードに変換しています
class ServerException implements Exception {
  final String message;
  final String statusCode;
  final Uri? uri;

  ServerException(this.message, int httpStatus, {this.uri}): statusCode = ServerErrorStatusCode.fromHttpStatus(httpStatus);

  @override
  String toString() => 'ServerException: $message (status code: $statusCode)';
}

// サーバーで使用しているbuf connectのエラー型に合わせた
class ServerErrorStatusCode {
  static const canceled = 'canceled';
  // static const unknown = 'unknown';
  static const invalidArgument = 'invalid_argument';
  static const deadlineExceeded = 'deadline_exceeded';
  static const notFound = 'not_found';
  static const alreadyExists = 'already_exists';
  static const permissionDenied = 'permission_denied';
  static const resourceExhausted = 'resource_exhausted';
  // static const failedPrecondition = 'failed_precondition';
  // static const aborted = 'aborted';
  // static const outOfRange = 'out_of_range';
  static const unimplemented = 'unimplemented';
  static const internal = 'internal';
  static const unavailable = 'unavailable';
  // static const dataLoss = 'data_loss';
  static const unauthenticated = 'unauthenticated';

  static const _httpStatusToCustomStatus = <int, String>{
    499: ServerErrorStatusCode.canceled,
    // 500: ServerErrorStatusCode.unknown,
    400: ServerErrorStatusCode.invalidArgument,
    504: ServerErrorStatusCode.deadlineExceeded,
    404: ServerErrorStatusCode.notFound,
    409: ServerErrorStatusCode.alreadyExists,
    403: ServerErrorStatusCode.permissionDenied,
    429: ServerErrorStatusCode.resourceExhausted,
    // 400: ServerErrorStatusCode.failedPrecondition,
    // 409: ServerErrorStatusCode.aborted,
    // 400: ServerErrorStatusCode.outOfRange,
    501: ServerErrorStatusCode.unimplemented,
    500: ServerErrorStatusCode.internal,
    503: ServerErrorStatusCode.unavailable,
    // 500: ServerErrorStatusCode.dataLoss,
    401: ServerErrorStatusCode.unauthenticated,
  };

  /// HTTP ステータスコードから ServerErrorStatusCode を作成する
  static String fromHttpStatus(int status) {
    return _httpStatusToCustomStatus[status] ?? ServerErrorStatusCode.internal;
  }
}