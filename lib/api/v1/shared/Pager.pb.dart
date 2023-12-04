///
//  Generated code. Do not modify.
//  source: v1/shared/Pager.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Pager extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pager', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.shared'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrentPage', $pb.PbFieldType.OU3, protoName: 'CurrentPage')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PerPage', $pb.PbFieldType.OU3, protoName: 'PerPage')
    ..hasRequiredFields = false
  ;

  Pager._() : super();
  factory Pager({
    $core.int? currentPage,
    $core.int? perPage,
  }) {
    final _result = create();
    if (currentPage != null) {
      _result.currentPage = currentPage;
    }
    if (perPage != null) {
      _result.perPage = perPage;
    }
    return _result;
  }
  factory Pager.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pager.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pager clone() => Pager()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pager copyWith(void Function(Pager) updates) => super.copyWith((message) => updates(message as Pager)) as Pager; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pager create() => Pager._();
  Pager createEmptyInstance() => create();
  static $pb.PbList<Pager> createRepeated() => $pb.PbList<Pager>();
  @$core.pragma('dart2js:noInline')
  static Pager getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pager>(create);
  static Pager? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get currentPage => $_getIZ(0);
  @$pb.TagNumber(1)
  set currentPage($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get perPage => $_getIZ(1);
  @$pb.TagNumber(2)
  set perPage($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPerPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPerPage() => clearField(2);
}

class PageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PageResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.shared'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalCount', $pb.PbFieldType.OU3, protoName: 'TotalCount')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalPage', $pb.PbFieldType.OU3, protoName: 'TotalPage')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrentPage', $pb.PbFieldType.OU3, protoName: 'CurrentPage')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PerPage', $pb.PbFieldType.OU3, protoName: 'PerPage')
    ..hasRequiredFields = false
  ;

  PageResponse._() : super();
  factory PageResponse({
    $core.int? totalCount,
    $core.int? totalPage,
    $core.int? currentPage,
    $core.int? perPage,
  }) {
    final _result = create();
    if (totalCount != null) {
      _result.totalCount = totalCount;
    }
    if (totalPage != null) {
      _result.totalPage = totalPage;
    }
    if (currentPage != null) {
      _result.currentPage = currentPage;
    }
    if (perPage != null) {
      _result.perPage = perPage;
    }
    return _result;
  }
  factory PageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PageResponse clone() => PageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PageResponse copyWith(void Function(PageResponse) updates) => super.copyWith((message) => updates(message as PageResponse)) as PageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PageResponse create() => PageResponse._();
  PageResponse createEmptyInstance() => create();
  static $pb.PbList<PageResponse> createRepeated() => $pb.PbList<PageResponse>();
  @$core.pragma('dart2js:noInline')
  static PageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PageResponse>(create);
  static PageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalCount($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalPage => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalPage($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalPage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentPage($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentPage() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get perPage => $_getIZ(3);
  @$pb.TagNumber(4)
  set perPage($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPerPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPerPage() => clearField(4);
}

