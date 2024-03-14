///
//  Generated code. Do not modify.
//  source: v1/admin/UserData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../user/UserData.pb.dart' as $12;
import '../../google/protobuf/timestamp.pb.dart' as $25;
import '../shared/Pager.pb.dart' as $6;

import '../shared/Prefecture.pbenum.dart' as $26;

class UserUpdateDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserUpdateDataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<$12.UserUpdateDataRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $12.UserUpdateDataRequest.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InnerNote', protoName: 'InnerNote')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsBlackCustomer', protoName: 'IsBlackCustomer')
    ..hasRequiredFields = false
  ;

  UserUpdateDataRequest._() : super();
  factory UserUpdateDataRequest({
    $12.UserUpdateDataRequest? user,
    $core.String? innerNote,
    $core.bool? isBlackCustomer,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (innerNote != null) {
      _result.innerNote = innerNote;
    }
    if (isBlackCustomer != null) {
      _result.isBlackCustomer = isBlackCustomer;
    }
    return _result;
  }
  factory UserUpdateDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserUpdateDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserUpdateDataRequest clone() => UserUpdateDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserUpdateDataRequest copyWith(void Function(UserUpdateDataRequest) updates) => super.copyWith((message) => updates(message as UserUpdateDataRequest)) as UserUpdateDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserUpdateDataRequest create() => UserUpdateDataRequest._();
  UserUpdateDataRequest createEmptyInstance() => create();
  static $pb.PbList<UserUpdateDataRequest> createRepeated() => $pb.PbList<UserUpdateDataRequest>();
  @$core.pragma('dart2js:noInline')
  static UserUpdateDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserUpdateDataRequest>(create);
  static UserUpdateDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $12.UserUpdateDataRequest get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($12.UserUpdateDataRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $12.UserUpdateDataRequest ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get innerNote => $_getSZ(1);
  @$pb.TagNumber(2)
  set innerNote($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInnerNote() => $_has(1);
  @$pb.TagNumber(2)
  void clearInnerNote() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isBlackCustomer => $_getBF(2);
  @$pb.TagNumber(3)
  set isBlackCustomer($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsBlackCustomer() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsBlackCustomer() => clearField(3);
}

class UserDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserDataResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<$12.UserDataResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $12.UserDataResponse.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InnerNote', protoName: 'InnerNote')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsBlackCustomer', protoName: 'IsBlackCustomer')
    ..hasRequiredFields = false
  ;

  UserDataResponse._() : super();
  factory UserDataResponse({
    $12.UserDataResponse? user,
    $core.String? innerNote,
    $core.bool? isBlackCustomer,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (innerNote != null) {
      _result.innerNote = innerNote;
    }
    if (isBlackCustomer != null) {
      _result.isBlackCustomer = isBlackCustomer;
    }
    return _result;
  }
  factory UserDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserDataResponse clone() => UserDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserDataResponse copyWith(void Function(UserDataResponse) updates) => super.copyWith((message) => updates(message as UserDataResponse)) as UserDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserDataResponse create() => UserDataResponse._();
  UserDataResponse createEmptyInstance() => create();
  static $pb.PbList<UserDataResponse> createRepeated() => $pb.PbList<UserDataResponse>();
  @$core.pragma('dart2js:noInline')
  static UserDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDataResponse>(create);
  static UserDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.UserDataResponse get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($12.UserDataResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $12.UserDataResponse ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get innerNote => $_getSZ(1);
  @$pb.TagNumber(2)
  set innerNote($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInnerNote() => $_has(1);
  @$pb.TagNumber(2)
  void clearInnerNote() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isBlackCustomer => $_getBF(2);
  @$pb.TagNumber(3)
  set isBlackCustomer($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsBlackCustomer() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsBlackCustomer() => clearField(3);
}

class UserWithCheckIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserWithCheckIn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<$12.UserDataResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $12.UserDataResponse.create)
    ..aOM<$25.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastCheckinAt', protoName: 'LastCheckinAt', subBuilder: $25.Timestamp.create)
    ..hasRequiredFields = false
  ;

  UserWithCheckIn._() : super();
  factory UserWithCheckIn({
    $12.UserDataResponse? user,
    $25.Timestamp? lastCheckinAt,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (lastCheckinAt != null) {
      _result.lastCheckinAt = lastCheckinAt;
    }
    return _result;
  }
  factory UserWithCheckIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserWithCheckIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserWithCheckIn clone() => UserWithCheckIn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserWithCheckIn copyWith(void Function(UserWithCheckIn) updates) => super.copyWith((message) => updates(message as UserWithCheckIn)) as UserWithCheckIn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserWithCheckIn create() => UserWithCheckIn._();
  UserWithCheckIn createEmptyInstance() => create();
  static $pb.PbList<UserWithCheckIn> createRepeated() => $pb.PbList<UserWithCheckIn>();
  @$core.pragma('dart2js:noInline')
  static UserWithCheckIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserWithCheckIn>(create);
  static UserWithCheckIn? _defaultInstance;

  @$pb.TagNumber(1)
  $12.UserDataResponse get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($12.UserDataResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $12.UserDataResponse ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $25.Timestamp get lastCheckinAt => $_getN(1);
  @$pb.TagNumber(2)
  set lastCheckinAt($25.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastCheckinAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastCheckinAt() => clearField(2);
  @$pb.TagNumber(2)
  $25.Timestamp ensureLastCheckinAt() => $_ensure(1);
}

class UserListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<UserWithCheckIn>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Users', $pb.PbFieldType.PM, protoName: 'Users', subBuilder: UserWithCheckIn.create)
    ..aOM<$6.PageResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  UserListResponse._() : super();
  factory UserListResponse({
    $core.Iterable<UserWithCheckIn>? users,
    $6.PageResponse? pageResponse,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    if (pageResponse != null) {
      _result.pageResponse = pageResponse;
    }
    return _result;
  }
  factory UserListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserListResponse clone() => UserListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserListResponse copyWith(void Function(UserListResponse) updates) => super.copyWith((message) => updates(message as UserListResponse)) as UserListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserListResponse create() => UserListResponse._();
  UserListResponse createEmptyInstance() => create();
  static $pb.PbList<UserListResponse> createRepeated() => $pb.PbList<UserListResponse>();
  @$core.pragma('dart2js:noInline')
  static UserListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserListResponse>(create);
  static UserListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserWithCheckIn> get users => $_getList(0);

  @$pb.TagNumber(3)
  $6.PageResponse get pageResponse => $_getN(1);
  @$pb.TagNumber(3)
  set pageResponse($6.PageResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageResponse() => $_has(1);
  @$pb.TagNumber(3)
  void clearPageResponse() => clearField(3);
  @$pb.TagNumber(3)
  $6.PageResponse ensurePageResponse() => $_ensure(1);
}

class UserIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  UserIDRequest._() : super();
  factory UserIDRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory UserIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIDRequest clone() => UserIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIDRequest copyWith(void Function(UserIDRequest) updates) => super.copyWith((message) => updates(message as UserIDRequest)) as UserIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIDRequest create() => UserIDRequest._();
  UserIDRequest createEmptyInstance() => create();
  static $pb.PbList<UserIDRequest> createRepeated() => $pb.PbList<UserIDRequest>();
  @$core.pragma('dart2js:noInline')
  static UserIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIDRequest>(create);
  static UserIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class UserDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  UserDeleteRequest._() : super();
  factory UserDeleteRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory UserDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserDeleteRequest clone() => UserDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserDeleteRequest copyWith(void Function(UserDeleteRequest) updates) => super.copyWith((message) => updates(message as UserDeleteRequest)) as UserDeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserDeleteRequest create() => UserDeleteRequest._();
  UserDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<UserDeleteRequest> createRepeated() => $pb.PbList<UserDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static UserDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDeleteRequest>(create);
  static UserDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class SearchFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchFilter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastName', protoName: 'LastName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FirstName', protoName: 'FirstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastNameKana', protoName: 'LastNameKana')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FirstNameKana', protoName: 'FirstNameKana')
    ..e<$26.Prefecture>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Prefecture', $pb.PbFieldType.OE, protoName: 'Prefecture', defaultOrMaker: $26.Prefecture.Unspecified, valueOf: $26.Prefecture.valueOf, enumValues: $26.Prefecture.values)
    ..hasRequiredFields = false
  ;

  SearchFilter._() : super();
  factory SearchFilter({
    $core.String? lastName,
    $core.String? firstName,
    $core.String? lastNameKana,
    $core.String? firstNameKana,
    $26.Prefecture? prefecture,
  }) {
    final _result = create();
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastNameKana != null) {
      _result.lastNameKana = lastNameKana;
    }
    if (firstNameKana != null) {
      _result.firstNameKana = firstNameKana;
    }
    if (prefecture != null) {
      _result.prefecture = prefecture;
    }
    return _result;
  }
  factory SearchFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchFilter clone() => SearchFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchFilter copyWith(void Function(SearchFilter) updates) => super.copyWith((message) => updates(message as SearchFilter)) as SearchFilter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchFilter create() => SearchFilter._();
  SearchFilter createEmptyInstance() => create();
  static $pb.PbList<SearchFilter> createRepeated() => $pb.PbList<SearchFilter>();
  @$core.pragma('dart2js:noInline')
  static SearchFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchFilter>(create);
  static SearchFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lastName => $_getSZ(0);
  @$pb.TagNumber(1)
  set lastName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastName() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastNameKana => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastNameKana($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastNameKana() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastNameKana() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstNameKana => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstNameKana($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstNameKana() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstNameKana() => clearField(4);

  @$pb.TagNumber(5)
  $26.Prefecture get prefecture => $_getN(4);
  @$pb.TagNumber(5)
  set prefecture($26.Prefecture v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrefecture() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrefecture() => clearField(5);
}

class UserListFilterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserListFilterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<SearchFilter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Search', protoName: 'Search', subBuilder: SearchFilter.create)
    ..aOM<$6.Pager>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $6.Pager.create)
    ..hasRequiredFields = false
  ;

  UserListFilterRequest._() : super();
  factory UserListFilterRequest({
    SearchFilter? search,
    $6.Pager? pager,
  }) {
    final _result = create();
    if (search != null) {
      _result.search = search;
    }
    if (pager != null) {
      _result.pager = pager;
    }
    return _result;
  }
  factory UserListFilterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserListFilterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserListFilterRequest clone() => UserListFilterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserListFilterRequest copyWith(void Function(UserListFilterRequest) updates) => super.copyWith((message) => updates(message as UserListFilterRequest)) as UserListFilterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserListFilterRequest create() => UserListFilterRequest._();
  UserListFilterRequest createEmptyInstance() => create();
  static $pb.PbList<UserListFilterRequest> createRepeated() => $pb.PbList<UserListFilterRequest>();
  @$core.pragma('dart2js:noInline')
  static UserListFilterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserListFilterRequest>(create);
  static UserListFilterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  SearchFilter get search => $_getN(0);
  @$pb.TagNumber(1)
  set search(SearchFilter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearch() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearch() => clearField(1);
  @$pb.TagNumber(1)
  SearchFilter ensureSearch() => $_ensure(0);

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

class UserLoginLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserLoginLog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<$25.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LoginAt', protoName: 'LoginAt', subBuilder: $25.Timestamp.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IP', protoName: 'IP')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserAgent', protoName: 'UserAgent')
    ..hasRequiredFields = false
  ;

  UserLoginLog._() : super();
  factory UserLoginLog({
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
  factory UserLoginLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginLog clone() => UserLoginLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginLog copyWith(void Function(UserLoginLog) updates) => super.copyWith((message) => updates(message as UserLoginLog)) as UserLoginLog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserLoginLog create() => UserLoginLog._();
  UserLoginLog createEmptyInstance() => create();
  static $pb.PbList<UserLoginLog> createRepeated() => $pb.PbList<UserLoginLog>();
  @$core.pragma('dart2js:noInline')
  static UserLoginLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginLog>(create);
  static UserLoginLog? _defaultInstance;

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

class UserLoginLogRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserLoginLogRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<$6.Pager>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $6.Pager.create)
    ..hasRequiredFields = false
  ;

  UserLoginLogRequest._() : super();
  factory UserLoginLogRequest({
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
  factory UserLoginLogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginLogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginLogRequest clone() => UserLoginLogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginLogRequest copyWith(void Function(UserLoginLogRequest) updates) => super.copyWith((message) => updates(message as UserLoginLogRequest)) as UserLoginLogRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserLoginLogRequest create() => UserLoginLogRequest._();
  UserLoginLogRequest createEmptyInstance() => create();
  static $pb.PbList<UserLoginLogRequest> createRepeated() => $pb.PbList<UserLoginLogRequest>();
  @$core.pragma('dart2js:noInline')
  static UserLoginLogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginLogRequest>(create);
  static UserLoginLogRequest? _defaultInstance;

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

class UserLoginLogListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserLoginLogListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<UserLoginLog>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LoginLogs', $pb.PbFieldType.PM, protoName: 'LoginLogs', subBuilder: UserLoginLog.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  UserLoginLogListResponse._() : super();
  factory UserLoginLogListResponse({
    $core.Iterable<UserLoginLog>? loginLogs,
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
  factory UserLoginLogListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginLogListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginLogListResponse clone() => UserLoginLogListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginLogListResponse copyWith(void Function(UserLoginLogListResponse) updates) => super.copyWith((message) => updates(message as UserLoginLogListResponse)) as UserLoginLogListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserLoginLogListResponse create() => UserLoginLogListResponse._();
  UserLoginLogListResponse createEmptyInstance() => create();
  static $pb.PbList<UserLoginLogListResponse> createRepeated() => $pb.PbList<UserLoginLogListResponse>();
  @$core.pragma('dart2js:noInline')
  static UserLoginLogListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginLogListResponse>(create);
  static UserLoginLogListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserLoginLog> get loginLogs => $_getList(0);

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

