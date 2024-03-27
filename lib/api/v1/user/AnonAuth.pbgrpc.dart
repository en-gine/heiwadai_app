///
//  Generated code. Do not modify.
//  source: v1/user/AnonAuth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserData.pb.dart' as $12;
import '../../google/protobuf/empty.pb.dart' as $1;
import 'AnonAuth.pb.dart' as $15;
export 'AnonAuth.pb.dart';

class AnonAuthControllerClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$12.UserRegisterRequest, $1.Empty>(
          '/server.user.AnonAuthController/Register',
          ($12.UserRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$signUp = $grpc.ClientMethod<$15.UserAuthRequest, $1.Empty>(
      '/server.user.AnonAuthController/SignUp',
      ($15.UserAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$signIn =
      $grpc.ClientMethod<$15.UserAuthRequest, $15.AnonTokenResponse>(
          '/server.user.AnonAuthController/SignIn',
          ($15.UserAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $15.AnonTokenResponse.fromBuffer(value));
  static final _$resetPasswordMail =
      $grpc.ClientMethod<$15.UserMailRequest, $1.Empty>(
          '/server.user.AnonAuthController/ResetPasswordMail',
          ($15.UserMailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$isUnderRegister =
      $grpc.ClientMethod<$15.UserMailRequest, $15.IsUnderRegisterResponse>(
          '/server.user.AnonAuthController/IsUnderRegister',
          ($15.UserMailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $15.IsUnderRegisterResponse.fromBuffer(value));
  static final _$resendInviteMail =
      $grpc.ClientMethod<$15.UserMailRequest, $1.Empty>(
          '/server.user.AnonAuthController/ResendInviteMail',
          ($15.UserMailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteUnderRegisterUser =
      $grpc.ClientMethod<$15.UserMailRequest, $1.Empty>(
          '/server.user.AnonAuthController/DeleteUnderRegisterUser',
          ($15.UserMailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  AnonAuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> register($12.UserRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> signUp($15.UserAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$15.AnonTokenResponse> signIn(
      $15.UserAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> resetPasswordMail($15.UserMailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPasswordMail, request, options: options);
  }

  $grpc.ResponseFuture<$15.IsUnderRegisterResponse> isUnderRegister(
      $15.UserMailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isUnderRegister, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> resendInviteMail($15.UserMailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resendInviteMail, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteUnderRegisterUser(
      $15.UserMailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUnderRegisterUser, request,
        options: options);
  }
}

abstract class AnonAuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.AnonAuthController';

  AnonAuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.UserRegisterRequest, $1.Empty>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $12.UserRegisterRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserAuthRequest, $1.Empty>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserAuthRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserAuthRequest, $15.AnonTokenResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserAuthRequest.fromBuffer(value),
        ($15.AnonTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserMailRequest, $1.Empty>(
        'ResetPasswordMail',
        resetPasswordMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserMailRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$15.UserMailRequest, $15.IsUnderRegisterResponse>(
            'IsUnderRegister',
            isUnderRegister_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $15.UserMailRequest.fromBuffer(value),
            ($15.IsUnderRegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserMailRequest, $1.Empty>(
        'ResendInviteMail',
        resendInviteMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserMailRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserMailRequest, $1.Empty>(
        'DeleteUnderRegisterUser',
        deleteUnderRegisterUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserMailRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> register_Pre($grpc.ServiceCall call,
      $async.Future<$12.UserRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$1.Empty> signUp_Pre($grpc.ServiceCall call,
      $async.Future<$15.UserAuthRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$15.AnonTokenResponse> signIn_Pre($grpc.ServiceCall call,
      $async.Future<$15.UserAuthRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$1.Empty> resetPasswordMail_Pre($grpc.ServiceCall call,
      $async.Future<$15.UserMailRequest> request) async {
    return resetPasswordMail(call, await request);
  }

  $async.Future<$15.IsUnderRegisterResponse> isUnderRegister_Pre(
      $grpc.ServiceCall call,
      $async.Future<$15.UserMailRequest> request) async {
    return isUnderRegister(call, await request);
  }

  $async.Future<$1.Empty> resendInviteMail_Pre($grpc.ServiceCall call,
      $async.Future<$15.UserMailRequest> request) async {
    return resendInviteMail(call, await request);
  }

  $async.Future<$1.Empty> deleteUnderRegisterUser_Pre($grpc.ServiceCall call,
      $async.Future<$15.UserMailRequest> request) async {
    return deleteUnderRegisterUser(call, await request);
  }

  $async.Future<$1.Empty> register(
      $grpc.ServiceCall call, $12.UserRegisterRequest request);
  $async.Future<$1.Empty> signUp(
      $grpc.ServiceCall call, $15.UserAuthRequest request);
  $async.Future<$15.AnonTokenResponse> signIn(
      $grpc.ServiceCall call, $15.UserAuthRequest request);
  $async.Future<$1.Empty> resetPasswordMail(
      $grpc.ServiceCall call, $15.UserMailRequest request);
  $async.Future<$15.IsUnderRegisterResponse> isUnderRegister(
      $grpc.ServiceCall call, $15.UserMailRequest request);
  $async.Future<$1.Empty> resendInviteMail(
      $grpc.ServiceCall call, $15.UserMailRequest request);
  $async.Future<$1.Empty> deleteUnderRegisterUser(
      $grpc.ServiceCall call, $15.UserMailRequest request);
}
