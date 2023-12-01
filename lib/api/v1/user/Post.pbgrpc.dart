///
//  Generated code. Do not modify.
//  source: v1/user/Post.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Post.pb.dart' as $18;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'Post.pb.dart';

class PostControllerClient extends $grpc.Client {
  static final _$getPostByID =
      $grpc.ClientMethod<$18.PostRequest, $18.PostResponse>(
          '/server.user.PostController/GetPostByID',
          ($18.PostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $18.PostResponse.fromBuffer(value));
  static final _$getPosts = $grpc.ClientMethod<$2.Empty, $18.PostsResponse>(
      '/server.user.PostController/GetPosts',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.PostsResponse.fromBuffer(value));

  PostControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$18.PostResponse> getPostByID($18.PostRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPostByID, request, options: options);
  }

  $grpc.ResponseFuture<$18.PostsResponse> getPosts($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPosts, request, options: options);
  }
}

abstract class PostControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.PostController';

  PostControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.PostRequest, $18.PostResponse>(
        'GetPostByID',
        getPostByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.PostRequest.fromBuffer(value),
        ($18.PostResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $18.PostsResponse>(
        'GetPosts',
        getPosts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($18.PostsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.PostResponse> getPostByID_Pre(
      $grpc.ServiceCall call, $async.Future<$18.PostRequest> request) async {
    return getPostByID(call, await request);
  }

  $async.Future<$18.PostsResponse> getPosts_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getPosts(call, await request);
  }

  $async.Future<$18.PostResponse> getPostByID(
      $grpc.ServiceCall call, $18.PostRequest request);
  $async.Future<$18.PostsResponse> getPosts(
      $grpc.ServiceCall call, $2.Empty request);
}
