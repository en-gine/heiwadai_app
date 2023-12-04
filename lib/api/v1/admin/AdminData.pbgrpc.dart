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
export 'AdminData.pb.dart';

class AdminDataControllerClient extends $grpc.Client {
  static final _$update =
      $grpc.ClientMethod<$0.AdminUpdateDataRequest, $0.AdminDataResponse>(
          '/server.admin.AdminDataController/Update',
          ($0.AdminUpdateDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AdminDataResponse.fromBuffer(value));

  AdminDataControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AdminDataResponse> update(
      $0.AdminUpdateDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

abstract class AdminDataControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.admin.AdminDataController';

  AdminDataControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AdminUpdateDataRequest, $0.AdminDataResponse>(
            'Update',
            update_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AdminUpdateDataRequest.fromBuffer(value),
            ($0.AdminDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AdminDataResponse> update_Pre($grpc.ServiceCall call,
      $async.Future<$0.AdminUpdateDataRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.AdminDataResponse> update(
      $grpc.ServiceCall call, $0.AdminUpdateDataRequest request);
}
