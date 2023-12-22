///
//  Generated code. Do not modify.
//  source: v1/admin/Messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Messages.pb.dart' as $6;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'Messages.pb.dart';

class MessageControllerClient extends $grpc.Client {
  static final _$getByID =
      $grpc.ClientMethod<$6.MessageIDRequest, $6.MessageResponse>(
          '/server.admin.MessageController/GetByID',
          ($6.MessageIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.MessageResponse.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$6.GetMessageRequest, $6.MessagesResponse>(
          '/server.admin.MessageController/GetList',
          ($6.GetMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.MessagesResponse.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$6.MessageCreateRequest, $6.MessageResponse>(
          '/server.admin.MessageController/Create',
          ($6.MessageCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.MessageResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$6.MessageUpdateRequest, $6.MessageResponse>(
          '/server.admin.MessageController/Update',
          ($6.MessageUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.MessageResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$6.MessageIDRequest, $2.Empty>(
      '/server.admin.MessageController/Delete',
      ($6.MessageIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  MessageControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.MessageResponse> getByID($6.MessageIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$6.MessagesResponse> getList(
      $6.GetMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$6.MessageResponse> create(
      $6.MessageCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$6.MessageResponse> update(
      $6.MessageUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> delete($6.MessageIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class MessageControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.MessageController';

  MessageControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.MessageIDRequest, $6.MessageResponse>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.MessageIDRequest.fromBuffer(value),
        ($6.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetMessageRequest, $6.MessagesResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetMessageRequest.fromBuffer(value),
        ($6.MessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MessageCreateRequest, $6.MessageResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.MessageCreateRequest.fromBuffer(value),
        ($6.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MessageUpdateRequest, $6.MessageResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.MessageUpdateRequest.fromBuffer(value),
        ($6.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MessageIDRequest, $2.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.MessageIDRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.MessageResponse> getByID_Pre($grpc.ServiceCall call,
      $async.Future<$6.MessageIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$6.MessagesResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$6.GetMessageRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$6.MessageResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$6.MessageCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$6.MessageResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$6.MessageUpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$2.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$6.MessageIDRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$6.MessageResponse> getByID(
      $grpc.ServiceCall call, $6.MessageIDRequest request);
  $async.Future<$6.MessagesResponse> getList(
      $grpc.ServiceCall call, $6.GetMessageRequest request);
  $async.Future<$6.MessageResponse> create(
      $grpc.ServiceCall call, $6.MessageCreateRequest request);
  $async.Future<$6.MessageResponse> update(
      $grpc.ServiceCall call, $6.MessageUpdateRequest request);
  $async.Future<$2.Empty> delete(
      $grpc.ServiceCall call, $6.MessageIDRequest request);
}
