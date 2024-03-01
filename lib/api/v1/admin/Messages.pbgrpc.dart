///
//  Generated code. Do not modify.
//  source: v1/admin/Messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Messages.pb.dart' as $8;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'Messages.pb.dart';

class MessageControllerClient extends $grpc.Client {
  static final _$getByID =
      $grpc.ClientMethod<$8.MessageIDRequest, $8.MessageResponse>(
          '/server.admin.MessageController/GetByID',
          ($8.MessageIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.MessageResponse.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$8.GetMessageRequest, $8.MessagesResponse>(
          '/server.admin.MessageController/GetList',
          ($8.GetMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.MessagesResponse.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$8.MessageCreateRequest, $8.MessageResponse>(
          '/server.admin.MessageController/Create',
          ($8.MessageCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.MessageResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$8.MessageUpdateRequest, $8.MessageResponse>(
          '/server.admin.MessageController/Update',
          ($8.MessageUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.MessageResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$8.MessageIDRequest, $1.Empty>(
      '/server.admin.MessageController/Delete',
      ($8.MessageIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  MessageControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.MessageResponse> getByID($8.MessageIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$8.MessagesResponse> getList(
      $8.GetMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$8.MessageResponse> create(
      $8.MessageCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$8.MessageResponse> update(
      $8.MessageUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> delete($8.MessageIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class MessageControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.MessageController';

  MessageControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.MessageIDRequest, $8.MessageResponse>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.MessageIDRequest.fromBuffer(value),
        ($8.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetMessageRequest, $8.MessagesResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetMessageRequest.fromBuffer(value),
        ($8.MessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.MessageCreateRequest, $8.MessageResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.MessageCreateRequest.fromBuffer(value),
        ($8.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.MessageUpdateRequest, $8.MessageResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.MessageUpdateRequest.fromBuffer(value),
        ($8.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.MessageIDRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.MessageIDRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$8.MessageResponse> getByID_Pre($grpc.ServiceCall call,
      $async.Future<$8.MessageIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$8.MessagesResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$8.GetMessageRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$8.MessageResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$8.MessageCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$8.MessageResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$8.MessageUpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$1.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$8.MessageIDRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$8.MessageResponse> getByID(
      $grpc.ServiceCall call, $8.MessageIDRequest request);
  $async.Future<$8.MessagesResponse> getList(
      $grpc.ServiceCall call, $8.GetMessageRequest request);
  $async.Future<$8.MessageResponse> create(
      $grpc.ServiceCall call, $8.MessageCreateRequest request);
  $async.Future<$8.MessageResponse> update(
      $grpc.ServiceCall call, $8.MessageUpdateRequest request);
  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $8.MessageIDRequest request);
}
