///
//  Generated code. Do not modify.
//  source: v1/admin/MailMagazine.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'MailMagazine.pb.dart' as $7;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'MailMagazine.pb.dart';

class MailMagazineControllerClient extends $grpc.Client {
  static final _$getList = $grpc.ClientMethod<$7.GetMailMagazineListRequest,
          $7.MailMagazinesResponse>(
      '/server.admin.MailMagazineController/GetList',
      ($7.GetMailMagazineListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.MailMagazinesResponse.fromBuffer(value));
  static final _$getByID =
      $grpc.ClientMethod<$7.MailMagazineIDRequest, $7.MailMagazine>(
          '/server.admin.MailMagazineController/GetByID',
          ($7.MailMagazineIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.MailMagazine.fromBuffer(value));
  static final _$getUserLogList =
      $grpc.ClientMethod<$7.UserLogListRequest, $7.UserMailMagazineLogResponse>(
          '/server.admin.MailMagazineController/GetUserLogList',
          ($7.UserLogListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.UserMailMagazineLogResponse.fromBuffer(value));
  static final _$saveDraft =
      $grpc.ClientMethod<$7.SaveDraftRequest, $7.MailMagazine>(
          '/server.admin.MailMagazineController/SaveDraft',
          ($7.SaveDraftRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.MailMagazine.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$7.UpdateMailMagazineRequest, $7.MailMagazine>(
          '/server.admin.MailMagazineController/Update',
          ($7.UpdateMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.MailMagazine.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$7.DeleteMailMagazineRequest, $1.Empty>(
          '/server.admin.MailMagazineController/Delete',
          ($7.DeleteMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$send =
      $grpc.ClientMethod<$7.SendMailMagazineRequest, $1.Empty>(
          '/server.admin.MailMagazineController/Send',
          ($7.SendMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  MailMagazineControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.MailMagazinesResponse> getList(
      $7.GetMailMagazineListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$7.MailMagazine> getByID(
      $7.MailMagazineIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$7.UserMailMagazineLogResponse> getUserLogList(
      $7.UserLogListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserLogList, request, options: options);
  }

  $grpc.ResponseFuture<$7.MailMagazine> saveDraft($7.SaveDraftRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveDraft, request, options: options);
  }

  $grpc.ResponseFuture<$7.MailMagazine> update(
      $7.UpdateMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> delete($7.DeleteMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> send($7.SendMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class MailMagazineControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.MailMagazineController';

  MailMagazineControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetMailMagazineListRequest,
            $7.MailMagazinesResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetMailMagazineListRequest.fromBuffer(value),
        ($7.MailMagazinesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MailMagazineIDRequest, $7.MailMagazine>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.MailMagazineIDRequest.fromBuffer(value),
        ($7.MailMagazine value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UserLogListRequest,
            $7.UserMailMagazineLogResponse>(
        'GetUserLogList',
        getUserLogList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.UserLogListRequest.fromBuffer(value),
        ($7.UserMailMagazineLogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SaveDraftRequest, $7.MailMagazine>(
        'SaveDraft',
        saveDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.SaveDraftRequest.fromBuffer(value),
        ($7.MailMagazine value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.UpdateMailMagazineRequest, $7.MailMagazine>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.UpdateMailMagazineRequest.fromBuffer(value),
            ($7.MailMagazine value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteMailMagazineRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.DeleteMailMagazineRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SendMailMagazineRequest, $1.Empty>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.SendMailMagazineRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$7.MailMagazinesResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetMailMagazineListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$7.MailMagazine> getByID_Pre($grpc.ServiceCall call,
      $async.Future<$7.MailMagazineIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$7.UserMailMagazineLogResponse> getUserLogList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.UserLogListRequest> request) async {
    return getUserLogList(call, await request);
  }

  $async.Future<$7.MailMagazine> saveDraft_Pre($grpc.ServiceCall call,
      $async.Future<$7.SaveDraftRequest> request) async {
    return saveDraft(call, await request);
  }

  $async.Future<$7.MailMagazine> update_Pre($grpc.ServiceCall call,
      $async.Future<$7.UpdateMailMagazineRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$1.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$7.DeleteMailMagazineRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.Empty> send_Pre($grpc.ServiceCall call,
      $async.Future<$7.SendMailMagazineRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$7.MailMagazinesResponse> getList(
      $grpc.ServiceCall call, $7.GetMailMagazineListRequest request);
  $async.Future<$7.MailMagazine> getByID(
      $grpc.ServiceCall call, $7.MailMagazineIDRequest request);
  $async.Future<$7.UserMailMagazineLogResponse> getUserLogList(
      $grpc.ServiceCall call, $7.UserLogListRequest request);
  $async.Future<$7.MailMagazine> saveDraft(
      $grpc.ServiceCall call, $7.SaveDraftRequest request);
  $async.Future<$7.MailMagazine> update(
      $grpc.ServiceCall call, $7.UpdateMailMagazineRequest request);
  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $7.DeleteMailMagazineRequest request);
  $async.Future<$1.Empty> send(
      $grpc.ServiceCall call, $7.SendMailMagazineRequest request);
}
