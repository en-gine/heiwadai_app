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
import '../shared/Coupon.pb.dart' as $5;
import '../../google/protobuf/empty.pb.dart' as $1;
import '../shared/Pager.pb.dart' as $6;
export 'Coupon.pb.dart';

class AdminCouponControllerClient extends $grpc.Client {
  static final _$getUserCouponList =
      $grpc.ClientMethod<$4.UserCouponRequest, $4.UserAttachedCouponsResponse>(
          '/server.admin.AdminCouponController/GetUserCouponList',
          ($4.UserCouponRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UserAttachedCouponsResponse.fromBuffer(value));
  static final _$createCustomCoupon =
      $grpc.ClientMethod<$4.CreateCustomCouponRequest, $5.CustomCoupon>(
          '/server.admin.AdminCouponController/CreateCustomCoupon',
          ($4.CreateCustomCouponRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.CustomCoupon.fromBuffer(value));
  static final _$saveCustomCoupon =
      $grpc.ClientMethod<$4.SaveCustomCouponRequest, $1.Empty>(
          '/server.admin.AdminCouponController/SaveCustomCoupon',
          ($4.SaveCustomCouponRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getDefaultEmptyCoupon =
      $grpc.ClientMethod<$1.Empty, $4.DefaultCouponResponse>(
          '/server.admin.AdminCouponController/GetDefaultEmptyCoupon',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.DefaultCouponResponse.fromBuffer(value));
  static final _$getCustomCouponByID =
      $grpc.ClientMethod<$4.CouponIDRequest, $5.CustomCoupon>(
          '/server.admin.AdminCouponController/GetCustomCouponByID',
          ($4.CouponIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.CustomCoupon.fromBuffer(value));
  static final _$getCustomCouponList =
      $grpc.ClientMethod<$6.Pager, $4.CouponListResponse>(
          '/server.admin.AdminCouponController/GetCustomCouponList',
          ($6.Pager value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CouponListResponse.fromBuffer(value));
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
      $4.UserCouponRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserCouponList, request, options: options);
  }

  $grpc.ResponseFuture<$5.CustomCoupon> createCustomCoupon(
      $4.CreateCustomCouponRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCustomCoupon, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> saveCustomCoupon(
      $4.SaveCustomCouponRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveCustomCoupon, request, options: options);
  }

  $grpc.ResponseFuture<$4.DefaultCouponResponse> getDefaultEmptyCoupon(
      $1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDefaultEmptyCoupon, request, options: options);
  }

  $grpc.ResponseFuture<$5.CustomCoupon> getCustomCouponByID(
      $4.CouponIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCustomCouponByID, request, options: options);
  }

  $grpc.ResponseFuture<$4.CouponListResponse> getCustomCouponList(
      $6.Pager request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCustomCouponList, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$4.UserCouponRequest,
            $4.UserAttachedCouponsResponse>(
        'GetUserCouponList',
        getUserCouponList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UserCouponRequest.fromBuffer(value),
        ($4.UserAttachedCouponsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CreateCustomCouponRequest, $5.CustomCoupon>(
            'CreateCustomCoupon',
            createCustomCoupon_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateCustomCouponRequest.fromBuffer(value),
            ($5.CustomCoupon value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SaveCustomCouponRequest, $1.Empty>(
        'SaveCustomCoupon',
        saveCustomCoupon_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.SaveCustomCouponRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $4.DefaultCouponResponse>(
        'GetDefaultEmptyCoupon',
        getDefaultEmptyCoupon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($4.DefaultCouponResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CouponIDRequest, $5.CustomCoupon>(
        'GetCustomCouponByID',
        getCustomCouponByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CouponIDRequest.fromBuffer(value),
        ($5.CustomCoupon value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.Pager, $4.CouponListResponse>(
        'GetCustomCouponList',
        getCustomCouponList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.Pager.fromBuffer(value),
        ($4.CouponListResponse value) => value.writeToBuffer()));
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
      $grpc.ServiceCall call,
      $async.Future<$4.UserCouponRequest> request) async {
    return getUserCouponList(call, await request);
  }

  $async.Future<$5.CustomCoupon> createCustomCoupon_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateCustomCouponRequest> request) async {
    return createCustomCoupon(call, await request);
  }

  $async.Future<$1.Empty> saveCustomCoupon_Pre($grpc.ServiceCall call,
      $async.Future<$4.SaveCustomCouponRequest> request) async {
    return saveCustomCoupon(call, await request);
  }

  $async.Future<$4.DefaultCouponResponse> getDefaultEmptyCoupon_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getDefaultEmptyCoupon(call, await request);
  }

  $async.Future<$5.CustomCoupon> getCustomCouponByID_Pre(
      $grpc.ServiceCall call, $async.Future<$4.CouponIDRequest> request) async {
    return getCustomCouponByID(call, await request);
  }

  $async.Future<$4.CouponListResponse> getCustomCouponList_Pre(
      $grpc.ServiceCall call, $async.Future<$6.Pager> request) async {
    return getCustomCouponList(call, await request);
  }

  $async.Future<$4.AffectedCountResponse> attachCustomCouponToAllUser_Pre(
      $grpc.ServiceCall call, $async.Future<$4.CouponIDRequest> request) async {
    return attachCustomCouponToAllUser(call, await request);
  }

  $async.Future<$4.UserAttachedCouponsResponse> getUserCouponList(
      $grpc.ServiceCall call, $4.UserCouponRequest request);
  $async.Future<$5.CustomCoupon> createCustomCoupon(
      $grpc.ServiceCall call, $4.CreateCustomCouponRequest request);
  $async.Future<$1.Empty> saveCustomCoupon(
      $grpc.ServiceCall call, $4.SaveCustomCouponRequest request);
  $async.Future<$4.DefaultCouponResponse> getDefaultEmptyCoupon(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$5.CustomCoupon> getCustomCouponByID(
      $grpc.ServiceCall call, $4.CouponIDRequest request);
  $async.Future<$4.CouponListResponse> getCustomCouponList(
      $grpc.ServiceCall call, $6.Pager request);
  $async.Future<$4.AffectedCountResponse> attachCustomCouponToAllUser(
      $grpc.ServiceCall call, $4.CouponIDRequest request);
}
