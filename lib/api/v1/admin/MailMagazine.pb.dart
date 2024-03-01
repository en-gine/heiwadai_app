///
//  Generated code. Do not modify.
//  source: v1/admin/MailMagazine.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../shared/Pager.pb.dart' as $6;
import '../../google/protobuf/timestamp.pb.dart' as $25;

import '../shared/Prefecture.pbenum.dart' as $26;
import 'MailMagazine.pbenum.dart';

export 'MailMagazine.pbenum.dart';

class GetMailMagazineListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMailMagazineListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<$6.Pager>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $6.Pager.create)
    ..hasRequiredFields = false
  ;

  GetMailMagazineListRequest._() : super();
  factory GetMailMagazineListRequest({
    $6.Pager? pager,
  }) {
    final _result = create();
    if (pager != null) {
      _result.pager = pager;
    }
    return _result;
  }
  factory GetMailMagazineListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMailMagazineListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMailMagazineListRequest clone() => GetMailMagazineListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMailMagazineListRequest copyWith(void Function(GetMailMagazineListRequest) updates) => super.copyWith((message) => updates(message as GetMailMagazineListRequest)) as GetMailMagazineListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMailMagazineListRequest create() => GetMailMagazineListRequest._();
  GetMailMagazineListRequest createEmptyInstance() => create();
  static $pb.PbList<GetMailMagazineListRequest> createRepeated() => $pb.PbList<GetMailMagazineListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMailMagazineListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMailMagazineListRequest>(create);
  static GetMailMagazineListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Pager get pager => $_getN(0);
  @$pb.TagNumber(1)
  set pager($6.Pager v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPager() => $_has(0);
  @$pb.TagNumber(1)
  void clearPager() => clearField(1);
  @$pb.TagNumber(1)
  $6.Pager ensurePager() => $_ensure(0);
}

class MailMagazineIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MailMagazineIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  MailMagazineIDRequest._() : super();
  factory MailMagazineIDRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory MailMagazineIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MailMagazineIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MailMagazineIDRequest clone() => MailMagazineIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MailMagazineIDRequest copyWith(void Function(MailMagazineIDRequest) updates) => super.copyWith((message) => updates(message as MailMagazineIDRequest)) as MailMagazineIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MailMagazineIDRequest create() => MailMagazineIDRequest._();
  MailMagazineIDRequest createEmptyInstance() => create();
  static $pb.PbList<MailMagazineIDRequest> createRepeated() => $pb.PbList<MailMagazineIDRequest>();
  @$core.pragma('dart2js:noInline')
  static MailMagazineIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MailMagazineIDRequest>(create);
  static MailMagazineIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class MailMagazine extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MailMagazine', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AuthorID', protoName: 'AuthorID')
    ..pc<$26.Prefecture>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TargetPrefecture', $pb.PbFieldType.KE, protoName: 'TargetPrefecture', valueOf: $26.Prefecture.valueOf, enumValues: $26.Prefecture.values, defaultEnumValue: $26.Prefecture.Unspecified)
    ..e<MailMagazineStatus>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MailMagazineStatus', $pb.PbFieldType.OE, protoName: 'MailMagazineStatus', defaultOrMaker: MailMagazineStatus.MailMagazineDraft, valueOf: MailMagazineStatus.valueOf, enumValues: MailMagazineStatus.values)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnsentCount', $pb.PbFieldType.O3, protoName: 'UnsentCount')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SentCount', $pb.PbFieldType.O3, protoName: 'SentCount')
    ..aOM<$25.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SentAt', protoName: 'SentAt', subBuilder: $25.Timestamp.create)
    ..aOM<$25.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CreateAt', protoName: 'CreateAt', subBuilder: $25.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MailMagazine._() : super();
  factory MailMagazine({
    $core.String? iD,
    $core.String? title,
    $core.String? content,
    $core.String? authorID,
    $core.Iterable<$26.Prefecture>? targetPrefecture,
    MailMagazineStatus? mailMagazineStatus,
    $core.int? unsentCount,
    $core.int? sentCount,
    $25.Timestamp? sentAt,
    $25.Timestamp? createAt,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (authorID != null) {
      _result.authorID = authorID;
    }
    if (targetPrefecture != null) {
      _result.targetPrefecture.addAll(targetPrefecture);
    }
    if (mailMagazineStatus != null) {
      _result.mailMagazineStatus = mailMagazineStatus;
    }
    if (unsentCount != null) {
      _result.unsentCount = unsentCount;
    }
    if (sentCount != null) {
      _result.sentCount = sentCount;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    if (createAt != null) {
      _result.createAt = createAt;
    }
    return _result;
  }
  factory MailMagazine.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MailMagazine.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MailMagazine clone() => MailMagazine()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MailMagazine copyWith(void Function(MailMagazine) updates) => super.copyWith((message) => updates(message as MailMagazine)) as MailMagazine; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MailMagazine create() => MailMagazine._();
  MailMagazine createEmptyInstance() => create();
  static $pb.PbList<MailMagazine> createRepeated() => $pb.PbList<MailMagazine>();
  @$core.pragma('dart2js:noInline')
  static MailMagazine getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MailMagazine>(create);
  static MailMagazine? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get authorID => $_getSZ(3);
  @$pb.TagNumber(4)
  set authorID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthorID() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthorID() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$26.Prefecture> get targetPrefecture => $_getList(4);

  @$pb.TagNumber(6)
  MailMagazineStatus get mailMagazineStatus => $_getN(5);
  @$pb.TagNumber(6)
  set mailMagazineStatus(MailMagazineStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMailMagazineStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearMailMagazineStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get unsentCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set unsentCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUnsentCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearUnsentCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get sentCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set sentCount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSentCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearSentCount() => clearField(8);

  @$pb.TagNumber(9)
  $25.Timestamp get sentAt => $_getN(8);
  @$pb.TagNumber(9)
  set sentAt($25.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSentAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearSentAt() => clearField(9);
  @$pb.TagNumber(9)
  $25.Timestamp ensureSentAt() => $_ensure(8);

  @$pb.TagNumber(10)
  $25.Timestamp get createAt => $_getN(9);
  @$pb.TagNumber(10)
  set createAt($25.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreateAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreateAt() => clearField(10);
  @$pb.TagNumber(10)
  $25.Timestamp ensureCreateAt() => $_ensure(9);
}

class MailMagazinesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MailMagazinesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<MailMagazine>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MailMagazines', $pb.PbFieldType.PM, protoName: 'MailMagazines', subBuilder: MailMagazine.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  MailMagazinesResponse._() : super();
  factory MailMagazinesResponse({
    $core.Iterable<MailMagazine>? mailMagazines,
    $6.PageResponse? pageResponse,
  }) {
    final _result = create();
    if (mailMagazines != null) {
      _result.mailMagazines.addAll(mailMagazines);
    }
    if (pageResponse != null) {
      _result.pageResponse = pageResponse;
    }
    return _result;
  }
  factory MailMagazinesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MailMagazinesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MailMagazinesResponse clone() => MailMagazinesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MailMagazinesResponse copyWith(void Function(MailMagazinesResponse) updates) => super.copyWith((message) => updates(message as MailMagazinesResponse)) as MailMagazinesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MailMagazinesResponse create() => MailMagazinesResponse._();
  MailMagazinesResponse createEmptyInstance() => create();
  static $pb.PbList<MailMagazinesResponse> createRepeated() => $pb.PbList<MailMagazinesResponse>();
  @$core.pragma('dart2js:noInline')
  static MailMagazinesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MailMagazinesResponse>(create);
  static MailMagazinesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MailMagazine> get mailMagazines => $_getList(0);

  @$pb.TagNumber(2)
  $6.PageResponse get pageResponse => $_getN(1);
  @$pb.TagNumber(2)
  set pageResponse($6.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageResponse() => clearField(2);
  @$pb.TagNumber(2)
  $6.PageResponse ensurePageResponse() => $_ensure(1);
}

class SaveDraftRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveDraftRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..pc<$26.Prefecture>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TargetPrefectures', $pb.PbFieldType.KE, protoName: 'TargetPrefectures', valueOf: $26.Prefecture.valueOf, enumValues: $26.Prefecture.values, defaultEnumValue: $26.Prefecture.Unspecified)
    ..hasRequiredFields = false
  ;

  SaveDraftRequest._() : super();
  factory SaveDraftRequest({
    $core.String? title,
    $core.String? content,
    $core.Iterable<$26.Prefecture>? targetPrefectures,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (targetPrefectures != null) {
      _result.targetPrefectures.addAll(targetPrefectures);
    }
    return _result;
  }
  factory SaveDraftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveDraftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveDraftRequest clone() => SaveDraftRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveDraftRequest copyWith(void Function(SaveDraftRequest) updates) => super.copyWith((message) => updates(message as SaveDraftRequest)) as SaveDraftRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveDraftRequest create() => SaveDraftRequest._();
  SaveDraftRequest createEmptyInstance() => create();
  static $pb.PbList<SaveDraftRequest> createRepeated() => $pb.PbList<SaveDraftRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveDraftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveDraftRequest>(create);
  static SaveDraftRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$26.Prefecture> get targetPrefectures => $_getList(2);
}

class UpdateMailMagazineRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateMailMagazineRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..pc<$26.Prefecture>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TargetPrefectures', $pb.PbFieldType.KE, protoName: 'TargetPrefectures', valueOf: $26.Prefecture.valueOf, enumValues: $26.Prefecture.values, defaultEnumValue: $26.Prefecture.Unspecified)
    ..hasRequiredFields = false
  ;

  UpdateMailMagazineRequest._() : super();
  factory UpdateMailMagazineRequest({
    $core.String? iD,
    $core.String? title,
    $core.String? content,
    $core.Iterable<$26.Prefecture>? targetPrefectures,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (targetPrefectures != null) {
      _result.targetPrefectures.addAll(targetPrefectures);
    }
    return _result;
  }
  factory UpdateMailMagazineRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMailMagazineRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMailMagazineRequest clone() => UpdateMailMagazineRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMailMagazineRequest copyWith(void Function(UpdateMailMagazineRequest) updates) => super.copyWith((message) => updates(message as UpdateMailMagazineRequest)) as UpdateMailMagazineRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateMailMagazineRequest create() => UpdateMailMagazineRequest._();
  UpdateMailMagazineRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateMailMagazineRequest> createRepeated() => $pb.PbList<UpdateMailMagazineRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateMailMagazineRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMailMagazineRequest>(create);
  static UpdateMailMagazineRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(5)
  $core.List<$26.Prefecture> get targetPrefectures => $_getList(3);
}

class DeleteMailMagazineRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteMailMagazineRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  DeleteMailMagazineRequest._() : super();
  factory DeleteMailMagazineRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory DeleteMailMagazineRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteMailMagazineRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteMailMagazineRequest clone() => DeleteMailMagazineRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteMailMagazineRequest copyWith(void Function(DeleteMailMagazineRequest) updates) => super.copyWith((message) => updates(message as DeleteMailMagazineRequest)) as DeleteMailMagazineRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteMailMagazineRequest create() => DeleteMailMagazineRequest._();
  DeleteMailMagazineRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteMailMagazineRequest> createRepeated() => $pb.PbList<DeleteMailMagazineRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteMailMagazineRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteMailMagazineRequest>(create);
  static DeleteMailMagazineRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class SendMailMagazineRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendMailMagazineRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  SendMailMagazineRequest._() : super();
  factory SendMailMagazineRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory SendMailMagazineRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMailMagazineRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendMailMagazineRequest clone() => SendMailMagazineRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendMailMagazineRequest copyWith(void Function(SendMailMagazineRequest) updates) => super.copyWith((message) => updates(message as SendMailMagazineRequest)) as SendMailMagazineRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMailMagazineRequest create() => SendMailMagazineRequest._();
  SendMailMagazineRequest createEmptyInstance() => create();
  static $pb.PbList<SendMailMagazineRequest> createRepeated() => $pb.PbList<SendMailMagazineRequest>();
  @$core.pragma('dart2js:noInline')
  static SendMailMagazineRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMailMagazineRequest>(create);
  static SendMailMagazineRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class UserLogListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserLogListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<$6.Pager>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $6.Pager.create)
    ..hasRequiredFields = false
  ;

  UserLogListRequest._() : super();
  factory UserLogListRequest({
    $core.String? userID,
    $6.Pager? pager,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    if (pager != null) {
      _result.pager = pager;
    }
    return _result;
  }
  factory UserLogListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLogListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLogListRequest clone() => UserLogListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLogListRequest copyWith(void Function(UserLogListRequest) updates) => super.copyWith((message) => updates(message as UserLogListRequest)) as UserLogListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserLogListRequest create() => UserLogListRequest._();
  UserLogListRequest createEmptyInstance() => create();
  static $pb.PbList<UserLogListRequest> createRepeated() => $pb.PbList<UserLogListRequest>();
  @$core.pragma('dart2js:noInline')
  static UserLogListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLogListRequest>(create);
  static UserLogListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $6.Pager get pager => $_getN(1);
  @$pb.TagNumber(2)
  set pager($6.Pager v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPager() => $_has(1);
  @$pb.TagNumber(2)
  void clearPager() => clearField(2);
  @$pb.TagNumber(2)
  $6.Pager ensurePager() => $_ensure(1);
}

class UserMailMagazineLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserMailMagazineLog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MailMagazineID', protoName: 'MailMagazineID')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOM<$25.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SentAt', protoName: 'SentAt', subBuilder: $25.Timestamp.create)
    ..hasRequiredFields = false
  ;

  UserMailMagazineLog._() : super();
  factory UserMailMagazineLog({
    $core.String? iD,
    $core.String? mailMagazineID,
    $core.String? userID,
    $core.String? title,
    $25.Timestamp? sentAt,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (mailMagazineID != null) {
      _result.mailMagazineID = mailMagazineID;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (title != null) {
      _result.title = title;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    return _result;
  }
  factory UserMailMagazineLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserMailMagazineLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserMailMagazineLog clone() => UserMailMagazineLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserMailMagazineLog copyWith(void Function(UserMailMagazineLog) updates) => super.copyWith((message) => updates(message as UserMailMagazineLog)) as UserMailMagazineLog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserMailMagazineLog create() => UserMailMagazineLog._();
  UserMailMagazineLog createEmptyInstance() => create();
  static $pb.PbList<UserMailMagazineLog> createRepeated() => $pb.PbList<UserMailMagazineLog>();
  @$core.pragma('dart2js:noInline')
  static UserMailMagazineLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserMailMagazineLog>(create);
  static UserMailMagazineLog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mailMagazineID => $_getSZ(1);
  @$pb.TagNumber(2)
  set mailMagazineID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMailMagazineID() => $_has(1);
  @$pb.TagNumber(2)
  void clearMailMagazineID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userID => $_getSZ(2);
  @$pb.TagNumber(3)
  set userID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserID() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $25.Timestamp get sentAt => $_getN(4);
  @$pb.TagNumber(5)
  set sentAt($25.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSentAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearSentAt() => clearField(5);
  @$pb.TagNumber(5)
  $25.Timestamp ensureSentAt() => $_ensure(4);
}

class UserMailMagazineLogResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserMailMagazineLogResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<UserMailMagazineLog>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserLogs', $pb.PbFieldType.PM, protoName: 'UserLogs', subBuilder: UserMailMagazineLog.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  UserMailMagazineLogResponse._() : super();
  factory UserMailMagazineLogResponse({
    $core.Iterable<UserMailMagazineLog>? userLogs,
    $6.PageResponse? pageResponse,
  }) {
    final _result = create();
    if (userLogs != null) {
      _result.userLogs.addAll(userLogs);
    }
    if (pageResponse != null) {
      _result.pageResponse = pageResponse;
    }
    return _result;
  }
  factory UserMailMagazineLogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserMailMagazineLogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserMailMagazineLogResponse clone() => UserMailMagazineLogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserMailMagazineLogResponse copyWith(void Function(UserMailMagazineLogResponse) updates) => super.copyWith((message) => updates(message as UserMailMagazineLogResponse)) as UserMailMagazineLogResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserMailMagazineLogResponse create() => UserMailMagazineLogResponse._();
  UserMailMagazineLogResponse createEmptyInstance() => create();
  static $pb.PbList<UserMailMagazineLogResponse> createRepeated() => $pb.PbList<UserMailMagazineLogResponse>();
  @$core.pragma('dart2js:noInline')
  static UserMailMagazineLogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserMailMagazineLogResponse>(create);
  static UserMailMagazineLogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserMailMagazineLog> get userLogs => $_getList(0);

  @$pb.TagNumber(2)
  $6.PageResponse get pageResponse => $_getN(1);
  @$pb.TagNumber(2)
  set pageResponse($6.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageResponse() => clearField(2);
  @$pb.TagNumber(2)
  $6.PageResponse ensurePageResponse() => $_ensure(1);
}

