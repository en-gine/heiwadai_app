///
//  Generated code. Do not modify.
//  source: v1/user/Banner.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'Banner.pb.dart' as $12;
export 'Banner.pb.dart';

class BannerControllerClient extends $grpc.Client {
  static final _$getBanner = $grpc.ClientMethod<$2.Empty, $12.BannerResponse>(
      '/server.user.BannerController/GetBanner',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.BannerResponse.fromBuffer(value));

  BannerControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$12.BannerResponse> getBanner($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBanner, request, options: options);
  }
}

abstract class BannerControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.BannerController';

  BannerControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $12.BannerResponse>(
        'GetBanner',
        getBanner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($12.BannerResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.BannerResponse> getBanner_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getBanner(call, await request);
  }

  $async.Future<$12.BannerResponse> getBanner(
      $grpc.ServiceCall call, $2.Empty request);
}
