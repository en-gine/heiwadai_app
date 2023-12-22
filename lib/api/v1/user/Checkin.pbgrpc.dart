///
//  Generated code. Do not modify.
//  source: v1/user/Checkin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'Checkin.pb.dart' as $16;
export 'Checkin.pb.dart';

class CheckinControllerClient extends $grpc.Client {
  static final _$getStampCard =
      $grpc.ClientMethod<$2.Empty, $16.StampCardResponse>(
          '/server.user.CheckinController/GetStampCard',
          ($2.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $16.StampCardResponse.fromBuffer(value));
  static final _$checkin =
      $grpc.ClientMethod<$16.CheckinRequest, $16.CheckinResponse>(
          '/server.user.CheckinController/Checkin',
          ($16.CheckinRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $16.CheckinResponse.fromBuffer(value));

  CheckinControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$16.StampCardResponse> getStampCard($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStampCard, request, options: options);
  }

  $grpc.ResponseFuture<$16.CheckinResponse> checkin($16.CheckinRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkin, request, options: options);
  }
}

abstract class CheckinControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.CheckinController';

  CheckinControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $16.StampCardResponse>(
        'GetStampCard',
        getStampCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($16.StampCardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.CheckinRequest, $16.CheckinResponse>(
        'Checkin',
        checkin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CheckinRequest.fromBuffer(value),
        ($16.CheckinResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.StampCardResponse> getStampCard_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getStampCard(call, await request);
  }

  $async.Future<$16.CheckinResponse> checkin_Pre(
      $grpc.ServiceCall call, $async.Future<$16.CheckinRequest> request) async {
    return checkin(call, await request);
  }

  $async.Future<$16.StampCardResponse> getStampCard(
      $grpc.ServiceCall call, $2.Empty request);
  $async.Future<$16.CheckinResponse> checkin(
      $grpc.ServiceCall call, $16.CheckinRequest request);
}
