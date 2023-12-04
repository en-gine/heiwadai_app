///
//  Generated code. Do not modify.
//  source: v1/admin/MailMagazine.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'MailMagazine.pb.dart' as $4;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'MailMagazine.pb.dart';

class MailMagazineControllerClient extends $grpc.Client {
  static final _$getList = $grpc.ClientMethod<$4.GetMailMagazineListRequest,
          $4.MailMagazinesResponse>(
      '/server.admin.MailMagazineController/GetList',
      ($4.GetMailMagazineListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.MailMagazinesResponse.fromBuffer(value));
  static final _$createDraft =
      $grpc.ClientMethod<$4.CreateDraftRequest, $4.MailMagazine>(
          '/server.admin.MailMagazineController/CreateDraft',
          ($4.CreateDraftRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.MailMagazine.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$4.UpdateMailMagazineRequest, $4.MailMagazine>(
          '/server.admin.MailMagazineController/Update',
          ($4.UpdateMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.MailMagazine.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$4.DeleteMailMagazineRequest, $2.Empty>(
          '/server.admin.MailMagazineController/Delete',
          ($4.DeleteMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$send =
      $grpc.ClientMethod<$4.SendMailMagazineRequest, $2.Empty>(
          '/server.admin.MailMagazineController/Send',
          ($4.SendMailMagazineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  MailMagazineControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.MailMagazinesResponse> getList(
      $4.GetMailMagazineListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }

  $grpc.ResponseFuture<$4.MailMagazine> createDraft(
      $4.CreateDraftRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDraft, request, options: options);
  }

  $grpc.ResponseFuture<$4.MailMagazine> update(
      $4.UpdateMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> delete($4.DeleteMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> send($4.SendMailMagazineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class MailMagazineControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.MailMagazineController';

  MailMagazineControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetMailMagazineListRequest,
            $4.MailMagazinesResponse>(
        'GetList',
        getList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetMailMagazineListRequest.fromBuffer(value),
        ($4.MailMagazinesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateDraftRequest, $4.MailMagazine>(
        'CreateDraft',
        createDraft_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateDraftRequest.fromBuffer(value),
        ($4.MailMagazine value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.UpdateMailMagazineRequest, $4.MailMagazine>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.UpdateMailMagazineRequest.fromBuffer(value),
            ($4.MailMagazine value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteMailMagazineRequest, $2.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteMailMagazineRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SendMailMagazineRequest, $2.Empty>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.SendMailMagazineRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.MailMagazinesResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetMailMagazineListRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$4.MailMagazine> createDraft_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateDraftRequest> request) async {
    return createDraft(call, await request);
  }

  $async.Future<$4.MailMagazine> update_Pre($grpc.ServiceCall call,
      $async.Future<$4.UpdateMailMagazineRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$2.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeleteMailMagazineRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.Empty> send_Pre($grpc.ServiceCall call,
      $async.Future<$4.SendMailMagazineRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$4.MailMagazinesResponse> getList(
      $grpc.ServiceCall call, $4.GetMailMagazineListRequest request);
  $async.Future<$4.MailMagazine> createDraft(
      $grpc.ServiceCall call, $4.CreateDraftRequest request);
  $async.Future<$4.MailMagazine> update(
      $grpc.ServiceCall call, $4.UpdateMailMagazineRequest request);
  $async.Future<$2.Empty> delete(
      $grpc.ServiceCall call, $4.DeleteMailMagazineRequest request);
  $async.Future<$2.Empty> send(
      $grpc.ServiceCall call, $4.SendMailMagazineRequest request);
}
