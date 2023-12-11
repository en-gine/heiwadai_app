///
//  Generated code. Do not modify.
//  source: v1/user/Checkin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use checkinRequestDescriptor instead')
const CheckinRequest$json = const {
  '1': 'CheckinRequest',
  '2': const [
    const {'1': 'qrHash', '3': 1, '4': 1, '5': 9, '10': 'qrHash'},
  ],
};

/// Descriptor for `CheckinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkinRequestDescriptor = $convert.base64Decode('Cg5DaGVja2luUmVxdWVzdBIWCgZxckhhc2gYASABKAlSBnFySGFzaA==');
@$core.Deprecated('Use checkinStampDescriptor instead')
const CheckinStamp$json = const {
  '1': 'CheckinStamp',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'StoreID', '3': 2, '4': 1, '5': 9, '10': 'StoreID'},
    const {'1': 'StoreName', '3': 3, '4': 1, '5': 9, '10': 'StoreName'},
    const {'1': 'StoreStampImage', '3': 4, '4': 1, '5': 9, '10': 'StoreStampImage'},
    const {'1': 'CheckInAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CheckInAt'},
  ],
};

/// Descriptor for `CheckinStamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkinStampDescriptor = $convert.base64Decode('CgxDaGVja2luU3RhbXASDgoCSUQYASABKAlSAklEEhgKB1N0b3JlSUQYAiABKAlSB1N0b3JlSUQSHAoJU3RvcmVOYW1lGAMgASgJUglTdG9yZU5hbWUSKAoPU3RvcmVTdGFtcEltYWdlGAQgASgJUg9TdG9yZVN0YW1wSW1hZ2USOAoJQ2hlY2tJbkF0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJQ2hlY2tJbkF0');
@$core.Deprecated('Use stampCardResponseDescriptor instead')
const StampCardResponse$json = const {
  '1': 'StampCardResponse',
  '2': const [
    const {'1': 'stamps', '3': 1, '4': 3, '5': 11, '6': '.server.user.CheckinStamp', '10': 'stamps'},
  ],
};

/// Descriptor for `StampCardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stampCardResponseDescriptor = $convert.base64Decode('ChFTdGFtcENhcmRSZXNwb25zZRIxCgZzdGFtcHMYASADKAsyGS5zZXJ2ZXIudXNlci5DaGVja2luU3RhbXBSBnN0YW1wcw==');
@$core.Deprecated('Use checkinResponseDescriptor instead')
const CheckinResponse$json = const {
  '1': 'CheckinResponse',
  '2': const [
    const {'1': 'MayCoupon', '3': 1, '4': 1, '5': 11, '6': '.server.shared.Coupon', '9': 0, '10': 'MayCoupon', '17': true},
  ],
  '8': const [
    const {'1': '_MayCoupon'},
  ],
};

/// Descriptor for `CheckinResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkinResponseDescriptor = $convert.base64Decode('Cg9DaGVja2luUmVzcG9uc2USOAoJTWF5Q291cG9uGAEgASgLMhUuc2VydmVyLnNoYXJlZC5Db3Vwb25IAFIJTWF5Q291cG9uiAEBQgwKCl9NYXlDb3Vwb24=');
