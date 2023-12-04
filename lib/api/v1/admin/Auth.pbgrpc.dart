///
//  Generated code. Do not modify.
//  source: v1/admin/Auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Auth.pb.dart' as $1;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'Auth.pb.dart';

class AuthControllerClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$1.AdminRegisterRequest, $2.Empty>(
          '/server.admin.AuthController/Register',
          ($1.AdminRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signUp = $grpc.ClientMethod<$1.AdminAuthRequest, $2.Empty>(
      '/server.admin.AuthController/SignUp',
      ($1.AdminAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signOut = $grpc.ClientMethod<$2.Empty, $2.Empty>(
      '/server.admin.AuthController/SignOut',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$signIn =
      $grpc.ClientMethod<$1.AdminAuthRequest, $1.AdminAuthResponse>(
          '/server.admin.AuthController/SignIn',
          ($1.AdminAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AdminAuthResponse.fromBuffer(value));
  static final _$resetPasswordMail =
      $grpc.ClientMethod<$1.ResetPasswordRequest, $2.Empty>(
          '/server.admin.AuthController/ResetPasswordMail',
          ($1.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$updatePassword =
      $grpc.ClientMethod<$1.UpdatePasswordRequest, $2.Empty>(
          '/server.admin.AuthController/UpdatePassword',
          ($1.UpdatePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$updateEmail =
      $grpc.ClientMethod<$1.UpdateEmailRequest, $2.Empty>(
          '/server.admin.AuthController/UpdateEmail',
          ($1.UpdateEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  AuthControllerClient($grpc.ClientChannel channel,
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

  $grpc.ResponseFuture<$2.Empty> signOut($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signOut, request, options: options);
  }

  $grpc.ResponseFuture<$1.AdminAuthResponse> signIn($1.AdminAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> resetPasswordMail(
      $1.ResetPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPasswordMail, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updatePassword(
      $1.UpdatePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePassword, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updateEmail($1.UpdateEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmail, request, options: options);
  }
}

abstract class AuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.AuthController';

  AuthControllerServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.Empty>(
        'SignOut',
        signOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AdminAuthRequest, $1.AdminAuthResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AdminAuthRequest.fromBuffer(value),
        ($1.AdminAuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ResetPasswordRequest, $2.Empty>(
        'ResetPasswordMail',
        resetPasswordMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ResetPasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdatePasswordRequest, $2.Empty>(
        'UpdatePassword',
        updatePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdatePasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateEmailRequest, $2.Empty>(
        'UpdateEmail',
        updateEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateEmailRequest.fromBuffer(value),
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

  $async.Future<$2.Empty> signOut_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return signOut(call, await request);
  }

  $async.Future<$1.AdminAuthResponse> signIn_Pre($grpc.ServiceCall call,
      $async.Future<$1.AdminAuthRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$2.Empty> resetPasswordMail_Pre($grpc.ServiceCall call,
      $async.Future<$1.ResetPasswordRequest> request) async {
    return resetPasswordMail(call, await request);
  }

  $async.Future<$2.Empty> updatePassword_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdatePasswordRequest> request) async {
    return updatePassword(call, await request);
  }

  $async.Future<$2.Empty> updateEmail_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateEmailRequest> request) async {
    return updateEmail(call, await request);
  }

  $async.Future<$2.Empty> register(
      $grpc.ServiceCall call, $1.AdminRegisterRequest request);
  $async.Future<$2.Empty> signUp(
      $grpc.ServiceCall call, $1.AdminAuthRequest request);
  $async.Future<$2.Empty> signOut($grpc.ServiceCall call, $2.Empty request);
  $async.Future<$1.AdminAuthResponse> signIn(
      $grpc.ServiceCall call, $1.AdminAuthRequest request);
  $async.Future<$2.Empty> resetPasswordMail(
      $grpc.ServiceCall call, $1.ResetPasswordRequest request);
  $async.Future<$2.Empty> updatePassword(
      $grpc.ServiceCall call, $1.UpdatePasswordRequest request);
  $async.Future<$2.Empty> updateEmail(
      $grpc.ServiceCall call, $1.UpdateEmailRequest request);
}
