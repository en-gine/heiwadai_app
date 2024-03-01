///
//  Generated code. Do not modify.
//  source: v1/shared/Coupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use couponTypeDescriptor instead')
const CouponType$json = const {
  '1': 'CouponType',
  '2': const [
    const {'1': 'COUPON_STANDARD', '2': 0},
    const {'1': 'COUPON_CUSTOM', '2': 1},
    const {'1': 'COUPON_BIRTHDAY', '2': 2},
  ],
};

/// Descriptor for `CouponType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List couponTypeDescriptor = $convert.base64Decode('CgpDb3Vwb25UeXBlEhMKD0NPVVBPTl9TVEFOREFSRBAAEhEKDUNPVVBPTl9DVVNUT00QARITCg9DT1VQT05fQklSVEhEQVkQAg==');
@$core.Deprecated('Use couponStatusDescriptor instead')
const CouponStatus$json = const {
  '1': 'CouponStatus',
  '2': const [
    const {'1': 'COUPON_DRAFT', '2': 0},
    const {'1': 'COUPON_CREATED', '2': 1},
    const {'1': 'COUPON_ISSUED', '2': 2},
  ],
};

/// Descriptor for `CouponStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List couponStatusDescriptor = $convert.base64Decode('CgxDb3Vwb25TdGF0dXMSEAoMQ09VUE9OX0RSQUZUEAASEgoOQ09VUE9OX0NSRUFURUQQARIRCg1DT1VQT05fSVNTVUVEEAI=');
@$core.Deprecated('Use couponDescriptor instead')
const Coupon$json = const {
  '1': 'Coupon',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'CouponType', '3': 3, '4': 1, '5': 14, '6': '.server.shared.CouponType', '10': 'CouponType'},
    const {'1': 'DiscountAmount', '3': 4, '4': 1, '5': 13, '10': 'DiscountAmount'},
    const {'1': 'ExpireAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'ExpireAt'},
    const {'1': 'IsCombinationable', '3': 6, '4': 1, '5': 8, '10': 'IsCombinationable'},
    const {'1': 'Notices', '3': 7, '4': 3, '5': 9, '10': 'Notices'},
    const {'1': 'TargetStore', '3': 8, '4': 3, '5': 11, '6': '.server.shared.Store', '10': 'TargetStore'},
    const {'1': 'CreateAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreateAt'},
  ],
};

/// Descriptor for `Coupon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List couponDescriptor = $convert.base64Decode('CgZDb3Vwb24SDgoCSUQYASABKAlSAklEEhIKBE5hbWUYAiABKAlSBE5hbWUSOQoKQ291cG9uVHlwZRgDIAEoDjIZLnNlcnZlci5zaGFyZWQuQ291cG9uVHlwZVIKQ291cG9uVHlwZRImCg5EaXNjb3VudEFtb3VudBgEIAEoDVIORGlzY291bnRBbW91bnQSNgoIRXhwaXJlQXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghFeHBpcmVBdBIsChFJc0NvbWJpbmF0aW9uYWJsZRgGIAEoCFIRSXNDb21iaW5hdGlvbmFibGUSGAoHTm90aWNlcxgHIAMoCVIHTm90aWNlcxI2CgtUYXJnZXRTdG9yZRgIIAMoCzIULnNlcnZlci5zaGFyZWQuU3RvcmVSC1RhcmdldFN0b3JlEjYKCENyZWF0ZUF0GAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIQ3JlYXRlQXQ=');
@$core.Deprecated('Use customCouponDescriptor instead')
const CustomCoupon$json = const {
  '1': 'CustomCoupon',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'CouponType', '3': 3, '4': 1, '5': 14, '6': '.server.shared.CouponType', '10': 'CouponType'},
    const {'1': 'DiscountAmount', '3': 4, '4': 1, '5': 13, '10': 'DiscountAmount'},
    const {'1': 'ExpireAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'ExpireAt'},
    const {'1': 'IsCombinationable', '3': 6, '4': 1, '5': 8, '10': 'IsCombinationable'},
    const {'1': 'Notices', '3': 7, '4': 3, '5': 9, '10': 'Notices'},
    const {'1': 'TargetStore', '3': 8, '4': 3, '5': 11, '6': '.server.shared.Store', '10': 'TargetStore'},
    const {'1': 'Status', '3': 9, '4': 1, '5': 14, '6': '.server.shared.CouponStatus', '10': 'Status'},
    const {'1': 'CreateAt', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreateAt'},
    const {'1': 'IssueCount', '3': 11, '4': 1, '5': 13, '9': 0, '10': 'IssueCount', '17': true},
    const {'1': 'IssueAt', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'IssueAt', '17': true},
  ],
  '8': const [
    const {'1': '_IssueCount'},
    const {'1': '_IssueAt'},
  ],
};

/// Descriptor for `CustomCoupon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customCouponDescriptor = $convert.base64Decode('CgxDdXN0b21Db3Vwb24SDgoCSUQYASABKAlSAklEEhIKBE5hbWUYAiABKAlSBE5hbWUSOQoKQ291cG9uVHlwZRgDIAEoDjIZLnNlcnZlci5zaGFyZWQuQ291cG9uVHlwZVIKQ291cG9uVHlwZRImCg5EaXNjb3VudEFtb3VudBgEIAEoDVIORGlzY291bnRBbW91bnQSNgoIRXhwaXJlQXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghFeHBpcmVBdBIsChFJc0NvbWJpbmF0aW9uYWJsZRgGIAEoCFIRSXNDb21iaW5hdGlvbmFibGUSGAoHTm90aWNlcxgHIAMoCVIHTm90aWNlcxI2CgtUYXJnZXRTdG9yZRgIIAMoCzIULnNlcnZlci5zaGFyZWQuU3RvcmVSC1RhcmdldFN0b3JlEjMKBlN0YXR1cxgJIAEoDjIbLnNlcnZlci5zaGFyZWQuQ291cG9uU3RhdHVzUgZTdGF0dXMSNgoIQ3JlYXRlQXQYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghDcmVhdGVBdBIjCgpJc3N1ZUNvdW50GAsgASgNSABSCklzc3VlQ291bnSIAQESOQoHSXNzdWVBdBgMIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAVIHSXNzdWVBdIgBAUINCgtfSXNzdWVDb3VudEIKCghfSXNzdWVBdA==');
@$core.Deprecated('Use userAttachedCouponDescriptor instead')
const UserAttachedCoupon$json = const {
  '1': 'UserAttachedCoupon',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'Coupon', '3': 2, '4': 1, '5': 11, '6': '.server.shared.Coupon', '10': 'Coupon'},
    const {'1': 'UsedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UsedAt'},
  ],
};

/// Descriptor for `UserAttachedCoupon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAttachedCouponDescriptor = $convert.base64Decode('ChJVc2VyQXR0YWNoZWRDb3Vwb24SFgoGVXNlcklEGAEgASgJUgZVc2VySUQSLQoGQ291cG9uGAIgASgLMhUuc2VydmVyLnNoYXJlZC5Db3Vwb25SBkNvdXBvbhIyCgZVc2VkQXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgZVc2VkQXQ=');
