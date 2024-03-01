///
//  Generated code. Do not modify.
//  source: v1/admin/Coupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use couponIDRequestDescriptor instead')
const CouponIDRequest$json = const {
  '1': 'CouponIDRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `CouponIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List couponIDRequestDescriptor = $convert.base64Decode('Cg9Db3Vwb25JRFJlcXVlc3QSDgoCSUQYASABKAlSAklE');
@$core.Deprecated('Use userCouponRequestDescriptor instead')
const UserCouponRequest$json = const {
  '1': 'UserCouponRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Pager', '3': 2, '4': 1, '5': 11, '6': '.server.shared.Pager', '10': 'Pager'},
  ],
};

/// Descriptor for `UserCouponRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCouponRequestDescriptor = $convert.base64Decode('ChFVc2VyQ291cG9uUmVxdWVzdBIOCgJJRBgBIAEoCVICSUQSKgoFUGFnZXIYAiABKAsyFC5zZXJ2ZXIuc2hhcmVkLlBhZ2VyUgVQYWdlcg==');
@$core.Deprecated('Use createCustomCouponRequestDescriptor instead')
const CreateCustomCouponRequest$json = const {
  '1': 'CreateCustomCouponRequest',
  '2': const [
    const {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'DiscountAmount', '3': 2, '4': 1, '5': 13, '10': 'DiscountAmount'},
    const {'1': 'ExpireAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'ExpireAt'},
    const {'1': 'IsCombinationable', '3': 4, '4': 1, '5': 8, '10': 'IsCombinationable'},
    const {'1': 'Notices', '3': 5, '4': 3, '5': 9, '10': 'Notices'},
    const {'1': 'TargetStoresID', '3': 6, '4': 3, '5': 9, '10': 'TargetStoresID'},
  ],
};

/// Descriptor for `CreateCustomCouponRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCustomCouponRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVDdXN0b21Db3Vwb25SZXF1ZXN0EhIKBE5hbWUYASABKAlSBE5hbWUSJgoORGlzY291bnRBbW91bnQYAiABKA1SDkRpc2NvdW50QW1vdW50EjYKCEV4cGlyZUF0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIRXhwaXJlQXQSLAoRSXNDb21iaW5hdGlvbmFibGUYBCABKAhSEUlzQ29tYmluYXRpb25hYmxlEhgKB05vdGljZXMYBSADKAlSB05vdGljZXMSJgoOVGFyZ2V0U3RvcmVzSUQYBiADKAlSDlRhcmdldFN0b3Jlc0lE');
@$core.Deprecated('Use affectedCountResponseDescriptor instead')
const AffectedCountResponse$json = const {
  '1': 'AffectedCountResponse',
  '2': const [
    const {'1': 'AffectedUserCount', '3': 1, '4': 1, '5': 13, '10': 'AffectedUserCount'},
  ],
};

/// Descriptor for `AffectedCountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List affectedCountResponseDescriptor = $convert.base64Decode('ChVBZmZlY3RlZENvdW50UmVzcG9uc2USLAoRQWZmZWN0ZWRVc2VyQ291bnQYASABKA1SEUFmZmVjdGVkVXNlckNvdW50');
@$core.Deprecated('Use userAttachedCouponsResponseDescriptor instead')
const UserAttachedCouponsResponse$json = const {
  '1': 'UserAttachedCouponsResponse',
  '2': const [
    const {'1': 'UserAttachedCoupons', '3': 1, '4': 3, '5': 11, '6': '.server.shared.UserAttachedCoupon', '10': 'UserAttachedCoupons'},
    const {'1': 'PageResponse', '3': 2, '4': 1, '5': 11, '6': '.server.shared.PageResponse', '10': 'PageResponse'},
  ],
};

/// Descriptor for `UserAttachedCouponsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAttachedCouponsResponseDescriptor = $convert.base64Decode('ChtVc2VyQXR0YWNoZWRDb3Vwb25zUmVzcG9uc2USUwoTVXNlckF0dGFjaGVkQ291cG9ucxgBIAMoCzIhLnNlcnZlci5zaGFyZWQuVXNlckF0dGFjaGVkQ291cG9uUhNVc2VyQXR0YWNoZWRDb3Vwb25zEj8KDFBhZ2VSZXNwb25zZRgCIAEoCzIbLnNlcnZlci5zaGFyZWQuUGFnZVJlc3BvbnNlUgxQYWdlUmVzcG9uc2U=');
@$core.Deprecated('Use defaultCouponResponseDescriptor instead')
const DefaultCouponResponse$json = const {
  '1': 'DefaultCouponResponse',
  '2': const [
    const {'1': 'Coupon', '3': 1, '4': 1, '5': 11, '6': '.server.shared.CustomCoupon', '10': 'Coupon'},
  ],
};

/// Descriptor for `DefaultCouponResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defaultCouponResponseDescriptor = $convert.base64Decode('ChVEZWZhdWx0Q291cG9uUmVzcG9uc2USMwoGQ291cG9uGAEgASgLMhsuc2VydmVyLnNoYXJlZC5DdXN0b21Db3Vwb25SBkNvdXBvbg==');
@$core.Deprecated('Use couponListResponseDescriptor instead')
const CouponListResponse$json = const {
  '1': 'CouponListResponse',
  '2': const [
    const {'1': 'Coupons', '3': 1, '4': 3, '5': 11, '6': '.server.shared.CustomCoupon', '10': 'Coupons'},
    const {'1': 'PageResponse', '3': 2, '4': 1, '5': 11, '6': '.server.shared.PageResponse', '10': 'PageResponse'},
  ],
};

/// Descriptor for `CouponListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List couponListResponseDescriptor = $convert.base64Decode('ChJDb3Vwb25MaXN0UmVzcG9uc2USNQoHQ291cG9ucxgBIAMoCzIbLnNlcnZlci5zaGFyZWQuQ3VzdG9tQ291cG9uUgdDb3Vwb25zEj8KDFBhZ2VSZXNwb25zZRgCIAEoCzIbLnNlcnZlci5zaGFyZWQuUGFnZVJlc3BvbnNlUgxQYWdlUmVzcG9uc2U=');
@$core.Deprecated('Use saveCustomCouponRequestDescriptor instead')
const SaveCustomCouponRequest$json = const {
  '1': 'SaveCustomCouponRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'DiscountAmount', '3': 3, '4': 1, '5': 13, '10': 'DiscountAmount'},
    const {'1': 'ExpireAt', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'ExpireAt'},
    const {'1': 'IsCombinationable', '3': 5, '4': 1, '5': 8, '10': 'IsCombinationable'},
    const {'1': 'Notices', '3': 6, '4': 3, '5': 9, '10': 'Notices'},
    const {'1': 'TargetStoresID', '3': 7, '4': 3, '5': 9, '10': 'TargetStoresID'},
  ],
};

/// Descriptor for `SaveCustomCouponRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveCustomCouponRequestDescriptor = $convert.base64Decode('ChdTYXZlQ3VzdG9tQ291cG9uUmVxdWVzdBIOCgJJRBgBIAEoCVICSUQSEgoETmFtZRgCIAEoCVIETmFtZRImCg5EaXNjb3VudEFtb3VudBgDIAEoDVIORGlzY291bnRBbW91bnQSNgoIRXhwaXJlQXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghFeHBpcmVBdBIsChFJc0NvbWJpbmF0aW9uYWJsZRgFIAEoCFIRSXNDb21iaW5hdGlvbmFibGUSGAoHTm90aWNlcxgGIAMoCVIHTm90aWNlcxImCg5UYXJnZXRTdG9yZXNJRBgHIAMoCVIOVGFyZ2V0U3RvcmVzSUQ=');
