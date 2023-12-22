///
//  Generated code. Do not modify.
//  source: v1/user/MyCoupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'MyCoupon.pb.dart' as $18;
import '../shared/Coupon.pb.dart' as $19;
export 'MyCoupon.pb.dart';

class MyCouponControllerClient extends $grpc.Client {
  static final _$getList = $grpc.ClientMethod<$2.Empty, $18.MyCouponsResponse>(
      '/server.user.MyCouponController/GetList',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.MyCouponsResponse.fromBuffer(value));
  static final _$getDetail =
      $grpc.ClientMethod<$18.CouponIDRequest, $19.Coupon>(
          '/server.user.MyCouponController/GetDetail',
          ($18.CouponIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $19.Coupon.fromBuffer(value));
  static final _$use = $grpc.ClientMethod<$18.CouponIDRequest, $2.Empty>(
      '/server.user.MyCouponController/Use',
      ($18.CouponIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  MyCouponControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$18.MyCouponsResponse> getList($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$19.Coupon> getDetail($18.CouponIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDetail, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> use($18.CouponIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$use, request, options: options);
  }
}

abstract class MyCouponControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.MyCouponController';

  MyCouponControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $18.MyCouponsResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($18.MyCouponsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.CouponIDRequest, $19.Coupon>(
        'GetDetail',
        getDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CouponIDRequest.fromBuffer(value),
        ($19.Coupon value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.CouponIDRequest, $2.Empty>(
        'Use',
        use_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CouponIDRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$18.MyCouponsResponse> getList_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getList(call, await request);
  }

  $async.Future<$19.Coupon> getDetail_Pre($grpc.ServiceCall call,
      $async.Future<$18.CouponIDRequest> request) async {
    return getDetail(call, await request);
  }

  $async.Future<$2.Empty> use_Pre($grpc.ServiceCall call,
      $async.Future<$18.CouponIDRequest> request) async {
    return use(call, await request);
  }

  $async.Future<$18.MyCouponsResponse> getList(
      $grpc.ServiceCall call, $2.Empty request);
  $async.Future<$19.Coupon> getDetail(
      $grpc.ServiceCall call, $18.CouponIDRequest request);
  $async.Future<$2.Empty> use(
      $grpc.ServiceCall call, $18.CouponIDRequest request);
}
