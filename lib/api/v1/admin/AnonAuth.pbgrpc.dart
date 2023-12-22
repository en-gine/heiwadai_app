///
//  Generated code. Do not modify.
//  source: v1/admin/AnonAuth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'AnonAuth.pb.dart' as $1;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'AnonAuth.pb.dart';

class AnonAuthControllerClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$1.AdminRegisterRequest, $2.Empty>(
          '/server.admin.AnonAuthController/Register',
          ($1.AdminRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signUp = $grpc.ClientMethod<$1.AdminAuthRequest, $2.Empty>(
      '/server.admin.AnonAuthController/SignUp',
      ($1.AdminAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signIn =
      $grpc.ClientMethod<$1.AdminAuthRequest, $1.AnonAuthTokenResponse>(
          '/server.admin.AnonAuthController/SignIn',
          ($1.AdminAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AnonAuthTokenResponse.fromBuffer(value));
  static final _$resetPasswordMail =
      $grpc.ClientMethod<$1.ResetPasswordRequest, $2.Empty>(
          '/server.admin.AnonAuthController/ResetPasswordMail',
          ($1.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  AnonAuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> register($1.AdminRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> signUp($1.AdminAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$1.AnonAuthTokenResponse> signIn(
      $1.AdminAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> resetPasswordMail(
      $1.ResetPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPasswordMail, request, options: options);
  }
}

abstract class AnonAuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.AnonAuthController';

  AnonAuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.AdminRegisterRequest, $2.Empty>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AdminRegisterRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AdminAuthRequest, $2.Empty>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AdminAuthRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AdminAuthRequest, $1.AnonAuthTokenResponse>(
            'SignIn',
            signIn_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AdminAuthRequest.fromBuffer(value),
            ($1.AnonAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ResetPasswordRequest, $2.Empty>(
        'ResetPasswordMail',
        resetPasswordMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ResetPasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> register_Pre($grpc.ServiceCall call,
      $async.Future<$1.AdminRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$2.Empty> signUp_Pre($grpc.ServiceCall call,
      $async.Future<$1.AdminAuthRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$1.AnonAuthTokenResponse> signIn_Pre($grpc.ServiceCall call,
      $async.Future<$1.AdminAuthRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$2.Empty> resetPasswordMail_Pre($grpc.ServiceCall call,
      $async.Future<$1.ResetPasswordRequest> request) async {
    return resetPasswordMail(call, await request);
  }

  $async.Future<$2.Empty> register(
      $grpc.ServiceCall call, $1.AdminRegisterRequest request);
  $async.Future<$2.Empty> signUp(
      $grpc.ServiceCall call, $1.AdminAuthRequest request);
  $async.Future<$1.AnonAuthTokenResponse> signIn(
      $grpc.ServiceCall call, $1.AdminAuthRequest request);
  $async.Future<$2.Empty> resetPasswordMail(
      $grpc.ServiceCall call, $1.ResetPasswordRequest request);
}
