///
//  Generated code. Do not modify.
//  source: v1/admin/Messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Messages.pb.dart' as $5;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'Messages.pb.dart';

class MessageControllerClient extends $grpc.Client {
  static final _$getByID =
      $grpc.ClientMethod<$5.MessageIDRequest, $5.MessageResponse>(
          '/server.admin.MessageController/GetByID',
          ($5.MessageIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.MessageResponse.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$5.GetMessageRequest, $5.MessagesResponse>(
          '/server.admin.MessageController/GetList',
          ($5.GetMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.MessagesResponse.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$5.MessageCreateRequest, $5.MessageResponse>(
          '/server.admin.MessageController/Create',
          ($5.MessageCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.MessageResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$5.MessageUpdateRequest, $5.MessageResponse>(
          '/server.admin.MessageController/Update',
          ($5.MessageUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.MessageResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$5.MessageIDRequest, $2.Empty>(
      '/server.admin.MessageController/Delete',
      ($5.MessageIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  MessageControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.MessageResponse> getByID($5.MessageIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$5.MessagesResponse> getList(
      $5.GetMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$5.MessageResponse> create(
      $5.MessageCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$5.MessageResponse> update(
      $5.MessageUpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> delete($5.MessageIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class MessageControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.MessageController';

  MessageControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.MessageIDRequest, $5.MessageResponse>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.MessageIDRequest.fromBuffer(value),
        ($5.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetMessageRequest, $5.MessagesResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetMessageRequest.fromBuffer(value),
        ($5.MessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.MessageCreateRequest, $5.MessageResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.MessageCreateRequest.fromBuffer(value),
        ($5.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.MessageUpdateRequest, $5.MessageResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.MessageUpdateRequest.fromBuffer(value),
        ($5.MessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.MessageIDRequest, $2.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.MessageIDRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$5.MessageResponse> getByID_Pre($grpc.ServiceCall call,
      $async.Future<$5.MessageIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$5.MessagesResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetMessageRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$5.MessageResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$5.MessageCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$5.MessageResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$5.MessageUpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$2.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$5.MessageIDRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$5.MessageResponse> getByID(
      $grpc.ServiceCall call, $5.MessageIDRequest request);
  $async.Future<$5.MessagesResponse> getList(
      $grpc.ServiceCall call, $5.GetMessageRequest request);
  $async.Future<$5.MessageResponse> create(
      $grpc.ServiceCall call, $5.MessageCreateRequest request);
  $async.Future<$5.MessageResponse> update(
      $grpc.ServiceCall call, $5.MessageUpdateRequest request);
  $async.Future<$2.Empty> delete(
      $grpc.ServiceCall call, $5.MessageIDRequest request);
}
