///
//  Generated code. Do not modify.
//  source: v1/admin/Coupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../shared/Pager.pb.dart' as $6;
import '../../google/protobuf/timestamp.pb.dart' as $25;
import '../shared/Coupon.pb.dart' as $5;

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

class UserCouponRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCouponRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOM<$6.Pager>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $6.Pager.create)
    ..hasRequiredFields = false
  ;

  UserCouponRequest._() : super();
  factory UserCouponRequest({
    $core.String? iD,
    $6.Pager? pager,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (pager != null) {
      _result.pager = pager;
    }
    return _result;
  }
  factory UserCouponRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCouponRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCouponRequest clone() => UserCouponRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCouponRequest copyWith(void Function(UserCouponRequest) updates) => super.copyWith((message) => updates(message as UserCouponRequest)) as UserCouponRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCouponRequest create() => UserCouponRequest._();
  UserCouponRequest createEmptyInstance() => create();
  static $pb.PbList<UserCouponRequest> createRepeated() => $pb.PbList<UserCouponRequest>();
  @$core.pragma('dart2js:noInline')
  static UserCouponRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCouponRequest>(create);
  static UserCouponRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

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

class CreateCustomCouponRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateCustomCouponRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DiscountAmount', $pb.PbFieldType.OU3, protoName: 'DiscountAmount')
    ..aOM<$25.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExpireAt', protoName: 'ExpireAt', subBuilder: $25.Timestamp.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsCombinationable', protoName: 'IsCombinationable')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Notices', protoName: 'Notices')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TargetStoresID', protoName: 'TargetStoresID')
    ..hasRequiredFields = false
  ;

  CreateCustomCouponRequest._() : super();
  factory CreateCustomCouponRequest({
    $core.String? name,
    $core.int? discountAmount,
    $25.Timestamp? expireAt,
    $core.bool? isCombinationable,
    $core.Iterable<$core.String>? notices,
    $core.Iterable<$core.String>? targetStoresID,
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
    if (targetStoresID != null) {
      _result.targetStoresID.addAll(targetStoresID);
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
  $25.Timestamp get expireAt => $_getN(2);
  @$pb.TagNumber(3)
  set expireAt($25.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpireAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpireAt() => clearField(3);
  @$pb.TagNumber(3)
  $25.Timestamp ensureExpireAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get isCombinationable => $_getBF(3);
  @$pb.TagNumber(4)
  set isCombinationable($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCombinationable() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCombinationable() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get notices => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get targetStoresID => $_getList(5);
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
    ..pc<$5.UserAttachedCoupon>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserAttachedCoupons', $pb.PbFieldType.PM, protoName: 'UserAttachedCoupons', subBuilder: $5.UserAttachedCoupon.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  UserAttachedCouponsResponse._() : super();
  factory UserAttachedCouponsResponse({
    $core.Iterable<$5.UserAttachedCoupon>? userAttachedCoupons,
    $6.PageResponse? pageResponse,
  }) {
    final _result = create();
    if (userAttachedCoupons != null) {
      _result.userAttachedCoupons.addAll(userAttachedCoupons);
    }
    if (pageResponse != null) {
      _result.pageResponse = pageResponse;
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
  $core.List<$5.UserAttachedCoupon> get userAttachedCoupons => $_getList(0);

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

class DefaultCouponResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DefaultCouponResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<$5.CustomCoupon>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Coupon', protoName: 'Coupon', subBuilder: $5.CustomCoupon.create)
    ..hasRequiredFields = false
  ;

  DefaultCouponResponse._() : super();
  factory DefaultCouponResponse({
    $5.CustomCoupon? coupon,
  }) {
    final _result = create();
    if (coupon != null) {
      _result.coupon = coupon;
    }
    return _result;
  }
  factory DefaultCouponResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefaultCouponResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefaultCouponResponse clone() => DefaultCouponResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefaultCouponResponse copyWith(void Function(DefaultCouponResponse) updates) => super.copyWith((message) => updates(message as DefaultCouponResponse)) as DefaultCouponResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DefaultCouponResponse create() => DefaultCouponResponse._();
  DefaultCouponResponse createEmptyInstance() => create();
  static $pb.PbList<DefaultCouponResponse> createRepeated() => $pb.PbList<DefaultCouponResponse>();
  @$core.pragma('dart2js:noInline')
  static DefaultCouponResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefaultCouponResponse>(create);
  static DefaultCouponResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.CustomCoupon get coupon => $_getN(0);
  @$pb.TagNumber(1)
  set coupon($5.CustomCoupon v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoupon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoupon() => clearField(1);
  @$pb.TagNumber(1)
  $5.CustomCoupon ensureCoupon() => $_ensure(0);
}

class CouponListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CouponListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<$5.CustomCoupon>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Coupons', $pb.PbFieldType.PM, protoName: 'Coupons', subBuilder: $5.CustomCoupon.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PageResponse', protoName: 'PageResponse', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  CouponListResponse._() : super();
  factory CouponListResponse({
    $core.Iterable<$5.CustomCoupon>? coupons,
    $6.PageResponse? pageResponse,
  }) {
    final _result = create();
    if (coupons != null) {
      _result.coupons.addAll(coupons);
    }
    if (pageResponse != null) {
      _result.pageResponse = pageResponse;
    }
    return _result;
  }
  factory CouponListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CouponListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CouponListResponse clone() => CouponListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CouponListResponse copyWith(void Function(CouponListResponse) updates) => super.copyWith((message) => updates(message as CouponListResponse)) as CouponListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CouponListResponse create() => CouponListResponse._();
  CouponListResponse createEmptyInstance() => create();
  static $pb.PbList<CouponListResponse> createRepeated() => $pb.PbList<CouponListResponse>();
  @$core.pragma('dart2js:noInline')
  static CouponListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CouponListResponse>(create);
  static CouponListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.CustomCoupon> get coupons => $_getList(0);

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

class SaveCustomCouponRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveCustomCouponRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DiscountAmount', $pb.PbFieldType.OU3, protoName: 'DiscountAmount')
    ..aOM<$25.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExpireAt', protoName: 'ExpireAt', subBuilder: $25.Timestamp.create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsCombinationable', protoName: 'IsCombinationable')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Notices', protoName: 'Notices')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TargetStoresID', protoName: 'TargetStoresID')
    ..hasRequiredFields = false
  ;

  SaveCustomCouponRequest._() : super();
  factory SaveCustomCouponRequest({
    $core.String? iD,
    $core.String? name,
    $core.int? discountAmount,
    $25.Timestamp? expireAt,
    $core.bool? isCombinationable,
    $core.Iterable<$core.String>? notices,
    $core.Iterable<$core.String>? targetStoresID,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
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
    if (targetStoresID != null) {
      _result.targetStoresID.addAll(targetStoresID);
    }
    return _result;
  }
  factory SaveCustomCouponRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveCustomCouponRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveCustomCouponRequest clone() => SaveCustomCouponRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveCustomCouponRequest copyWith(void Function(SaveCustomCouponRequest) updates) => super.copyWith((message) => updates(message as SaveCustomCouponRequest)) as SaveCustomCouponRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveCustomCouponRequest create() => SaveCustomCouponRequest._();
  SaveCustomCouponRequest createEmptyInstance() => create();
  static $pb.PbList<SaveCustomCouponRequest> createRepeated() => $pb.PbList<SaveCustomCouponRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveCustomCouponRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveCustomCouponRequest>(create);
  static SaveCustomCouponRequest? _defaultInstance;

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
  $core.int get discountAmount => $_getIZ(2);
  @$pb.TagNumber(3)
  set discountAmount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDiscountAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiscountAmount() => clearField(3);

  @$pb.TagNumber(4)
  $25.Timestamp get expireAt => $_getN(3);
  @$pb.TagNumber(4)
  set expireAt($25.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpireAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpireAt() => clearField(4);
  @$pb.TagNumber(4)
  $25.Timestamp ensureExpireAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get isCombinationable => $_getBF(4);
  @$pb.TagNumber(5)
  set isCombinationable($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsCombinationable() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsCombinationable() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get notices => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get targetStoresID => $_getList(6);
}

