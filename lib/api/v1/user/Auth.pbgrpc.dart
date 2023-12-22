///
//  Generated code. Do not modify.
//  source: v1/user/Auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'Auth.pb.dart' as $13;
export 'Auth.pb.dart';

class AuthControllerClient extends $grpc.Client {
  static final _$signOut = $grpc.ClientMethod<$2.Empty, $2.Empty>(
      '/server.user.AuthController/SignOut',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$refresh =
      $grpc.ClientMethod<$13.RefreshTokenRequest, $13.UserAuthTokenResponse>(
          '/server.user.AuthController/Refresh',
          ($13.RefreshTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $13.UserAuthTokenResponse.fromBuffer(value));
  static final _$updatePassword =
      $grpc.ClientMethod<$13.UpdatePasswordRequest, $2.Empty>(
          '/server.user.AuthController/UpdatePassword',
          ($13.UpdatePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$updateEmail =
      $grpc.ClientMethod<$13.UpdateEmailRequest, $2.Empty>(
          '/server.user.AuthController/UpdateEmail',
          ($13.UpdateEmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  AuthControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> signOut($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signOut, request, options: options);
  }

  $grpc.ResponseFuture<$13.UserAuthTokenResponse> refresh(
      $13.RefreshTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updatePassword(
      $13.UpdatePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePassword, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updateEmail($13.UpdateEmailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmail, request, options: options);
  }
}

abstract class AuthControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.AuthController';

  AuthControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.Empty>(
        'SignOut',
        signOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$13.RefreshTokenRequest, $13.UserAuthTokenResponse>(
            'Refresh',
            refresh_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $13.RefreshTokenRequest.fromBuffer(value),
            ($13.UserAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdatePasswordRequest, $2.Empty>(
        'UpdatePassword',
        updatePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.UpdatePasswordRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateEmailRequest, $2.Empty>(
        'UpdateEmail',
        updateEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.UpdateEmailRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> signOut_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return signOut(call, await request);
  }

  $async.Future<$13.UserAuthTokenResponse> refresh_Pre($grpc.ServiceCall call,
      $async.Future<$13.RefreshTokenRequest> request) async {
    return refresh(call, await request);
  }

  $async.Future<$2.Empty> updatePassword_Pre($grpc.ServiceCall call,
      $async.Future<$13.UpdatePasswordRequest> request) async {
    return updatePassword(call, await request);
  }

  $async.Future<$2.Empty> updateEmail_Pre($grpc.ServiceCall call,
      $async.Future<$13.UpdateEmailRequest> request) async {
    return updateEmail(call, await request);
  }

  $async.Future<$2.Empty> signOut($grpc.ServiceCall call, $2.Empty request);
  $async.Future<$13.UserAuthTokenResponse> refresh(
      $grpc.ServiceCall call, $13.RefreshTokenRequest request);
  $async.Future<$2.Empty> updatePassword(
      $grpc.ServiceCall call, $13.UpdatePasswordRequest request);
  $async.Future<$2.Empty> updateEmail(
      $grpc.ServiceCall call, $13.UpdateEmailRequest request);
}
