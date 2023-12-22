///
//  Generated code. Do not modify.
//  source: v1/admin/Auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'Auth.pb.dart' as $3;
export 'Auth.pb.dart';

class AuthControllerClient extends $grpc.Client {
  static final _$signOut = $grpc.ClientMethod<$2.Empty, $2.Empty>(
      '/server.admin.AuthController/SignOut',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$refresh = $grpc.ClientMethod<$3.AdminRefreshTokenRequest,
          $3.AdminAuthTokenResponse>(
      '/server.admin.AuthController/Refresh',
      ($3.AdminRefreshTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.AdminAuthTokenResponse.fromBuffer(value));
  static final _$updatePassword =
      $grpc.ClientMethod<$3.UpdatePasswordRequest, $2.Empty>(
          '/server.admin.AuthController/UpdatePassword',
          ($3.UpdatePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$updateEmail =
      $grpc.ClientMethod<$3.UpdateEmailRequest, $2.Empty>(
          '/server.admin.AuthController/UpdateEmail',
          ($3.UpdateEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  AuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> signOut($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signOut, request, options: options);
  }

  $grpc.ResponseFuture<$3.AdminAuthTokenResponse> refresh(
      $3.AdminRefreshTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updatePassword(
      $3.UpdatePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePassword, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updateEmail($3.UpdateEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmail, request, options: options);
  }
}

abstract class AuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.AuthController';

  AuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.Empty>(
        'SignOut',
        signOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AdminRefreshTokenRequest,
            $3.AdminAuthTokenResponse>(
        'Refresh',
        refresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AdminRefreshTokenRequest.fromBuffer(value),
        ($3.AdminAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePasswordRequest, $2.Empty>(
        'UpdatePassword',
        updatePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.UpdatePasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateEmailRequest, $2.Empty>(
        'UpdateEmail',
        updateEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.UpdateEmailRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> signOut_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return signOut(call, await request);
  }

  $async.Future<$3.AdminAuthTokenResponse> refresh_Pre($grpc.ServiceCall call,
      $async.Future<$3.AdminRefreshTokenRequest> request) async {
    return refresh(call, await request);
  }

  $async.Future<$2.Empty> updatePassword_Pre($grpc.ServiceCall call,
      $async.Future<$3.UpdatePasswordRequest> request) async {
    return updatePassword(call, await request);
  }

  $async.Future<$2.Empty> updateEmail_Pre($grpc.ServiceCall call,
      $async.Future<$3.UpdateEmailRequest> request) async {
    return updateEmail(call, await request);
  }

  $async.Future<$2.Empty> signOut($grpc.ServiceCall call, $2.Empty request);
  $async.Future<$3.AdminAuthTokenResponse> refresh(
      $grpc.ServiceCall call, $3.AdminRefreshTokenRequest request);
  $async.Future<$2.Empty> updatePassword(
      $grpc.ServiceCall call, $3.UpdatePasswordRequest request);
  $async.Future<$2.Empty> updateEmail(
      $grpc.ServiceCall call, $3.UpdateEmailRequest request);
}
