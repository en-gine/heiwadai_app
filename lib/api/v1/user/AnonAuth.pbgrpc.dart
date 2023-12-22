///
//  Generated code. Do not modify.
//  source: v1/user/AnonAuth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserData.pb.dart' as $10;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'AnonAuth.pb.dart' as $12;
export 'AnonAuth.pb.dart';

class AnonAuthControllerClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$10.UserRegisterRequest, $2.Empty>(
          '/server.user.AnonAuthController/Register',
          ($10.UserRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signUp = $grpc.ClientMethod<$12.UserAuthRequest, $2.Empty>(
      '/server.user.AnonAuthController/SignUp',
      ($12.UserAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signIn =
      $grpc.ClientMethod<$12.UserAuthRequest, $12.AnonTokenResponse>(
          '/server.user.AnonAuthController/SignIn',
          ($12.UserAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $12.AnonTokenResponse.fromBuffer(value));
  static final _$resetPasswordMail =
      $grpc.ClientMethod<$12.ResetPasswordRequest, $2.Empty>(
          '/server.user.AnonAuthController/ResetPasswordMail',
          ($12.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  AnonAuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> register($10.UserRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> signUp($12.UserAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$12.AnonTokenResponse> signIn(
      $12.UserAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> resetPasswordMail(
      $12.ResetPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPasswordMail, request, options: options);
  }
}

abstract class AnonAuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.AnonAuthController';

  AnonAuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.UserRegisterRequest, $2.Empty>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.UserRegisterRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UserAuthRequest, $2.Empty>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UserAuthRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UserAuthRequest, $12.AnonTokenResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UserAuthRequest.fromBuffer(value),
        ($12.AnonTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ResetPasswordRequest, $2.Empty>(
        'ResetPasswordMail',
        resetPasswordMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $12.ResetPasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> register_Pre($grpc.ServiceCall call,
      $async.Future<$10.UserRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$2.Empty> signUp_Pre($grpc.ServiceCall call,
      $async.Future<$12.UserAuthRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$12.AnonTokenResponse> signIn_Pre($grpc.ServiceCall call,
      $async.Future<$12.UserAuthRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$2.Empty> resetPasswordMail_Pre($grpc.ServiceCall call,
      $async.Future<$12.ResetPasswordRequest> request) async {
    return resetPasswordMail(call, await request);
  }

  $async.Future<$2.Empty> register(
      $grpc.ServiceCall call, $10.UserRegisterRequest request);
  $async.Future<$2.Empty> signUp(
      $grpc.ServiceCall call, $12.UserAuthRequest request);
  $async.Future<$12.AnonTokenResponse> signIn(
      $grpc.ServiceCall call, $12.UserAuthRequest request);
  $async.Future<$2.Empty> resetPasswordMail(
      $grpc.ServiceCall call, $12.ResetPasswordRequest request);
}
