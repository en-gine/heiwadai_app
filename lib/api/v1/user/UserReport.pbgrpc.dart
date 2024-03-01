///
//  Generated code. Do not modify.
//  source: v1/user/UserReport.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserReport.pb.dart' as $24;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'UserReport.pb.dart';

class UserReportControllerClient extends $grpc.Client {
  static final _$send = $grpc.ClientMethod<$24.UserReportRequest, $1.Empty>(
      '/server.user.UserReportController/Send',
      ($24.UserReportRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  UserReportControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> send($24.UserReportRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class UserReportControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.UserReportController';

  UserReportControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$24.UserReportRequest, $1.Empty>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.UserReportRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> send_Pre($grpc.ServiceCall call,
      $async.Future<$24.UserReportRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$1.Empty> send(
      $grpc.ServiceCall call, $24.UserReportRequest request);
}
