///
//  Generated code. Do not modify.
//  source: v1/admin/Store.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use storeRegisterRequestDescriptor instead')
const StoreRegisterRequest$json = const {
  '1': 'StoreRegisterRequest',
  '2': const [
    const {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'BranchName', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'BranchName', '17': true},
    const {'1': 'ZipCode', '3': 3, '4': 1, '5': 9, '10': 'ZipCode'},
    const {'1': 'Address', '3': 4, '4': 1, '5': 9, '10': 'Address'},
    const {'1': 'Tel', '3': 5, '4': 1, '5': 9, '10': 'Tel'},
    const {'1': 'SiteURL', '3': 6, '4': 1, '5': 9, '10': 'SiteURL'},
    const {'1': 'StampImageData', '3': 7, '4': 1, '5': 9, '10': 'StampImageData'},
    const {'1': 'Stayable', '3': 8, '4': 1, '5': 8, '10': 'Stayable'},
    const {'1': 'IsActive', '3': 9, '4': 1, '5': 8, '10': 'IsActive'},
    const {'1': 'QRCode', '3': 10, '4': 1, '5': 9, '10': 'QRCode'},
    const {'1': 'UnLimitedQRCode', '3': 11, '4': 1, '5': 9, '10': 'UnLimitedQRCode'},
    const {'1': 'StayableInfo', '3': 12, '4': 1, '5': 11, '6': '.server.admin.StayableInfo', '9': 1, '10': 'StayableInfo', '17': true},
  ],
  '8': const [
    const {'1': '_BranchName'},
    const {'1': '_StayableInfo'},
  ],
};

/// Descriptor for `StoreRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeRegisterRequestDescriptor = $convert.base64Decode('ChRTdG9yZVJlZ2lzdGVyUmVxdWVzdBISCgROYW1lGAEgASgJUgROYW1lEiMKCkJyYW5jaE5hbWUYAiABKAlIAFIKQnJhbmNoTmFtZYgBARIYCgdaaXBDb2RlGAMgASgJUgdaaXBDb2RlEhgKB0FkZHJlc3MYBCABKAlSB0FkZHJlc3MSEAoDVGVsGAUgASgJUgNUZWwSGAoHU2l0ZVVSTBgGIAEoCVIHU2l0ZVVSTBImCg5TdGFtcEltYWdlRGF0YRgHIAEoCVIOU3RhbXBJbWFnZURhdGESGgoIU3RheWFibGUYCCABKAhSCFN0YXlhYmxlEhoKCElzQWN0aXZlGAkgASgIUghJc0FjdGl2ZRIWCgZRUkNvZGUYCiABKAlSBlFSQ29kZRIoCg9VbkxpbWl0ZWRRUkNvZGUYCyABKAlSD1VuTGltaXRlZFFSQ29kZRJDCgxTdGF5YWJsZUluZm8YDCABKAsyGi5zZXJ2ZXIuYWRtaW4uU3RheWFibGVJbmZvSAFSDFN0YXlhYmxlSW5mb4gBAUINCgtfQnJhbmNoTmFtZUIPCg1fU3RheWFibGVJbmZv');
@$core.Deprecated('Use storeUpdateRequestDescriptor instead')
const StoreUpdateRequest$json = const {
  '1': 'StoreUpdateRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'BranchName', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'BranchName', '17': true},
    const {'1': 'ZipCode', '3': 4, '4': 1, '5': 9, '10': 'ZipCode'},
    const {'1': 'Address', '3': 5, '4': 1, '5': 9, '10': 'Address'},
    const {'1': 'Tel', '3': 6, '4': 1, '5': 9, '10': 'Tel'},
    const {'1': 'SiteURL', '3': 7, '4': 1, '5': 9, '10': 'SiteURL'},
    const {'1': 'StampImageData', '3': 8, '4': 1, '5': 9, '10': 'StampImageData'},
    const {'1': 'Stayable', '3': 9, '4': 1, '5': 8, '10': 'Stayable'},
    const {'1': 'IsActive', '3': 10, '4': 1, '5': 8, '10': 'IsActive'},
    const {'1': 'QRCode', '3': 11, '4': 1, '5': 9, '10': 'QRCode'},
    const {'1': 'UnLimitedQRCode', '3': 12, '4': 1, '5': 9, '10': 'UnLimitedQRCode'},
    const {'1': 'StayableInfo', '3': 13, '4': 1, '5': 11, '6': '.server.admin.StayableInfo', '10': 'StayableInfo'},
  ],
  '8': const [
    const {'1': '_BranchName'},
  ],
};

/// Descriptor for `StoreUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeUpdateRequestDescriptor = $convert.base64Decode('ChJTdG9yZVVwZGF0ZVJlcXVlc3QSDgoCSUQYASABKAlSAklEEhIKBE5hbWUYAiABKAlSBE5hbWUSIwoKQnJhbmNoTmFtZRgDIAEoCUgAUgpCcmFuY2hOYW1liAEBEhgKB1ppcENvZGUYBCABKAlSB1ppcENvZGUSGAoHQWRkcmVzcxgFIAEoCVIHQWRkcmVzcxIQCgNUZWwYBiABKAlSA1RlbBIYCgdTaXRlVVJMGAcgASgJUgdTaXRlVVJMEiYKDlN0YW1wSW1hZ2VEYXRhGAggASgJUg5TdGFtcEltYWdlRGF0YRIaCghTdGF5YWJsZRgJIAEoCFIIU3RheWFibGUSGgoISXNBY3RpdmUYCiABKAhSCElzQWN0aXZlEhYKBlFSQ29kZRgLIAEoCVIGUVJDb2RlEigKD1VuTGltaXRlZFFSQ29kZRgMIAEoCVIPVW5MaW1pdGVkUVJDb2RlEj4KDFN0YXlhYmxlSW5mbxgNIAEoCzIaLnNlcnZlci5hZG1pbi5TdGF5YWJsZUluZm9SDFN0YXlhYmxlSW5mb0INCgtfQnJhbmNoTmFtZQ==');
@$core.Deprecated('Use stayableInfoDescriptor instead')
const StayableInfo$json = const {
  '1': 'StayableInfo',
  '2': const [
    const {'1': 'Parking', '3': 1, '4': 1, '5': 9, '10': 'Parking'},
    const {'1': 'Latitude', '3': 2, '4': 1, '5': 1, '10': 'Latitude'},
    const {'1': 'Longitude', '3': 3, '4': 1, '5': 1, '10': 'Longitude'},
    const {'1': 'AccessInfo', '3': 4, '4': 1, '5': 9, '10': 'AccessInfo'},
    const {'1': 'RestAPIURL', '3': 5, '4': 1, '5': 9, '10': 'RestAPIURL'},
    const {'1': 'BookingSystemID', '3': 6, '4': 1, '5': 9, '10': 'BookingSystemID'},
  ],
};

/// Descriptor for `StayableInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stayableInfoDescriptor = $convert.base64Decode('CgxTdGF5YWJsZUluZm8SGAoHUGFya2luZxgBIAEoCVIHUGFya2luZxIaCghMYXRpdHVkZRgCIAEoAVIITGF0aXR1ZGUSHAoJTG9uZ2l0dWRlGAMgASgBUglMb25naXR1ZGUSHgoKQWNjZXNzSW5mbxgEIAEoCVIKQWNjZXNzSW5mbxIeCgpSZXN0QVBJVVJMGAUgASgJUgpSZXN0QVBJVVJMEigKD0Jvb2tpbmdTeXN0ZW1JRBgGIAEoCVIPQm9va2luZ1N5c3RlbUlE');
@$core.Deprecated('Use storeIDRequestDescriptor instead')
const StoreIDRequest$json = const {
  '1': 'StoreIDRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `StoreIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeIDRequestDescriptor = $convert.base64Decode('Cg5TdG9yZUlEUmVxdWVzdBIOCgJJRBgBIAEoCVICSUQ=');
@$core.Deprecated('Use qRResponseDescriptor instead')
const QRResponse$json = const {
  '1': 'QRResponse',
  '2': const [
    const {'1': 'QRCode', '3': 1, '4': 1, '5': 9, '10': 'QRCode'},
  ],
};

/// Descriptor for `QRResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List qRResponseDescriptor = $convert.base64Decode('CgpRUlJlc3BvbnNlEhYKBlFSQ29kZRgBIAEoCVIGUVJDb2Rl');
@$core.Deprecated('Use unlimitQRResponseDescriptor instead')
const UnlimitQRResponse$json = const {
  '1': 'UnlimitQRResponse',
  '2': const [
    const {'1': 'UnlimitQRCode', '3': 1, '4': 1, '5': 9, '10': 'UnlimitQRCode'},
  ],
};

/// Descriptor for `UnlimitQRResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlimitQRResponseDescriptor = $convert.base64Decode('ChFVbmxpbWl0UVJSZXNwb25zZRIkCg1VbmxpbWl0UVJDb2RlGAEgASgJUg1VbmxpbWl0UVJDb2Rl');
