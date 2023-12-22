///
//  Generated code. Do not modify.
//  source: v1/admin/Coupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Coupon.pb.dart' as $4;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'Coupon.pb.dart';

class AdminCouponControllerClient extends $grpc.Client {
  static final _$getUserCouponList =
      $grpc.ClientMethod<$4.UserIDRequest, $4.UserAttachedCouponsResponse>(
          '/server.admin.AdminCouponController/GetUserCouponList',
          ($4.UserIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UserAttachedCouponsResponse.fromBuffer(value));
  static final _$createCustomCoupon =
      $grpc.ClientMethod<$4.CreateCustomCouponRequest, $2.Empty>(
          '/server.admin.AdminCouponController/CreateCustomCoupon',
          ($4.CreateCustomCouponRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$saveCustomCoupon =
      $grpc.ClientMethod<$4.CouponIDRequest, $2.Empty>(
          '/server.admin.AdminCouponController/SaveCustomCoupon',
          ($4.CouponIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$attachCustomCouponToAllUser =
      $grpc.ClientMethod<$4.CouponIDRequest, $4.AffectedCountResponse>(
          '/server.admin.AdminCouponController/AttachCustomCouponToAllUser',
          ($4.CouponIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.AffectedCountResponse.fromBuffer(value));

  AdminCouponControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.UserAttachedCouponsResponse> getUserCouponList(
      $4.UserIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserCouponList, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> createCustomCoupon(
      $4.CreateCustomCouponRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCustomCoupon, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> saveCustomCoupon($4.CouponIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveCustomCoupon, request, options: options);
  }

  $grpc.ResponseFuture<$4.AffectedCountResponse> attachCustomCouponToAllUser(
      $4.CouponIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attachCustomCouponToAllUser, request,
        options: options);
  }
}

abstract class AdminCouponControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.AdminCouponController';

  AdminCouponControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.UserIDRequest, $4.UserAttachedCouponsResponse>(
            'GetUserCouponList',
            getUserCouponList_Pre,
            false,
            false,
            ($core.List<$core.int> value) => $4.UserIDRequest.fromBuffer(value),
            ($4.UserAttachedCouponsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateCustomCouponRequest, $2.Empty>(
        'CreateCustomCoupon',
        createCustomCoupon_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateCustomCouponRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CouponIDRequest, $2.Empty>(
        'SaveCustomCoupon',
        saveCustomCoupon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CouponIDRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CouponIDRequest, $4.AffectedCountResponse>(
            'AttachCustomCouponToAllUser',
            attachCustomCouponToAllUser_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CouponIDRequest.fromBuffer(value),
            ($4.AffectedCountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.UserAttachedCouponsResponse> getUserCouponList_Pre(
      $grpc.ServiceCall call, $async.Future<$4.UserIDRequest> request) async {
    return getUserCouponList(call, await request);
  }

  $async.Future<$2.Empty> createCustomCoupon_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateCustomCouponRequest> request) async {
    return createCustomCoupon(call, await request);
  }

  $async.Future<$2.Empty> saveCustomCoupon_Pre(
      $grpc.ServiceCall call, $async.Future<$4.CouponIDRequest> request) async {
    return saveCustomCoupon(call, await request);
  }

  $async.Future<$4.AffectedCountResponse> attachCustomCouponToAllUser_Pre(
      $grpc.ServiceCall call, $async.Future<$4.CouponIDRequest> request) async {
    return attachCustomCouponToAllUser(call, await request);
  }

  $async.Future<$4.UserAttachedCouponsResponse> getUserCouponList(
      $grpc.ServiceCall call, $4.UserIDRequest request);
  $async.Future<$2.Empty> createCustomCoupon(
      $grpc.ServiceCall call, $4.CreateCustomCouponRequest request);
  $async.Future<$2.Empty> saveCustomCoupon(
      $grpc.ServiceCall call, $4.CouponIDRequest request);
  $async.Future<$4.AffectedCountResponse> attachCustomCouponToAllUser(
      $grpc.ServiceCall call, $4.CouponIDRequest request);
}
