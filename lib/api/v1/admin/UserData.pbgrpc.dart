///
//  Generated code. Do not modify.
//  source: v1/admin/UserData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserData.pb.dart' as $11;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'UserData.pb.dart';

class UserDataControllerClient extends $grpc.Client {
  static final _$update =
      $grpc.ClientMethod<$11.UserUpdateDataRequest, $11.UserDataResponse>(
          '/server.admin.UserDataController/Update',
          ($11.UserUpdateDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.UserDataResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$11.UserDeleteRequest, $2.Empty>(
      '/server.admin.UserDataController/Delete',
      ($11.UserDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$getList =
      $grpc.ClientMethod<$11.UserListFilterRequest, $11.UserListResponse>(
          '/server.admin.UserDataController/GetList',
          ($11.UserListFilterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.UserListResponse.fromBuffer(value));

  UserDataControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.UserDataResponse> update(
      $11.UserUpdateDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> delete($11.UserDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$11.UserListResponse> getList(
      $11.UserListFilterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getList, request, options: options);
  }
}

abstract class UserDataControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.UserDataController';

  UserDataControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$11.UserUpdateDataRequest, $11.UserDataResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $11.UserUpdateDataRequest.fromBuffer(value),
            ($11.UserDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UserDeleteRequest, $2.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.UserDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$11.UserListFilterRequest, $11.UserListResponse>(
            'GetList',
            getList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $11.UserListFilterRequest.fromBuffer(value),
            ($11.UserListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.UserDataResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$11.UserUpdateDataRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$2.Empty> delete_Pre($grpc.ServiceCall call,
      $async.Future<$11.UserDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$11.UserListResponse> getList_Pre($grpc.ServiceCall call,
      $async.Future<$11.UserListFilterRequest> request) async {
    return getList(call, await request);
  }

  $async.Future<$11.UserDataResponse> update(
      $grpc.ServiceCall call, $11.UserUpdateDataRequest request);
  $async.Future<$2.Empty> delete(
      $grpc.ServiceCall call, $11.UserDeleteRequest request);
  $async.Future<$11.UserListResponse> getList(
      $grpc.ServiceCall call, $11.UserListFilterRequest request);
}
