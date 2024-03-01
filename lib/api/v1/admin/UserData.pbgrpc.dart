///
//  Generated code. Do not modify.
//  source: v1/admin/UserData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserData.pb.dart' as $13;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'UserData.pb.dart';

class UserDataControllerClient extends $grpc.Client {
  static final _$getByID =
      $grpc.ClientMethod<$13.UserGetIDRequest, $13.UserDataResponse>(
          '/server.admin.UserDataController/GetByID',
          ($13.UserGetIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $13.UserDataResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$13.UserUpdateDataRequest, $13.UserDataResponse>(
          '/server.admin.UserDataController/Update',
          ($13.UserUpdateDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $13.UserDataResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$13.UserDeleteRequest, $1.Empty>(
      '/server.admin.UserDataController/Delete',
      ($13.UserDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$13.UserListFilterRequest, $13.UserListResponse>(
          '/server.admin.UserDataController/GetList',
          ($13.UserListFilterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $13.UserListResponse.fromBuffer(value));

  UserDataControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$13.UserDataResponse> getByID(
      $13.UserGetIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getByID, request, options: options);
  }

  $grpc.ResponseFuture<$13.UserDataResponse> update(
      $13.UserUpdateDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> delete($13.UserDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$13.UserListResponse> getList(
      $13.UserListFilterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }
}

abstract class UserDataControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.UserDataController';

  UserDataControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.UserGetIDRequest, $13.UserDataResponse>(
        'GetByID',
        getByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UserGetIDRequest.fromBuffer(value),
        ($13.UserDataResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$13.UserUpdateDataRequest, $13.UserDataResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $13.UserUpdateDataRequest.fromBuffer(value),
            ($13.UserDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UserDeleteRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.UserDeleteRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$13.UserListFilterRequest, $13.UserListResponse>(
            'GetList',
            getList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $13.UserListFilterRequest.fromBuffer(value),
            ($13.UserListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.UserDataResponse> getByID_Pre($grpc.ServiceCall call,
      $async.Future<$13.UserGetIDRequest> request) async {
    return getByID(call, await request);
  }

  $async.Future<$13.UserDataResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$13.UserUpdateDataRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$1.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$13.UserDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$13.UserListResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$13.UserListFilterRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$13.UserDataResponse> getByID(
      $grpc.ServiceCall call, $13.UserGetIDRequest request);
  $async.Future<$13.UserDataResponse> update(
      $grpc.ServiceCall call, $13.UserUpdateDataRequest request);
  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $13.UserDeleteRequest request);
  $async.Future<$13.UserListResponse> getList(
      $grpc.ServiceCall call, $13.UserListFilterRequest request);
}
