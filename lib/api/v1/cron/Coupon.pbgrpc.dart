///
//  Generated code. Do not modify.
//  source: v1/cron/Coupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $1;
import 'Coupon.pb.dart' as $14;
export 'Coupon.pb.dart';

class CronCouponControllerClient extends $grpc.Client {
  static final _$bulkIssueBirthdayCoupon =
      $grpc.ClientMethod<$1.Empty, $14.AffectedCountResponse>(
          '/server.cron.CronCouponController/BulkIssueBirthdayCoupon',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $14.AffectedCountResponse.fromBuffer(value));

  CronCouponControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$14.AffectedCountResponse> bulkIssueBirthdayCoupon(
      $1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkIssueBirthdayCoupon, request,
        options: options);
  }
}

abstract class CronCouponControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.cron.CronCouponController';

  CronCouponControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $14.AffectedCountResponse>(
        'BulkIssueBirthdayCoupon',
        bulkIssueBirthdayCoupon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($14.AffectedCountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.AffectedCountResponse> bulkIssueBirthdayCoupon_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return bulkIssueBirthdayCoupon(call, await request);
  }

  $async.Future<$14.AffectedCountResponse> bulkIssueBirthdayCoupon(
      $grpc.ServiceCall call, $1.Empty request);
}
