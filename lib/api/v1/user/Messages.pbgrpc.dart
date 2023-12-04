///
//  Generated code. Do not modify.
//  source: v1/user/Messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Messages.pb.dart' as $15;
export 'Messages.pb.dart';

class MessageControllerClient extends $grpc.Client {
  static final _$getMessagesAfter =
      $grpc.ClientMethod<$15.MessageRequest, $15.MessagesResponse>(
          '/server.user.MessageController/GetMessagesAfter',
          ($15.MessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $15.MessagesResponse.fromBuffer(value));

  MessageControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$15.MessagesResponse> getMessagesAfter(
      $15.MessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMessagesAfter, request, options: options);
  }
}

abstract class MessageControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.MessageController';

  MessageControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.MessageRequest, $15.MessagesResponse>(
        'GetMessagesAfter',
        getMessagesAfter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.MessageRequest.fromBuffer(value),
        ($15.MessagesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.MessagesResponse> getMessagesAfter_Pre(
      $grpc.ServiceCall call, $async.Future<$15.MessageRequest> request) async {
    return getMessagesAfter(call, await request);
  }

  $async.Future<$15.MessagesResponse> getMessagesAfter(
      $grpc.ServiceCall call, $15.MessageRequest request);
}
