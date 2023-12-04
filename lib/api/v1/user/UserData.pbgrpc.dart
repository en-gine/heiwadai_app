///
//  Generated code. Do not modify.
//  source: v1/user/UserData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserData.pb.dart' as $9;
export 'UserData.pb.dart';

class UserDataControllerClient extends $grpc.Client {
  static final _$update =
      $grpc.ClientMethod<$9.UserUpdateDataRequest, $9.UserDataResponse>(
          '/server.user.UserDataController/Update',
          ($9.UserUpdateDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.UserDataResponse.fromBuffer(value));

  UserDataControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.UserDataResponse> update(
      $9.UserUpdateDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

abstract class UserDataControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.UserDataController';

  UserDataControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$9.UserUpdateDataRequest, $9.UserDataResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.UserUpdateDataRequest.fromBuffer(value),
            ($9.UserDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.UserDataResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$9.UserUpdateDataRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$9.UserDataResponse> update(
      $grpc.ServiceCall call, $9.UserUpdateDataRequest request);
}
