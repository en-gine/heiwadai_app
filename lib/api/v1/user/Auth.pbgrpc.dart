///
//  Generated code. Do not modify.
//  source: v1/user/Auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $1;
import 'Auth.pb.dart' as $16;
export 'Auth.pb.dart';

class AuthControllerClient extends $grpc.Client {
  static final _$signOut = $grpc.ClientMethod<$1.Empty, $1.Empty>(
      '/server.user.AuthController/SignOut',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$refresh =
      $grpc.ClientMethod<$16.RefreshTokenRequest, $16.UserAuthTokenResponse>(
          '/server.user.AuthController/Refresh',
          ($16.RefreshTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $16.UserAuthTokenResponse.fromBuffer(value));
  static final _$updatePassword =
      $grpc.ClientMethod<$16.UpdatePasswordRequest, $1.Empty>(
          '/server.user.AuthController/UpdatePassword',
          ($16.UpdatePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$updateEmail =
      $grpc.ClientMethod<$16.UpdateEmailRequest, $1.Empty>(
          '/server.user.AuthController/UpdateEmail',
          ($16.UpdateEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  AuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> signOut($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signOut, request, options: options);
  }

  $grpc.ResponseFuture<$16.UserAuthTokenResponse> refresh(
      $16.RefreshTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updatePassword(
      $16.UpdatePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateEmail($16.UpdateEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmail, request, options: options);
  }
}

abstract class AuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.AuthController';

  AuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.Empty>(
        'SignOut',
        signOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$16.RefreshTokenRequest, $16.UserAuthTokenResponse>(
            'Refresh',
            refresh_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $16.RefreshTokenRequest.fromBuffer(value),
            ($16.UserAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdatePasswordRequest, $1.Empty>(
        'UpdatePassword',
        updatePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $16.UpdatePasswordRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateEmailRequest, $1.Empty>(
        'UpdateEmail',
        updateEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $16.UpdateEmailRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> signOut_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return signOut(call, await request);
  }

  $async.Future<$16.UserAuthTokenResponse> refresh_Pre($grpc.ServiceCall call,
      $async.Future<$16.RefreshTokenRequest> request) async {
    return refresh(call, await request);
  }

  $async.Future<$1.Empty> updatePassword_Pre($grpc.ServiceCall call,
      $async.Future<$16.UpdatePasswordRequest> request) async {
    return updatePassword(call, await request);
  }

  $async.Future<$1.Empty> updateEmail_Pre($grpc.ServiceCall call,
      $async.Future<$16.UpdateEmailRequest> request) async {
    return updateEmail(call, await request);
  }

  $async.Future<$1.Empty> signOut($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$16.UserAuthTokenResponse> refresh(
      $grpc.ServiceCall call, $16.RefreshTokenRequest request);
  $async.Future<$1.Empty> updatePassword(
      $grpc.ServiceCall call, $16.UpdatePasswordRequest request);
  $async.Future<$1.Empty> updateEmail(
      $grpc.ServiceCall call, $16.UpdateEmailRequest request);
}
