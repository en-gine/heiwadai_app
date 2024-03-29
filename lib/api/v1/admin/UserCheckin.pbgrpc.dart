///
//  Generated code. Do not modify.
//  source: v1/admin/UserCheckin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserCheckin.pb.dart' as $11;
export 'UserCheckin.pb.dart';

class UserCheckinControllerClient extends $grpc.Client {
  static final _$getAllRecent =
      $grpc.ClientMethod<$11.GetRecentAllCheckinRequest, $11.CheckinsResponse>(
          '/server.admin.UserCheckinController/GetAllRecent',
          ($11.GetRecentAllCheckinRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.CheckinsResponse.fromBuffer(value));
  static final _$getUserLog =
      $grpc.ClientMethod<$11.UserCheckinRequest, $11.CheckinsResponse>(
          '/server.admin.UserCheckinController/GetUserLog',
          ($11.UserCheckinRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.CheckinsResponse.fromBuffer(value));

  UserCheckinControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.CheckinsResponse> getAllRecent(
      $11.GetRecentAllCheckinRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllRecent, request, options: options);
  }

  $grpc.ResponseFuture<$11.CheckinsResponse> getUserLog(
      $11.UserCheckinRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserLog, request, options: options);
  }
}

abstract class UserCheckinControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.UserCheckinController';

  UserCheckinControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.GetRecentAllCheckinRequest,
            $11.CheckinsResponse>(
        'GetAllRecent',
        getAllRecent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.GetRecentAllCheckinRequest.fromBuffer(value),
        ($11.CheckinsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$11.UserCheckinRequest, $11.CheckinsResponse>(
            'GetUserLog',
            getUserLog_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $11.UserCheckinRequest.fromBuffer(value),
            ($11.CheckinsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CheckinsResponse> getAllRecent_Pre($grpc.ServiceCall call,
      $async.Future<$11.GetRecentAllCheckinRequest> request) async {
    return getAllRecent(call, await request);
  }

  $async.Future<$11.CheckinsResponse> getUserLog_Pre($grpc.ServiceCall call,
      $async.Future<$11.UserCheckinRequest> request) async {
    return getUserLog(call, await request);
  }

  $async.Future<$11.CheckinsResponse> getAllRecent(
      $grpc.ServiceCall call, $11.GetRecentAllCheckinRequest request);
  $async.Future<$11.CheckinsResponse> getUserLog(
      $grpc.ServiceCall call, $11.UserCheckinRequest request);
}
