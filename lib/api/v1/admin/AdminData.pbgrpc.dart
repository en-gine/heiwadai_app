///
//  Generated code. Do not modify.
//  source: v1/admin/AdminData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'AdminData.pb.dart' as $0;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'AdminData.pb.dart';

class AdminDataControllerClient extends $grpc.Client {
  static final _$getByID =
      $grpc.ClientMethod<$0.AdminDataRequest, $0.AdminDataResponse>(
          '/server.admin.AdminDataController/GetByID',
          ($0.AdminDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminDataResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.AdminUpdateDataRequest, $0.AdminDataResponse>(
          '/server.admin.AdminDataController/Update',
          ($0.AdminUpdateDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminDataResponse.fromBuffer(value));
  static final _$getAll =
      $grpc.ClientMethod<$0.AdminListRequest, $0.AdminListResponse>(
          '/server.admin.AdminDataController/GetAll',
          ($0.AdminListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminListResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.AdminDataRequest, $1.Empty>(
      '/server.admin.AdminDataController/Delete',
      ($0.AdminDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getLoginLogList =
      $grpc.ClientMethod<$0.AdminLoginLogRequest, $0.AdminLoginLogListResponse>(
          '/server.admin.AdminDataController/GetLoginLogList',
          ($0.AdminLoginLogRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminLoginLogListResponse.fromBuffer(value));

  AdminDataControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AdminDataResponse> getByID(
      $0.AdminDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$0.AdminDataResponse> update(
      $0.AdminUpdateDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.AdminListResponse> getAll($0.AdminListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> delete($0.AdminDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.AdminLoginLogListResponse> getLoginLogList(
      $0.AdminLoginLogRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLoginLogList, request, options: options);
  }
}

abstract class AdminDataControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.AdminDataController';

  AdminDataControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AdminDataRequest, $0.AdminDataResponse>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AdminDataRequest.fromBuffer(value),
        ($0.AdminDataResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AdminUpdateDataRequest, $0.AdminDataResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AdminUpdateDataRequest.fromBuffer(value),
            ($0.AdminDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminListRequest, $0.AdminListResponse>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AdminListRequest.fromBuffer(value),
        ($0.AdminListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminDataRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AdminDataRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdminLoginLogRequest,
            $0.AdminLoginLogListResponse>(
        'GetLoginLogList',
        getLoginLogList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AdminLoginLogRequest.fromBuffer(value),
        ($0.AdminLoginLogListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AdminDataResponse> getByID_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminDataRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$0.AdminDataResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminUpdateDataRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.AdminListResponse> getAll_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminListRequest> request) async {
    return getAll(call, await request);
  }

  $async.Future<$1.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminDataRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.AdminLoginLogListResponse> getLoginLogList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AdminLoginLogRequest> request) async {
    return getLoginLogList(call, await request);
  }

  $async.Future<$0.AdminDataResponse> getByID(
      $grpc.ServiceCall call, $0.AdminDataRequest request);
  $async.Future<$0.AdminDataResponse> update(
      $grpc.ServiceCall call, $0.AdminUpdateDataRequest request);
  $async.Future<$0.AdminListResponse> getAll(
      $grpc.ServiceCall call, $0.AdminListRequest request);
  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $0.AdminDataRequest request);
  $async.Future<$0.AdminLoginLogListResponse> getLoginLogList(
      $grpc.ServiceCall call, $0.AdminLoginLogRequest request);
}
