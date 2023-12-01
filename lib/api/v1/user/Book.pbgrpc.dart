///
//  Generated code. Do not modify.
//  source: v1/user/Book.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'Book.pb.dart' as $13;
export 'Book.pb.dart';

class BookControllerClient extends $grpc.Client {
  static final _$getMyBook = $grpc.ClientMethod<$2.Empty, $13.BooksResponse>(
      '/server.user.BookController/GetMyBook',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.BooksResponse.fromBuffer(value));
  static final _$getBookByID =
      $grpc.ClientMethod<$13.BookIDRequest, $13.BookResponse>(
          '/server.user.BookController/GetBookByID',
          ($13.BookIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $13.BookResponse.fromBuffer(value));
  static final _$cancel = $grpc.ClientMethod<$13.BookIDRequest, $2.Empty>(
      '/server.user.BookController/Cancel',
      ($13.BookIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$reserve = $grpc.ClientMethod<$13.ReserveRequest, $2.Empty>(
      '/server.user.BookController/Reserve',
      ($13.ReserveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  BookControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$13.BooksResponse> getMyBook($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyBook, request, options: options);
  }

  $grpc.ResponseFuture<$13.BookResponse> getBookByID($13.BookIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBookByID, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> cancel($13.BookIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> reserve($13.ReserveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reserve, request, options: options);
  }
}

abstract class BookControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.BookController';

  BookControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty, $13.BooksResponse>(
        'GetMyBook',
        getMyBook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($13.BooksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.BookIDRequest, $13.BookResponse>(
        'GetBookByID',
        getBookByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.BookIDRequest.fromBuffer(value),
        ($13.BookResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.BookIDRequest, $2.Empty>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.BookIDRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ReserveRequest, $2.Empty>(
        'Reserve',
        reserve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ReserveRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$13.BooksResponse> getMyBook_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getMyBook(call, await request);
  }

  $async.Future<$13.BookResponse> getBookByID_Pre(
      $grpc.ServiceCall call, $async.Future<$13.BookIDRequest> request) async {
    return getBookByID(call, await request);
  }

  $async.Future<$2.Empty> cancel_Pre(
      $grpc.ServiceCall call, $async.Future<$13.BookIDRequest> request) async {
    return cancel(call, await request);
  }

  $async.Future<$2.Empty> reserve_Pre(
      $grpc.ServiceCall call, $async.Future<$13.ReserveRequest> request) async {
    return reserve(call, await request);
  }

  $async.Future<$13.BooksResponse> getMyBook(
      $grpc.ServiceCall call, $2.Empty request);
  $async.Future<$13.BookResponse> getBookByID(
      $grpc.ServiceCall call, $13.BookIDRequest request);
  $async.Future<$2.Empty> cancel(
      $grpc.ServiceCall call, $13.BookIDRequest request);
  $async.Future<$2.Empty> reserve(
      $grpc.ServiceCall call, $13.ReserveRequest request);
}
