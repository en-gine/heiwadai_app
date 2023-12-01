///
//  Generated code. Do not modify.
//  source: v1/user/UserReport.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserReport.pb.dart' as $20;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'UserReport.pb.dart';

class UserReportControllerClient extends $grpc.Client {
  static final _$send = $grpc.ClientMethod<$20.UserReportRequest, $2.Empty>(
      '/server.user.UserReportController/Send',
      ($20.UserReportRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  UserReportControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> send($20.UserReportRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class UserReportControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.UserReportController';

  UserReportControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.UserReportRequest, $2.Empty>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $20.UserReportRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> send_Pre($grpc.ServiceCall call,
      $async.Future<$20.UserReportRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$2.Empty> send(
      $grpc.ServiceCall call, $20.UserReportRequest request);
}
