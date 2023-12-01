///
//  Generated code. Do not modify.
//  source: v1/admin/Store.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Store.pb.dart' as $6;
import '../shared/Store.pb.dart' as $7;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'Store.pb.dart';

class StoreControllerClient extends $grpc.Client {
  static final _$getByID = $grpc.ClientMethod<$6.SoreIDRequest, $7.Store>(
      '/server.admin.StoreController/GetByID',
      ($6.SoreIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Store.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$2.Empty, $7.Stores>(
      '/server.admin.StoreController/GetAll',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Stores.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$6.StoreRegisterRequest, $7.Store>(
          '/server.admin.StoreController/Register',
          ($6.StoreRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.Store.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$6.StoreUpdateRequest, $7.Store>(
      '/server.admin.StoreController/Update',
      ($6.StoreUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Store.fromBuffer(value));
  static final _$regenQRCode =
      $grpc.ClientMethod<$6.SoreIDRequest, $6.QRResponse>(
          '/server.admin.StoreController/RegenQRCode',
          ($6.SoreIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.QRResponse.fromBuffer(value));
  static final _$regenUnlimitQRCode =
      $grpc.ClientMethod<$6.SoreIDRequest, $6.UnlimitQRResponse>(
          '/server.admin.StoreController/RegenUnlimitQRCode',
          ($6.SoreIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.UnlimitQRResponse.fromBuffer(value));

  StoreControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.Store> getByID($6.SoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$7.Stores> getAll($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$7.Store> register($6.StoreRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$7.Store> update($6.StoreUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$6.QRResponse> regenQRCode($6.SoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$regenQRCode, request, options: options);
  }

  $grpc.ResponseFuture<$6.UnlimitQRResponse> regenUnlimitQRCode(
      $6.SoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$regenUnlimitQRCode, request, options: options);
  }
}

abstract class StoreControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.StoreController';

  StoreControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.SoreIDRequest, $7.Store>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SoreIDRequest.fromBuffer(value),
        ($7.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $7.Stores>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($7.Stores value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.StoreRegisterRequest, $7.Store>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.StoreRegisterRequest.fromBuffer(value),
        ($7.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.StoreUpdateRequest, $7.Store>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.StoreUpdateRequest.fromBuffer(value),
        ($7.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SoreIDRequest, $6.QRResponse>(
        'RegenQRCode',
        regenQRCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SoreIDRequest.fromBuffer(value),
        ($6.QRResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SoreIDRequest, $6.UnlimitQRResponse>(
        'RegenUnlimitQRCode',
        regenUnlimitQRCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SoreIDRequest.fromBuffer(value),
        ($6.UnlimitQRResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.Store> getByID_Pre(
      $grpc.ServiceCall call, $async.Future<$6.SoreIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$7.Stores> getAll_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getAll(call, await request);
  }

  $async.Future<$7.Store> register_Pre($grpc.ServiceCall call,
      $async.Future<$6.StoreRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$7.Store> update_Pre($grpc.ServiceCall call,
      $async.Future<$6.StoreUpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$6.QRResponse> regenQRCode_Pre(
      $grpc.ServiceCall call, $async.Future<$6.SoreIDRequest> request) async {
    return regenQRCode(call, await request);
  }

  $async.Future<$6.UnlimitQRResponse> regenUnlimitQRCode_Pre(
      $grpc.ServiceCall call, $async.Future<$6.SoreIDRequest> request) async {
    return regenUnlimitQRCode(call, await request);
  }

  $async.Future<$7.Store> getByID(
      $grpc.ServiceCall call, $6.SoreIDRequest request);
  $async.Future<$7.Stores> getAll($grpc.ServiceCall call, $2.Empty request);
  $async.Future<$7.Store> register(
      $grpc.ServiceCall call, $6.StoreRegisterRequest request);
  $async.Future<$7.Store> update(
      $grpc.ServiceCall call, $6.StoreUpdateRequest request);
  $async.Future<$6.QRResponse> regenQRCode(
      $grpc.ServiceCall call, $6.SoreIDRequest request);
  $async.Future<$6.UnlimitQRResponse> regenUnlimitQRCode(
      $grpc.ServiceCall call, $6.SoreIDRequest request);
}
