///
//  Generated code. Do not modify.
//  source: v1/user/Checkin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $1;
import 'Checkin.pb.dart' as $19;
export 'Checkin.pb.dart';

class CheckinControllerClient extends $grpc.Client {
  static final _$getStampCard =
      $grpc.ClientMethod<$1.Empty, $19.StampCardResponse>(
          '/server.user.CheckinController/GetStampCard',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $19.StampCardResponse.fromBuffer(value));
  static final _$checkin =
      $grpc.ClientMethod<$19.CheckinRequest, $19.CheckinResponse>(
          '/server.user.CheckinController/Checkin',
          ($19.CheckinRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $19.CheckinResponse.fromBuffer(value));

  CheckinControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$19.StampCardResponse> getStampCard($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStampCard, request, options: options);
  }

  $grpc.ResponseFuture<$19.CheckinResponse> checkin($19.CheckinRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkin, request, options: options);
  }
}

abstract class CheckinControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.CheckinController';

  CheckinControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $19.StampCardResponse>(
        'GetStampCard',
        getStampCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($19.StampCardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.CheckinRequest, $19.CheckinResponse>(
        'Checkin',
        checkin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CheckinRequest.fromBuffer(value),
        ($19.CheckinResponse value) => value.writeToBuffer()));
  }

  $async.Future<$19.StampCardResponse> getStampCard_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getStampCard(call, await request);
  }

  $async.Future<$19.CheckinResponse> checkin_Pre(
      $grpc.ServiceCall call, $async.Future<$19.CheckinRequest> request) async {
    return checkin(call, await request);
  }

  $async.Future<$19.StampCardResponse> getStampCard(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$19.CheckinResponse> checkin(
      $grpc.ServiceCall call, $19.CheckinRequest request);
}
