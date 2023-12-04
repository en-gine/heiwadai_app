///
//  Generated code. Do not modify.
//  source: v1/user/Store.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Store.pb.dart' as $19;
import '../shared/Store.pb.dart' as $7;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'Store.pb.dart';

class StoreControllerClient extends $grpc.Client {
  static final _$getByID = $grpc.ClientMethod<$19.SoreIDRequest, $7.Store>(
      '/server.user.StoreController/GetByID',
      ($19.SoreIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Store.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$2.Empty, $7.Stores>(
      '/server.user.StoreController/GetAll',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Stores.fromBuffer(value));
  static final _$getStayables = $grpc.ClientMethod<$2.Empty, $7.StayableStores>(
      '/server.user.StoreController/GetStayables',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StayableStores.fromBuffer(value));
  static final _$getStayableByID =
      $grpc.ClientMethod<$19.SoreIDRequest, $7.StayableStore>(
          '/server.user.StoreController/GetStayableByID',
          ($19.SoreIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.StayableStore.fromBuffer(value));

  StoreControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.Store> getByID($19.SoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$7.Stores> getAll($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$7.StayableStores> getStayables($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStayables, request, options: options);
  }

  $grpc.ResponseFuture<$7.StayableStore> getStayableByID(
      $19.SoreIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStayableByID, request, options: options);
  }
}

abstract class StoreControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.StoreController';

  StoreControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.SoreIDRequest, $7.Store>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.SoreIDRequest.fromBuffer(value),
        ($7.Store value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $7.Stores>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($7.Stores value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $7.StayableStores>(
        'GetStayables',
        getStayables_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($7.StayableStores value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.SoreIDRequest, $7.StayableStore>(
        'GetStayableByID',
        getStayableByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.SoreIDRequest.fromBuffer(value),
        ($7.StayableStore value) => value.writeToBuffer()));
  }

  $async.Future<$7.Store> getByID_Pre(
      $grpc.ServiceCall call, $async.Future<$19.SoreIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$7.Stores> getAll_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getAll(call, await request);
  }

  $async.Future<$7.StayableStores> getStayables_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getStayables(call, await request);
  }

  $async.Future<$7.StayableStore> getStayableByID_Pre(
      $grpc.ServiceCall call, $async.Future<$19.SoreIDRequest> request) async {
    return getStayableByID(call, await request);
  }

  $async.Future<$7.Store> getByID(
      $grpc.ServiceCall call, $19.SoreIDRequest request);
  $async.Future<$7.Stores> getAll($grpc.ServiceCall call, $2.Empty request);
  $async.Future<$7.StayableStores> getStayables(
      $grpc.ServiceCall call, $2.Empty request);
  $async.Future<$7.StayableStore> getStayableByID(
      $grpc.ServiceCall call, $19.SoreIDRequest request);
}
