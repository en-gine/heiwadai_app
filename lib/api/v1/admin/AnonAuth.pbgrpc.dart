///
//  Generated code. Do not modify.
//  source: v1/admin/AnonAuth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'AnonAuth.pb.dart' as $2;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'AnonAuth.pb.dart';

class AnonAuthControllerClient extends $grpc.Client {
  static final _$signUp = $grpc.ClientMethod<$2.AdminAuthRequest, $1.Empty>(
      '/server.admin.AnonAuthController/SignUp',
      ($2.AdminAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$signIn =
      $grpc.ClientMethod<$2.AdminAuthRequest, $2.AnonAuthTokenResponse>(
          '/server.admin.AnonAuthController/SignIn',
          ($2.AdminAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AnonAuthTokenResponse.fromBuffer(value));
  static final _$resetPasswordMail =
      $grpc.ClientMethod<$2.ResetPasswordRequest, $1.Empty>(
          '/server.admin.AnonAuthController/ResetPasswordMail',
          ($2.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$setNewPassword =
      $grpc.ClientMethod<$2.SetNewPasswordRequest, $1.Empty>(
          '/server.admin.AnonAuthController/SetNewPassword',
          ($2.SetNewPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  AnonAuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> signUp($2.AdminAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$2.AnonAuthTokenResponse> signIn(
      $2.AdminAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> resetPasswordMail(
      $2.ResetPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPasswordMail, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> setNewPassword(
      $2.SetNewPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setNewPassword, request, options: options);
  }
}

abstract class AnonAuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.AnonAuthController';

  AnonAuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.AdminAuthRequest, $1.Empty>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AdminAuthRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.AdminAuthRequest, $2.AnonAuthTokenResponse>(
            'SignIn',
            signIn_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AdminAuthRequest.fromBuffer(value),
            ($2.AnonAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ResetPasswordRequest, $1.Empty>(
        'ResetPasswordMail',
        resetPasswordMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ResetPasswordRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SetNewPasswordRequest, $1.Empty>(
        'SetNewPassword',
        setNewPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SetNewPasswordRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> signUp_Pre($grpc.ServiceCall call,
      $async.Future<$2.AdminAuthRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$2.AnonAuthTokenResponse> signIn_Pre($grpc.ServiceCall call,
      $async.Future<$2.AdminAuthRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$1.Empty> resetPasswordMail_Pre($grpc.ServiceCall call,
      $async.Future<$2.ResetPasswordRequest> request) async {
    return resetPasswordMail(call, await request);
  }

  $async.Future<$1.Empty> setNewPassword_Pre($grpc.ServiceCall call,
      $async.Future<$2.SetNewPasswordRequest> request) async {
    return setNewPassword(call, await request);
  }

  $async.Future<$1.Empty> signUp(
      $grpc.ServiceCall call, $2.AdminAuthRequest request);
  $async.Future<$2.AnonAuthTokenResponse> signIn(
      $grpc.ServiceCall call, $2.AdminAuthRequest request);
  $async.Future<$1.Empty> resetPasswordMail(
      $grpc.ServiceCall call, $2.ResetPasswordRequest request);
  $async.Future<$1.Empty> setNewPassword(
      $grpc.ServiceCall call, $2.SetNewPasswordRequest request);
}
