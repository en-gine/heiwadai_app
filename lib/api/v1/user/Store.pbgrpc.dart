///
//  Generated code. Do not modify.
//  source: v1/user/Store.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Store.pb.dart' as $23;
import '../shared/Store.pb.dart' as $10;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'Store.pb.dart';

class StoreControllerClient extends $grpc.Client {
  static final _$getByID = $grpc.ClientMethod<$23.StoreIDRequest, $10.Store>(
      '/server.user.StoreController/GetByID',
      ($23.StoreIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Store.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$1.Empty, $10.Stores>(
      '/server.user.StoreController/GetAll',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Stores.fromBuffer(value));
  static final _$getStayables =
      $grpc.ClientMethod<$1.Empty, $10.StayableStores>(
          '/server.user.StoreController/GetStayables',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.StayableStores.fromBuffer(value));
  static final _$getStayableByID =
      $grpc.ClientMethod<$23.StoreIDRequest, $10.StayableStore>(
          '/server.user.StoreController/GetStayableByID',
          ($23.StoreIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $10.StayableStore.fromBuffer(value));

  StoreControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.Store> getByID($23.StoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$10.Stores> getAll($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$10.StayableStores> getStayables($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStayables, request, options: options);
  }

  $grpc.ResponseFuture<$10.StayableStore> getStayableByID(
      $23.StoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStayableByID, request, options: options);
  }
}

abstract class StoreControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.StoreController';

  StoreControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$23.StoreIDRequest, $10.Store>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.StoreIDRequest.fromBuffer(value),
        ($10.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $10.Stores>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($10.Stores value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $10.StayableStores>(
        'GetStayables',
        getStayables_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($10.StayableStores value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.StoreIDRequest, $10.StayableStore>(
        'GetStayableByID',
        getStayableByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.StoreIDRequest.fromBuffer(value),
        ($10.StayableStore value) => value.writeToBuffer()));
  }

  $async.Future<$10.Store> getByID_Pre(
      $grpc.ServiceCall call, $async.Future<$23.StoreIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$10.Stores> getAll_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAll(call, await request);
  }

  $async.Future<$10.StayableStores> getStayables_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getStayables(call, await request);
  }

  $async.Future<$10.StayableStore> getStayableByID_Pre(
      $grpc.ServiceCall call, $async.Future<$23.StoreIDRequest> request) async {
    return getStayableByID(call, await request);
  }

  $async.Future<$10.Store> getByID(
      $grpc.ServiceCall call, $23.StoreIDRequest request);
  $async.Future<$10.Stores> getAll($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$10.StayableStores> getStayables(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$10.StayableStore> getStayableByID(
      $grpc.ServiceCall call, $23.StoreIDRequest request);
}
