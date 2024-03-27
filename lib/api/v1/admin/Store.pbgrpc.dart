///
//  Generated code. Do not modify.
//  source: v1/admin/Store.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Store.pb.dart' as $9;
import '../shared/Store.pb.dart' as $10;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'Store.pb.dart';

class StoreControllerClient extends $grpc.Client {
  static final _$getByID = $grpc.ClientMethod<$9.StoreIDRequest, $10.Store>(
      '/server.admin.StoreController/GetByID',
      ($9.StoreIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Store.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$1.Empty, $10.Stores>(
      '/server.admin.StoreController/GetAll',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Stores.fromBuffer(value));
  static final _$getActiveAll = $grpc.ClientMethod<$1.Empty, $10.Stores>(
      '/server.admin.StoreController/GetActiveAll',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Stores.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$9.StoreRegisterRequest, $10.Store>(
          '/server.admin.StoreController/Register',
          ($9.StoreRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $10.Store.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$9.StoreUpdateRequest, $10.Store>(
      '/server.admin.StoreController/Update',
      ($9.StoreUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Store.fromBuffer(value));
  static final _$regenQRCode =
      $grpc.ClientMethod<$9.StoreIDRequest, $9.QRResponse>(
          '/server.admin.StoreController/RegenQRCode',
          ($9.StoreIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $9.QRResponse.fromBuffer(value));
  static final _$regenUnlimitQRCode =
      $grpc.ClientMethod<$9.StoreIDRequest, $9.UnlimitQRResponse>(
          '/server.admin.StoreController/RegenUnlimitQRCode',
          ($9.StoreIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UnlimitQRResponse.fromBuffer(value));

  StoreControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.Store> getByID($9.StoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$10.Stores> getAll($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$10.Stores> getActiveAll($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getActiveAll, request, options: options);
  }

  $grpc.ResponseFuture<$10.Store> register($9.StoreRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$10.Store> update($9.StoreUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$9.QRResponse> regenQRCode($9.StoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$regenQRCode, request, options: options);
  }

  $grpc.ResponseFuture<$9.UnlimitQRResponse> regenUnlimitQRCode(
      $9.StoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$regenUnlimitQRCode, request, options: options);
  }
}

abstract class StoreControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.StoreController';

  StoreControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.StoreIDRequest, $10.Store>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.StoreIDRequest.fromBuffer(value),
        ($10.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $10.Stores>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($10.Stores value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $10.Stores>(
        'GetActiveAll',
        getActiveAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($10.Stores value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.StoreRegisterRequest, $10.Store>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.StoreRegisterRequest.fromBuffer(value),
        ($10.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.StoreUpdateRequest, $10.Store>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.StoreUpdateRequest.fromBuffer(value),
        ($10.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.StoreIDRequest, $9.QRResponse>(
        'RegenQRCode',
        regenQRCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.StoreIDRequest.fromBuffer(value),
        ($9.QRResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.StoreIDRequest, $9.UnlimitQRResponse>(
        'RegenUnlimitQRCode',
        regenUnlimitQRCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.StoreIDRequest.fromBuffer(value),
        ($9.UnlimitQRResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.Store> getByID_Pre(
      $grpc.ServiceCall call, $async.Future<$9.StoreIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$10.Stores> getAll_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAll(call, await request);
  }

  $async.Future<$10.Stores> getActiveAll_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getActiveAll(call, await request);
  }

  $async.Future<$10.Store> register_Pre($grpc.ServiceCall call,
      $async.Future<$9.StoreRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$10.Store> update_Pre($grpc.ServiceCall call,
      $async.Future<$9.StoreUpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$9.QRResponse> regenQRCode_Pre(
      $grpc.ServiceCall call, $async.Future<$9.StoreIDRequest> request) async {
    return regenQRCode(call, await request);
  }

  $async.Future<$9.UnlimitQRResponse> regenUnlimitQRCode_Pre(
      $grpc.ServiceCall call, $async.Future<$9.StoreIDRequest> request) async {
    return regenUnlimitQRCode(call, await request);
  }

  $async.Future<$10.Store> getByID(
      $grpc.ServiceCall call, $9.StoreIDRequest request);
  $async.Future<$10.Stores> getAll($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$10.Stores> getActiveAll(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$10.Store> register(
      $grpc.ServiceCall call, $9.StoreRegisterRequest request);
  $async.Future<$10.Store> update(
      $grpc.ServiceCall call, $9.StoreUpdateRequest request);
  $async.Future<$9.QRResponse> regenQRCode(
      $grpc.ServiceCall call, $9.StoreIDRequest request);
  $async.Future<$9.UnlimitQRResponse> regenUnlimitQRCode(
      $grpc.ServiceCall call, $9.StoreIDRequest request);
}
