///
//  Generated code. Do not modify.
//  source: v1/user/MyCoupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $1;
import 'MyCoupon.pb.dart' as $21;
import '../shared/Coupon.pb.dart' as $5;
export 'MyCoupon.pb.dart';

class MyCouponControllerClient extends $grpc.Client {
  static final _$getList = $grpc.ClientMethod<$1.Empty, $21.MyCouponsResponse>(
      '/server.user.MyCouponController/GetList',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.MyCouponsResponse.fromBuffer(value));
  static final _$getDetail = $grpc.ClientMethod<$21.CouponIDRequest, $5.Coupon>(
      '/server.user.MyCouponController/GetDetail',
      ($21.CouponIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Coupon.fromBuffer(value));
  static final _$use = $grpc.ClientMethod<$21.CouponIDRequest, $1.Empty>(
      '/server.user.MyCouponController/Use',
      ($21.CouponIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  MyCouponControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$21.MyCouponsResponse> getList($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$5.Coupon> getDetail($21.CouponIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDetail, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> use($21.CouponIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$use, request, options: options);
  }
}

abstract class MyCouponControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.MyCouponController';

  MyCouponControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $21.MyCouponsResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($21.MyCouponsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.CouponIDRequest, $5.Coupon>(
        'GetDetail',
        getDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.CouponIDRequest.fromBuffer(value),
        ($5.Coupon value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.CouponIDRequest, $1.Empty>(
        'Use',
        use_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.CouponIDRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$21.MyCouponsResponse> getList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getList(call, await request);
  }

  $async.Future<$5.Coupon> getDetail_Pre($grpc.ServiceCall call,
      $async.Future<$21.CouponIDRequest> request) async {
    return getDetail(call, await request);
  }

  $async.Future<$1.Empty> use_Pre($grpc.ServiceCall call,
      $async.Future<$21.CouponIDRequest> request) async {
    return use(call, await request);
  }

  $async.Future<$21.MyCouponsResponse> getList(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$5.Coupon> getDetail(
      $grpc.ServiceCall call, $21.CouponIDRequest request);
  $async.Future<$1.Empty> use(
      $grpc.ServiceCall call, $21.CouponIDRequest request);
}
