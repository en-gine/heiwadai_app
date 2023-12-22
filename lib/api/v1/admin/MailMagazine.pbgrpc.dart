///
//  Generated code. Do not modify.
//  source: v1/admin/MailMagazine.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'MailMagazine.pb.dart' as $5;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'MailMagazine.pb.dart';

class MailMagazineControllerClient extends $grpc.Client {
  static final _$getList = $grpc.ClientMethod<$5.GetMailMagazineListRequest,
          $5.MailMagazinesResponse>(
      '/server.admin.MailMagazineController/GetList',
      ($5.GetMailMagazineListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.MailMagazinesResponse.fromBuffer(value));
  static final _$getByID =
      $grpc.ClientMethod<$5.MailMagazineIDRequest, $5.MailMagazine>(
          '/server.admin.MailMagazineController/GetByID',
          ($5.MailMagazineIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.MailMagazine.fromBuffer(value));
  static final _$createDraft =
      $grpc.ClientMethod<$5.CreateDraftRequest, $5.MailMagazine>(
          '/server.admin.MailMagazineController/CreateDraft',
          ($5.CreateDraftRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.MailMagazine.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$5.UpdateMailMagazineRequest, $5.MailMagazine>(
          '/server.admin.MailMagazineController/Update',
          ($5.UpdateMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.MailMagazine.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$5.DeleteMailMagazineRequest, $2.Empty>(
          '/server.admin.MailMagazineController/Delete',
          ($5.DeleteMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$send =
      $grpc.ClientMethod<$5.SendMailMagazineRequest, $2.Empty>(
          '/server.admin.MailMagazineController/Send',
          ($5.SendMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  MailMagazineControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.MailMagazinesResponse> getList(
      $5.GetMailMagazineListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$5.MailMagazine> getByID(
      $5.MailMagazineIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$5.MailMagazine> createDraft(
      $5.CreateDraftRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDraft, request, options: options);
  }

  $grpc.ResponseFuture<$5.MailMagazine> update(
      $5.UpdateMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> delete($5.DeleteMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> send($5.SendMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class MailMagazineControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.MailMagazineController';

  MailMagazineControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.GetMailMagazineListRequest,
            $5.MailMagazinesResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetMailMagazineListRequest.fromBuffer(value),
        ($5.MailMagazinesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.MailMagazineIDRequest, $5.MailMagazine>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.MailMagazineIDRequest.fromBuffer(value),
        ($5.MailMagazine value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateDraftRequest, $5.MailMagazine>(
        'CreateDraft',
        createDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateDraftRequest.fromBuffer(value),
        ($5.MailMagazine value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.UpdateMailMagazineRequest, $5.MailMagazine>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.UpdateMailMagazineRequest.fromBuffer(value),
            ($5.MailMagazine value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteMailMagazineRequest, $2.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteMailMagazineRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SendMailMagazineRequest, $2.Empty>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.SendMailMagazineRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$5.MailMagazinesResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetMailMagazineListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$5.MailMagazine> getByID_Pre($grpc.ServiceCall call,
      $async.Future<$5.MailMagazineIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$5.MailMagazine> createDraft_Pre($grpc.ServiceCall call,
      $async.Future<$5.CreateDraftRequest> request) async {
    return createDraft(call, await request);
  }

  $async.Future<$5.MailMagazine> update_Pre($grpc.ServiceCall call,
      $async.Future<$5.UpdateMailMagazineRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$2.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$5.DeleteMailMagazineRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.Empty> send_Pre($grpc.ServiceCall call,
      $async.Future<$5.SendMailMagazineRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$5.MailMagazinesResponse> getList(
      $grpc.ServiceCall call, $5.GetMailMagazineListRequest request);
  $async.Future<$5.MailMagazine> getByID(
      $grpc.ServiceCall call, $5.MailMagazineIDRequest request);
  $async.Future<$5.MailMagazine> createDraft(
      $grpc.ServiceCall call, $5.CreateDraftRequest request);
  $async.Future<$5.MailMagazine> update(
      $grpc.ServiceCall call, $5.UpdateMailMagazineRequest request);
  $async.Future<$2.Empty> delete(
      $grpc.ServiceCall call, $5.DeleteMailMagazineRequest request);
  $async.Future<$2.Empty> send(
      $grpc.ServiceCall call, $5.SendMailMagazineRequest request);
}
