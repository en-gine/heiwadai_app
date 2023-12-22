///
//  Generated code. Do not modify.
//  source: v1/admin/Coupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $23;
import '../shared/Coupon.pb.dart' as $19;

class CouponIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CouponIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  CouponIDRequest._() : super();
  factory CouponIDRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory CouponIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CouponIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CouponIDRequest clone() => CouponIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CouponIDRequest copyWith(void Function(CouponIDRequest) updates) => super.copyWith((message) => updates(message as CouponIDRequest)) as CouponIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CouponIDRequest create() => CouponIDRequest._();
  CouponIDRequest createEmptyInstance() => create();
  static $pb.PbList<CouponIDRequest> createRepeated() => $pb.PbList<CouponIDRequest>();
  @$core.pragma('dart2js:noInline')
  static CouponIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CouponIDRequest>(create);
  static CouponIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
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

class CreateCustomCouponRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateCustomCouponRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DiscountAmount', $pb.PbFieldType.OU3, protoName: 'DiscountAmount')
    ..aOM<$23.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExpireAt', protoName: 'ExpireAt', subBuilder: $23.Timestamp.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsCombinationable', protoName: 'IsCombinationable')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Notices', protoName: 'Notices')
    ..hasRequiredFields = false
  ;

  CreateCustomCouponRequest._() : super();
  factory CreateCustomCouponRequest({
    $core.String? name,
    $core.int? discountAmount,
    $23.Timestamp? expireAt,
    $core.bool? isCombinationable,
    $core.Iterable<$core.String>? notices,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (discountAmount != null) {
      _result.discountAmount = discountAmount;
    }
    if (expireAt != null) {
      _result.expireAt = expireAt;
    }
    if (isCombinationable != null) {
      _result.isCombinationable = isCombinationable;
    }
    if (notices != null) {
      _result.notices.addAll(notices);
    }
    return _result;
  }
  factory CreateCustomCouponRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCustomCouponRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCustomCouponRequest clone() => CreateCustomCouponRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCustomCouponRequest copyWith(void Function(CreateCustomCouponRequest) updates) => super.copyWith((message) => updates(message as CreateCustomCouponRequest)) as CreateCustomCouponRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateCustomCouponRequest create() => CreateCustomCouponRequest._();
  CreateCustomCouponRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCustomCouponRequest> createRepeated() => $pb.PbList<CreateCustomCouponRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCustomCouponRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCustomCouponRequest>(create);
  static CreateCustomCouponRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get discountAmount => $_getIZ(1);
  @$pb.TagNumber(2)
  set discountAmount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDiscountAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiscountAmount() => clearField(2);

  @$pb.TagNumber(3)
  $23.Timestamp get expireAt => $_getN(2);
  @$pb.TagNumber(3)
  set expireAt($23.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpireAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpireAt() => clearField(3);
  @$pb.TagNumber(3)
  $23.Timestamp ensureExpireAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get isCombinationable => $_getBF(3);
  @$pb.TagNumber(4)
  set isCombinationable($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCombinationable() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCombinationable() => clearField(4);

  @$pb.TagNumber(7)
  $core.List<$core.String> get notices => $_getList(4);
}

class AffectedCountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AffectedCountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AffectedUserCount', $pb.PbFieldType.OU3, protoName: 'AffectedUserCount')
    ..hasRequiredFields = false
  ;

  AffectedCountResponse._() : super();
  factory AffectedCountResponse({
    $core.int? affectedUserCount,
  }) {
    final _result = create();
    if (affectedUserCount != null) {
      _result.affectedUserCount = affectedUserCount;
    }
    return _result;
  }
  factory AffectedCountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AffectedCountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AffectedCountResponse clone() => AffectedCountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AffectedCountResponse copyWith(void Function(AffectedCountResponse) updates) => super.copyWith((message) => updates(message as AffectedCountResponse)) as AffectedCountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AffectedCountResponse create() => AffectedCountResponse._();
  AffectedCountResponse createEmptyInstance() => create();
  static $pb.PbList<AffectedCountResponse> createRepeated() => $pb.PbList<AffectedCountResponse>();
  @$core.pragma('dart2js:noInline')
  static AffectedCountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AffectedCountResponse>(create);
  static AffectedCountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get affectedUserCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set affectedUserCount($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAffectedUserCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAffectedUserCount() => clearField(1);
}

class UserAttachedCouponsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAttachedCouponsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<$19.UserAttachedCoupon>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserAttachedCoupons', $pb.PbFieldType.PM, protoName: 'UserAttachedCoupons', subBuilder: $19.UserAttachedCoupon.create)
    ..hasRequiredFields = false
  ;

  UserAttachedCouponsResponse._() : super();
  factory UserAttachedCouponsResponse({
    $core.Iterable<$19.UserAttachedCoupon>? userAttachedCoupons,
  }) {
    final _result = create();
    if (userAttachedCoupons != null) {
      _result.userAttachedCoupons.addAll(userAttachedCoupons);
    }
    return _result;
  }
  factory UserAttachedCouponsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAttachedCouponsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAttachedCouponsResponse clone() => UserAttachedCouponsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAttachedCouponsResponse copyWith(void Function(UserAttachedCouponsResponse) updates) => super.copyWith((message) => updates(message as UserAttachedCouponsResponse)) as UserAttachedCouponsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAttachedCouponsResponse create() => UserAttachedCouponsResponse._();
  UserAttachedCouponsResponse createEmptyInstance() => create();
  static $pb.PbList<UserAttachedCouponsResponse> createRepeated() => $pb.PbList<UserAttachedCouponsResponse>();
  @$core.pragma('dart2js:noInline')
  static UserAttachedCouponsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAttachedCouponsResponse>(create);
  static UserAttachedCouponsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$19.UserAttachedCoupon> get userAttachedCoupons => $_getList(0);
}

