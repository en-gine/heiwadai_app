///
//  Generated code. Do not modify.
//  source: v1/admin/AdminData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $25;
import '../shared/Pager.pb.dart' as $6;

class AdminDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminDataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  AdminDataRequest._() : super();
  factory AdminDataRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory AdminDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminDataRequest clone() => AdminDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminDataRequest copyWith(void Function(AdminDataRequest) updates) => super.copyWith((message) => updates(message as AdminDataRequest)) as AdminDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDataRequest create() => AdminDataRequest._();
  AdminDataRequest createEmptyInstance() => create();
  static $pb.PbList<AdminDataRequest> createRepeated() => $pb.PbList<AdminDataRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDataRequest>(create);
  static AdminDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class AdminUpdateDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminUpdateDataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsActive', protoName: 'IsActive')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreID', protoName: 'StoreID')
    ..hasRequiredFields = false
  ;

  AdminUpdateDataRequest._() : super();
  factory AdminUpdateDataRequest({
    $core.String? iD,
    $core.String? name,
    $core.bool? isActive,
    $core.String? storeID,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (name != null) {
      _result.name = name;
    }
    if (isActive != null) {
      _result.isActive = isActive;
    }
    if (storeID != null) {
      _result.storeID = storeID;
    }
    return _result;
  }
  factory AdminUpdateDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminUpdateDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminUpdateDataRequest clone() => AdminUpdateDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminUpdateDataRequest copyWith(void Function(AdminUpdateDataRequest) updates) => super.copyWith((message) => updates(message as AdminUpdateDataRequest)) as AdminUpdateDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminUpdateDataRequest create() => AdminUpdateDataRequest._();
  AdminUpdateDataRequest createEmptyInstance() => create();
  static $pb.PbList<AdminUpdateDataRequest> createRepeated() => $pb.PbList<AdminUpdateDataRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminUpdateDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminUpdateDataRequest>(create);
  static AdminUpdateDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isActive => $_getBF(2);
  @$pb.TagNumber(3)
  set isActive($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsActive() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsActive() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeID => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreID() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreID() => clearField(4);
}

class AdminDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminDataResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsActive', protoName: 'IsActive')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Mail', protoName: 'Mail')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreID', protoName: 'StoreID')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsConfirmed', protoName: 'IsConfirmed')
    ..hasRequiredFields = false
  ;

  AdminDataResponse._() : super();
  factory AdminDataResponse({
    $core.String? iD,
    $core.String? name,
    $core.bool? isActive,
    $core.String? mail,
    $core.String? storeID,
    $core.bool? isConfirmed,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (name != null) {
      _result.name = name;
    }
    if (isActive != null) {
      _result.isActive = isActive;
    }
    if (mail != null) {
      _result.mail = mail;
    }
    if (storeID != null) {
      _result.storeID = storeID;
    }
    if (isConfirmed != null) {
      _result.isConfirmed = isConfirmed;
    }
    return _result;
  }
  factory AdminDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminDataResponse clone() => AdminDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminDataResponse copyWith(void Function(AdminDataResponse) updates) => super.copyWith((message) => updates(message as AdminDataResponse)) as AdminDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminDataResponse create() => AdminDataResponse._();
  AdminDataResponse createEmptyInstance() => create();
  static $pb.PbList<AdminDataResponse> createRepeated() => $pb.PbList<AdminDataResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDataResponse>(create);
  static AdminDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isActive => $_getBF(2);
  @$pb.TagNumber(3)
  set isActive($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsActive() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsActive() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mail => $_getSZ(3);
  @$pb.TagNumber(4)
  set mail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMail() => $_has(3);
  @$pb.TagNumber(4)
  void clearMail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get storeID => $_getSZ(4);
  @$pb.TagNumber(5)
  set storeID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStoreID() => $_has(4);
  @$pb.TagNumber(5)
  void clearStoreID() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isConfirmed => $_getBF(5);
  @$pb.TagNumber(6)
  set isConfirmed($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsConfirmed() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsConfirmed() => clearField(6);
}

class AdminListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AdminListRequest._() : super();
  factory AdminListRequest() => create();
  factory AdminListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminListRequest clone() => AdminListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminListRequest copyWith(void Function(AdminListRequest) updates) => super.copyWith((message) => updates(message as AdminListRequest)) as AdminListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminListRequest create() => AdminListRequest._();
  AdminListRequest createEmptyInstance() => create();
  static $pb.PbList<AdminListRequest> createRepeated() => $pb.PbList<AdminListRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminListRequest>(create);
  static AdminListRequest? _defaultInstance;
}

class AdminListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<AdminDataResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Admins', $pb.PbFieldType.PM, protoName: 'Admins', subBuilder: AdminDataResponse.create)
    ..hasRequiredFields = false
  ;

  AdminListResponse._() : super();
  factory AdminListResponse({
    $core.Iterable<AdminDataResponse>? admins,
  }) {
    final _result = create();
    if (admins != null) {
      _result.admins.addAll(admins);
    }
    return _result;
  }
  factory AdminListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminListResponse clone() => AdminListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminListResponse copyWith(void Function(AdminListResponse) updates) => super.copyWith((message) => updates(message as AdminListResponse)) as AdminListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminListResponse create() => AdminListResponse._();
  AdminListResponse createEmptyInstance() => create();
  static $pb.PbList<AdminListResponse> createRepeated() => $pb.PbList<AdminListResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminListResponse>(create);
  static AdminListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AdminDataResponse> get admins => $_getList(0);
}

class AdminLoginLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminLoginLog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<$25.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LoginAt', protoName: 'LoginAt', subBuilder: $25.Timestamp.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IP', protoName: 'IP')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserAgent', protoName: 'UserAgent')
    ..hasRequiredFields = false
  ;

  AdminLoginLog._() : super();
  factory AdminLoginLog({
    $core.String? userID,
    $25.Timestamp? loginAt,
    $core.String? iP,
    $core.String? userAgent,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    if (loginAt != null) {
      _result.loginAt = loginAt;
    }
    if (iP != null) {
      _result.iP = iP;
    }
    if (userAgent != null) {
      _result.userAgent = userAgent;
    }
    return _result;
  }
  factory AdminLoginLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminLoginLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminLoginLog clone() => AdminLoginLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminLoginLog copyWith(void Function(AdminLoginLog) updates) => super.copyWith((message) => updates(message as AdminLoginLog)) as AdminLoginLog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminLoginLog create() => AdminLoginLog._();
  AdminLoginLog createEmptyInstance() => create();
  static $pb.PbList<AdminLoginLog> createRepeated() => $pb.PbList<AdminLoginLog>();
  @$core.pragma('dart2js:noInline')
  static AdminLoginLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminLoginLog>(create);
  static AdminLoginLog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $25.Timestamp get loginAt => $_getN(1);
  @$pb.TagNumber(2)
  set loginAt($25.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoginAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoginAt() => clearField(2);
  @$pb.TagNumber(2)
  $25.Timestamp ensureLoginAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get iP => $_getSZ(2);
  @$pb.TagNumber(3)
  set iP($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIP() => $_has(2);
  @$pb.TagNumber(3)
  void clearIP() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userAgent => $_getSZ(3);
  @$pb.TagNumber(4)
  set userAgent($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserAgent() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserAgent() => clearField(4);
}

class AdminLoginLogRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminLoginLogRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<$6.Pager>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $6.Pager.create)
    ..hasRequiredFields = false
  ;

  AdminLoginLogRequest._() : super();
  factory AdminLoginLogRequest({
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
  factory AdminLoginLogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminLoginLogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminLoginLogRequest clone() => AdminLoginLogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminLoginLogRequest copyWith(void Function(AdminLoginLogRequest) updates) => super.copyWith((message) => updates(message as AdminLoginLogRequest)) as AdminLoginLogRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminLoginLogRequest create() => AdminLoginLogRequest._();
  AdminLoginLogRequest createEmptyInstance() => create();
  static $pb.PbList<AdminLoginLogRequest> createRepeated() => $pb.PbList<AdminLoginLogRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminLoginLogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminLoginLogRequest>(create);
  static AdminLoginLogRequest? _defaultInstance;

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

class AdminLoginLogListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AdminLoginLogListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<AdminLoginLog>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LoginLogs', $pb.PbFieldType.PM, protoName: 'LoginLogs', subBuilder: AdminLoginLog.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  AdminLoginLogListResponse._() : super();
  factory AdminLoginLogListResponse({
    $core.Iterable<AdminLoginLog>? loginLogs,
    $6.PageResponse? pageResponse,
  }) {
    final _result = create();
    if (loginLogs != null) {
      _result.loginLogs.addAll(loginLogs);
    }
    if (pageResponse != null) {
      _result.pageResponse = pageResponse;
    }
    return _result;
  }
  factory AdminLoginLogListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminLoginLogListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminLoginLogListResponse clone() => AdminLoginLogListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminLoginLogListResponse copyWith(void Function(AdminLoginLogListResponse) updates) => super.copyWith((message) => updates(message as AdminLoginLogListResponse)) as AdminLoginLogListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AdminLoginLogListResponse create() => AdminLoginLogListResponse._();
  AdminLoginLogListResponse createEmptyInstance() => create();
  static $pb.PbList<AdminLoginLogListResponse> createRepeated() => $pb.PbList<AdminLoginLogListResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminLoginLogListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminLoginLogListResponse>(create);
  static AdminLoginLogListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AdminLoginLog> get loginLogs => $_getList(0);

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

