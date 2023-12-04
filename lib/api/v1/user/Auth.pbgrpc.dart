///
//  Generated code. Do not modify.
//  source: v1/user/Auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserData.pb.dart' as $9;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'Auth.pb.dart' as $11;
export 'Auth.pb.dart';

class AuthControllerClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$9.UserRegisterRequest, $2.Empty>(
          '/server.user.AuthController/Register',
          ($9.UserRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signUp = $grpc.ClientMethod<$11.UserAuthRequest, $2.Empty>(
      '/server.user.AuthController/SignUp',
      ($11.UserAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signIn =
      $grpc.ClientMethod<$11.UserAuthRequest, $11.UserAuthResponse>(
          '/server.user.AuthController/SignIn',
          ($11.UserAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.UserAuthResponse.fromBuffer(value));
  static final _$signOut = $grpc.ClientMethod<$2.Empty, $2.Empty>(
      '/server.user.AuthController/SignOut',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$resetPasswordMail =
      $grpc.ClientMethod<$11.ResetPasswordRequest, $2.Empty>(
          '/server.user.AuthController/ResetPasswordMail',
          ($11.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$updatePassword =
      $grpc.ClientMethod<$11.UpdatePasswordRequest, $2.Empty>(
          '/server.user.AuthController/UpdatePassword',
          ($11.UpdatePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$updateEmail =
      $grpc.ClientMethod<$11.UpdateEmailRequest, $2.Empty>(
          '/server.user.AuthController/UpdateEmail',
          ($11.UpdateEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  AuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> register($9.UserRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> signUp($11.UserAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$11.UserAuthResponse> signIn($11.UserAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> signOut($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signOut, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> resetPasswordMail(
      $11.ResetPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPasswordMail, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updatePassword(
      $11.UpdatePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePassword, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updateEmail($11.UpdateEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmail, request, options: options);
  }
}

abstract class AuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.AuthController';

  AuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.UserRegisterRequest, $2.Empty>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UserRegisterRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UserAuthRequest, $2.Empty>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UserAuthRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UserAuthRequest, $11.UserAuthResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UserAuthRequest.fromBuffer(value),
        ($11.UserAuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.Empty>(
        'SignOut',
        signOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ResetPasswordRequest, $2.Empty>(
        'ResetPasswordMail',
        resetPasswordMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.ResetPasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdatePasswordRequest, $2.Empty>(
        'UpdatePassword',
        updatePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.UpdatePasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateEmailRequest, $2.Empty>(
        'UpdateEmail',
        updateEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.UpdateEmailRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> register_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$2.Empty> signUp_Pre($grpc.ServiceCall call,
      $async.Future<$11.UserAuthRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$11.UserAuthResponse> signIn_Pre($grpc.ServiceCall call,
      $async.Future<$11.UserAuthRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$2.Empty> signOut_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return signOut(call, await request);
  }

  $async.Future<$2.Empty> resetPasswordMail_Pre($grpc.ServiceCall call,
      $async.Future<$11.ResetPasswordRequest> request) async {
    return resetPasswordMail(call, await request);
  }

  $async.Future<$2.Empty> updatePassword_Pre($grpc.ServiceCall call,
      $async.Future<$11.UpdatePasswordRequest> request) async {
    return updatePassword(call, await request);
  }

  $async.Future<$2.Empty> updateEmail_Pre($grpc.ServiceCall call,
      $async.Future<$11.UpdateEmailRequest> request) async {
    return updateEmail(call, await request);
  }

  $async.Future<$2.Empty> register(
      $grpc.ServiceCall call, $9.UserRegisterRequest request);
  $async.Future<$2.Empty> signUp(
      $grpc.ServiceCall call, $11.UserAuthRequest request);
  $async.Future<$11.UserAuthResponse> signIn(
      $grpc.ServiceCall call, $11.UserAuthRequest request);
  $async.Future<$2.Empty> signOut($grpc.ServiceCall call, $2.Empty request);
  $async.Future<$2.Empty> resetPasswordMail(
      $grpc.ServiceCall call, $11.ResetPasswordRequest request);
  $async.Future<$2.Empty> updatePassword(
      $grpc.ServiceCall call, $11.UpdatePasswordRequest request);
  $async.Future<$2.Empty> updateEmail(
      $grpc.ServiceCall call, $11.UpdateEmailRequest request);
}
