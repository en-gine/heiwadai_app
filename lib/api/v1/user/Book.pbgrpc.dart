///
//  Generated code. Do not modify.
//  source: v1/user/Book.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../google/protobuf/empty.pb.dart' as $1;
import 'Book.pb.dart' as $18;
export 'Book.pb.dart';

class BookControllerClient extends $grpc.Client {
  static final _$getMyBook = $grpc.ClientMethod<$1.Empty, $18.BooksResponse>(
      '/server.user.BookController/GetMyBook',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.BooksResponse.fromBuffer(value));
  static final _$getBookByID =
      $grpc.ClientMethod<$18.BookIDRequest, $18.BookResponse>(
          '/server.user.BookController/GetBookByID',
          ($18.BookIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $18.BookResponse.fromBuffer(value));
  static final _$cancel = $grpc.ClientMethod<$18.BookIDRequest, $1.Empty>(
      '/server.user.BookController/Cancel',
      ($18.BookIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$reserve = $grpc.ClientMethod<$18.ReserveRequest, $1.Empty>(
      '/server.user.BookController/Reserve',
      ($18.ReserveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  BookControllerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$18.BooksResponse> getMyBook($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyBook, request, options: options);
  }

  $grpc.ResponseFuture<$18.BookResponse> getBookByID($18.BookIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBookByID, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> cancel($18.BookIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> reserve($18.ReserveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reserve, request, options: options);
  }
}

abstract class BookControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'server.user.BookController';

  BookControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $18.BooksResponse>(
        'GetMyBook',
        getMyBook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($18.BooksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.BookIDRequest, $18.BookResponse>(
        'GetBookByID',
        getBookByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.BookIDRequest.fromBuffer(value),
        ($18.BookResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.BookIDRequest, $1.Empty>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.BookIDRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ReserveRequest, $1.Empty>(
        'Reserve',
        reserve_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ReserveRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$18.BooksResponse> getMyBook_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getMyBook(call, await request);
  }

  $async.Future<$18.BookResponse> getBookByID_Pre(
      $grpc.ServiceCall call, $async.Future<$18.BookIDRequest> request) async {
    return getBookByID(call, await request);
  }

  $async.Future<$1.Empty> cancel_Pre(
      $grpc.ServiceCall call, $async.Future<$18.BookIDRequest> request) async {
    return cancel(call, await request);
  }

  $async.Future<$1.Empty> reserve_Pre(
      $grpc.ServiceCall call, $async.Future<$18.ReserveRequest> request) async {
    return reserve(call, await request);
  }

  $async.Future<$18.BooksResponse> getMyBook(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$18.BookResponse> getBookByID(
      $grpc.ServiceCall call, $18.BookIDRequest request);
  $async.Future<$1.Empty> cancel(
      $grpc.ServiceCall call, $18.BookIDRequest request);
  $async.Future<$1.Empty> reserve(
      $grpc.ServiceCall call, $18.ReserveRequest request);
}
