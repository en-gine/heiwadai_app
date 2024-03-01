///
//  Generated code. Do not modify.
//  source: v1/user/Post.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $1;
import 'Post.pb.dart' as $22;
export 'Post.pb.dart';

class PostControllerClient extends $grpc.Client {
  static final _$getPosts = $grpc.ClientMethod<$1.Empty, $22.PostsResponse>(
      '/server.user.PostController/GetPosts',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.PostsResponse.fromBuffer(value));
  static final _$getPostByID =
      $grpc.ClientMethod<$22.PostRequest, $22.PostResponse>(
          '/server.user.PostController/GetPostByID',
          ($22.PostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $22.PostResponse.fromBuffer(value));

  PostControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$22.PostsResponse> getPosts($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPosts, request, options: options);
  }

  $grpc.ResponseFuture<$22.PostResponse> getPostByID($22.PostRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPostByID, request, options: options);
  }
}

abstract class PostControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.PostController';

  PostControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $22.PostsResponse>(
        'GetPosts',
        getPosts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($22.PostsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.PostRequest, $22.PostResponse>(
        'GetPostByID',
        getPostByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.PostRequest.fromBuffer(value),
        ($22.PostResponse value) => value.writeToBuffer()));
  }

  $async.Future<$22.PostsResponse> getPosts_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getPosts(call, await request);
  }

  $async.Future<$22.PostResponse> getPostByID_Pre(
      $grpc.ServiceCall call, $async.Future<$22.PostRequest> request) async {
    return getPostByID(call, await request);
  }

  $async.Future<$22.PostsResponse> getPosts(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$22.PostResponse> getPostByID(
      $grpc.ServiceCall call, $22.PostRequest request);
}
