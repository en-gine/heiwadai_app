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
@$core.Deprecated('Use userIDRequestDescriptor instead')
const UserIDRequest$json = const {
  '1': 'UserIDRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `UserIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userIDRequestDescriptor = $convert.base64Decode('Cg1Vc2VySURSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRA==');
@$core.Deprecated('Use createCustomCouponRequestDescriptor instead')
const CreateCustomCouponRequest$json = const {
  '1': 'CreateCustomCouponRequest',
  '2': const [
    const {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'DiscountAmount', '3': 2, '4': 1, '5': 13, '10': 'DiscountAmount'},
    const {'1': 'ExpireAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'ExpireAt'},
    const {'1': 'IsCombinationable', '3': 4, '4': 1, '5': 8, '10': 'IsCombinationable'},
    const {'1': 'Notices', '3': 7, '4': 3, '5': 9, '10': 'Notices'},
  ],
};

/// Descriptor for `CreateCustomCouponRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCustomCouponRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVDdXN0b21Db3Vwb25SZXF1ZXN0EhIKBE5hbWUYASABKAlSBE5hbWUSJgoORGlzY291bnRBbW91bnQYAiABKA1SDkRpc2NvdW50QW1vdW50EjYKCEV4cGlyZUF0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIRXhwaXJlQXQSLAoRSXNDb21iaW5hdGlvbmFibGUYBCABKAhSEUlzQ29tYmluYXRpb25hYmxlEhgKB05vdGljZXMYByADKAlSB05vdGljZXM=');
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
  ],
};

/// Descriptor for `UserAttachedCouponsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAttachedCouponsResponseDescriptor = $convert.base64Decode('ChtVc2VyQXR0YWNoZWRDb3Vwb25zUmVzcG9uc2USUwoTVXNlckF0dGFjaGVkQ291cG9ucxgBIAMoCzIhLnNlcnZlci5zaGFyZWQuVXNlckF0dGFjaGVkQ291cG9uUhNVc2VyQXR0YWNoZWRDb3Vwb25z');
