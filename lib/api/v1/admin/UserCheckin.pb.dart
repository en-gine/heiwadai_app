///
//  Generated code. Do not modify.
//  source: v1/admin/UserCheckin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $21;
import '../shared/Pager.pb.dart' as $22;

class CheckinData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckinData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreID', protoName: 'StoreID')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreName', protoName: 'StoreName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreBranchName', protoName: 'StoreBranchName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserFirstName', protoName: 'UserFirstName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserLastName', protoName: 'UserLastName')
    ..aOM<$21.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckinAt', protoName: 'CheckinAt', subBuilder: $21.Timestamp.create)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsArchive', protoName: 'IsArchive')
    ..hasRequiredFields = false
  ;

  CheckinData._() : super();
  factory CheckinData({
    $core.String? iD,
    $core.String? storeID,
    $core.String? storeName,
    $core.String? storeBranchName,
    $core.String? userID,
    $core.String? userFirstName,
    $core.String? userLastName,
    $21.Timestamp? checkinAt,
    $core.bool? isArchive,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (storeID != null) {
      _result.storeID = storeID;
    }
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (storeBranchName != null) {
      _result.storeBranchName = storeBranchName;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (userFirstName != null) {
      _result.userFirstName = userFirstName;
    }
    if (userLastName != null) {
      _result.userLastName = userLastName;
    }
    if (checkinAt != null) {
      _result.checkinAt = checkinAt;
    }
    if (isArchive != null) {
      _result.isArchive = isArchive;
    }
    return _result;
  }
  factory CheckinData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckinData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckinData clone() => CheckinData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckinData copyWith(void Function(CheckinData) updates) => super.copyWith((message) => updates(message as CheckinData)) as CheckinData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckinData create() => CheckinData._();
  CheckinData createEmptyInstance() => create();
  static $pb.PbList<CheckinData> createRepeated() => $pb.PbList<CheckinData>();
  @$core.pragma('dart2js:noInline')
  static CheckinData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckinData>(create);
  static CheckinData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeID => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreID() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get storeName => $_getSZ(2);
  @$pb.TagNumber(3)
  set storeName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStoreName() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeBranchName => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeBranchName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreBranchName() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreBranchName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userID => $_getSZ(4);
  @$pb.TagNumber(5)
  set userID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserID() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserID() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userFirstName => $_getSZ(5);
  @$pb.TagNumber(6)
  set userFirstName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserFirstName() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserFirstName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get userLastName => $_getSZ(6);
  @$pb.TagNumber(7)
  set userLastName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserLastName() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserLastName() => clearField(7);

  @$pb.TagNumber(8)
  $21.Timestamp get checkinAt => $_getN(7);
  @$pb.TagNumber(8)
  set checkinAt($21.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCheckinAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCheckinAt() => clearField(8);
  @$pb.TagNumber(8)
  $21.Timestamp ensureCheckinAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get isArchive => $_getBF(8);
  @$pb.TagNumber(9)
  set isArchive($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsArchive() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsArchive() => clearField(9);
}

class CheckinsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckinsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<CheckinData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Checkins', $pb.PbFieldType.PM, protoName: 'Checkins', subBuilder: CheckinData.create)
    ..aOM<$22.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $22.PageResponse.create)
    ..hasRequiredFields = false
  ;

  CheckinsResponse._() : super();
  factory CheckinsResponse({
    $core.Iterable<CheckinData>? checkins,
    $22.PageResponse? pageResponse,
  }) {
    final _result = create();
    if (checkins != null) {
      _result.checkins.addAll(checkins);
    }
    if (pageResponse != null) {
      _result.pageResponse = pageResponse;
    }
    return _result;
  }
  factory CheckinsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckinsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckinsResponse clone() => CheckinsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckinsResponse copyWith(void Function(CheckinsResponse) updates) => super.copyWith((message) => updates(message as CheckinsResponse)) as CheckinsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckinsResponse create() => CheckinsResponse._();
  CheckinsResponse createEmptyInstance() => create();
  static $pb.PbList<CheckinsResponse> createRepeated() => $pb.PbList<CheckinsResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckinsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckinsResponse>(create);
  static CheckinsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CheckinData> get checkins => $_getList(0);

  @$pb.TagNumber(2)
  $22.PageResponse get pageResponse => $_getN(1);
  @$pb.TagNumber(2)
  set pageResponse($22.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageResponse() => clearField(2);
  @$pb.TagNumber(2)
  $22.PageResponse ensurePageResponse() => $_ensure(1);
}

class GetRecentAllCheckinRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecentAllCheckinRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetRecentAllCheckinRequest._() : super();
  factory GetRecentAllCheckinRequest({
    $core.int? limit,
  }) {
    final _result = create();
    if (limit != null) {
      _result.limit = limit;
    }
    return _result;
  }
  factory GetRecentAllCheckinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentAllCheckinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentAllCheckinRequest clone() => GetRecentAllCheckinRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentAllCheckinRequest copyWith(void Function(GetRecentAllCheckinRequest) updates) => super.copyWith((message) => updates(message as GetRecentAllCheckinRequest)) as GetRecentAllCheckinRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecentAllCheckinRequest create() => GetRecentAllCheckinRequest._();
  GetRecentAllCheckinRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecentAllCheckinRequest> createRepeated() => $pb.PbList<GetRecentAllCheckinRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecentAllCheckinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentAllCheckinRequest>(create);
  static GetRecentAllCheckinRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);
}

class UserCheckinRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCheckinRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<$22.Pager>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $22.Pager.create)
    ..hasRequiredFields = false
  ;

  UserCheckinRequest._() : super();
  factory UserCheckinRequest({
    $core.String? userID,
    $22.Pager? pager,
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
  factory UserCheckinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCheckinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCheckinRequest clone() => UserCheckinRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCheckinRequest copyWith(void Function(UserCheckinRequest) updates) => super.copyWith((message) => updates(message as UserCheckinRequest)) as UserCheckinRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCheckinRequest create() => UserCheckinRequest._();
  UserCheckinRequest createEmptyInstance() => create();
  static $pb.PbList<UserCheckinRequest> createRepeated() => $pb.PbList<UserCheckinRequest>();
  @$core.pragma('dart2js:noInline')
  static UserCheckinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCheckinRequest>(create);
  static UserCheckinRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $22.Pager get pager => $_getN(1);
  @$pb.TagNumber(2)
  set pager($22.Pager v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPager() => $_has(1);
  @$pb.TagNumber(2)
  void clearPager() => clearField(2);
  @$pb.TagNumber(2)
  $22.Pager ensurePager() => $_ensure(1);
}

