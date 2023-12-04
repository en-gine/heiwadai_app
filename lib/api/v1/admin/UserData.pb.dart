///
//  Generated code. Do not modify.
//  source: v1/admin/UserData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../user/UserData.pb.dart' as $9;
import '../../google/protobuf/timestamp.pb.dart' as $21;
import '../shared/Pager.pb.dart' as $22;

import '../shared/Prefecture.pbenum.dart' as $23;

class UserUpdateDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserUpdateDataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<$9.UserUpdateDataRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $9.UserUpdateDataRequest.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InnerNote', protoName: 'InnerNote')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsBlackCustomer', protoName: 'IsBlackCustomer')
    ..hasRequiredFields = false
  ;

  UserUpdateDataRequest._() : super();
  factory UserUpdateDataRequest({
    $9.UserUpdateDataRequest? user,
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
  $9.UserUpdateDataRequest get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($9.UserUpdateDataRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $9.UserUpdateDataRequest ensureUser() => $_ensure(0);

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
    ..aOM<$9.UserDataResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $9.UserDataResponse.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InnerNote', protoName: 'InnerNote')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsBlackCustomer', protoName: 'IsBlackCustomer')
    ..hasRequiredFields = false
  ;

  UserDataResponse._() : super();
  factory UserDataResponse({
    $9.UserDataResponse? user,
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
  $9.UserDataResponse get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($9.UserDataResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $9.UserDataResponse ensureUser() => $_ensure(0);

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
    ..aOM<$9.UserDataResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: $9.UserDataResponse.create)
    ..aOM<$21.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastCheckinAt', protoName: 'LastCheckinAt', subBuilder: $21.Timestamp.create)
    ..hasRequiredFields = false
  ;

  UserWithCheckIn._() : super();
  factory UserWithCheckIn({
    $9.UserDataResponse? user,
    $21.Timestamp? lastCheckinAt,
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
  $9.UserDataResponse get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($9.UserDataResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $9.UserDataResponse ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $21.Timestamp get lastCheckinAt => $_getN(1);
  @$pb.TagNumber(2)
  set lastCheckinAt($21.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastCheckinAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastCheckinAt() => clearField(2);
  @$pb.TagNumber(2)
  $21.Timestamp ensureLastCheckinAt() => $_ensure(1);
}

class UserListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<UserWithCheckIn>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Users', $pb.PbFieldType.PM, protoName: 'Users', subBuilder: UserWithCheckIn.create)
    ..aOM<$22.PageResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $22.PageResponse.create)
    ..hasRequiredFields = false
  ;

  UserListResponse._() : super();
  factory UserListResponse({
    $core.Iterable<UserWithCheckIn>? users,
    $22.PageResponse? pageResponse,
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
  $22.PageResponse get pageResponse => $_getN(1);
  @$pb.TagNumber(3)
  set pageResponse($22.PageResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageResponse() => $_has(1);
  @$pb.TagNumber(3)
  void clearPageResponse() => clearField(3);
  @$pb.TagNumber(3)
  $22.PageResponse ensurePageResponse() => $_ensure(1);
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
    ..e<$23.Prefecture>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Prefecture', $pb.PbFieldType.OE, protoName: 'Prefecture', defaultOrMaker: $23.Prefecture.Unspecified, valueOf: $23.Prefecture.valueOf, enumValues: $23.Prefecture.values)
    ..hasRequiredFields = false
  ;

  SearchFilter._() : super();
  factory SearchFilter({
    $core.String? lastName,
    $core.String? firstName,
    $core.String? lastNameKana,
    $core.String? firstNameKana,
    $23.Prefecture? prefecture,
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
  $23.Prefecture get prefecture => $_getN(4);
  @$pb.TagNumber(5)
  set prefecture($23.Prefecture v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrefecture() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrefecture() => clearField(5);
}

class UserListFilterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserListFilterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<SearchFilter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Search', protoName: 'Search', subBuilder: SearchFilter.create)
    ..aOM<$22.Pager>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $22.Pager.create)
    ..hasRequiredFields = false
  ;

  UserListFilterRequest._() : super();
  factory UserListFilterRequest({
    SearchFilter? search,
    $22.Pager? pager,
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

