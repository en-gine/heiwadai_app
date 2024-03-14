///
//  Generated code. Do not modify.
//  source: v1/admin/AdminData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use adminDataRequestDescriptor instead')
const AdminDataRequest$json = const {
  '1': 'AdminDataRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `AdminDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminDataRequestDescriptor = $convert.base64Decode('ChBBZG1pbkRhdGFSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRA==');
@$core.Deprecated('Use adminUpdateDataRequestDescriptor instead')
const AdminUpdateDataRequest$json = const {
  '1': 'AdminUpdateDataRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'IsActive', '3': 3, '4': 1, '5': 8, '10': 'IsActive'},
    const {'1': 'StoreID', '3': 4, '4': 1, '5': 9, '10': 'StoreID'},
  ],
};

/// Descriptor for `AdminUpdateDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminUpdateDataRequestDescriptor = $convert.base64Decode('ChZBZG1pblVwZGF0ZURhdGFSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRBISCgROYW1lGAIgASgJUgROYW1lEhoKCElzQWN0aXZlGAMgASgIUghJc0FjdGl2ZRIYCgdTdG9yZUlEGAQgASgJUgdTdG9yZUlE');
@$core.Deprecated('Use adminDataResponseDescriptor instead')
const AdminDataResponse$json = const {
  '1': 'AdminDataResponse',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'IsActive', '3': 3, '4': 1, '5': 8, '10': 'IsActive'},
    const {'1': 'Mail', '3': 4, '4': 1, '5': 9, '10': 'Mail'},
    const {'1': 'StoreID', '3': 5, '4': 1, '5': 9, '10': 'StoreID'},
    const {'1': 'IsConfirmed', '3': 6, '4': 1, '5': 8, '10': 'IsConfirmed'},
  ],
};

/// Descriptor for `AdminDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminDataResponseDescriptor = $convert.base64Decode('ChFBZG1pbkRhdGFSZXNwb25zZRIOCgJJRBgBIAEoCVICSUQSEgoETmFtZRgCIAEoCVIETmFtZRIaCghJc0FjdGl2ZRgDIAEoCFIISXNBY3RpdmUSEgoETWFpbBgEIAEoCVIETWFpbBIYCgdTdG9yZUlEGAUgASgJUgdTdG9yZUlEEiAKC0lzQ29uZmlybWVkGAYgASgIUgtJc0NvbmZpcm1lZA==');
@$core.Deprecated('Use adminListRequestDescriptor instead')
const AdminListRequest$json = const {
  '1': 'AdminListRequest',
};

/// Descriptor for `AdminListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminListRequestDescriptor = $convert.base64Decode('ChBBZG1pbkxpc3RSZXF1ZXN0');
@$core.Deprecated('Use adminListResponseDescriptor instead')
const AdminListResponse$json = const {
  '1': 'AdminListResponse',
  '2': const [
    const {'1': 'Admins', '3': 1, '4': 3, '5': 11, '6': '.server.admin.AdminDataResponse', '10': 'Admins'},
  ],
};

/// Descriptor for `AdminListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminListResponseDescriptor = $convert.base64Decode('ChFBZG1pbkxpc3RSZXNwb25zZRI3CgZBZG1pbnMYASADKAsyHy5zZXJ2ZXIuYWRtaW4uQWRtaW5EYXRhUmVzcG9uc2VSBkFkbWlucw==');
@$core.Deprecated('Use adminLoginLogDescriptor instead')
const AdminLoginLog$json = const {
  '1': 'AdminLoginLog',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'LoginAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'LoginAt'},
    const {'1': 'IP', '3': 3, '4': 1, '5': 9, '10': 'IP'},
    const {'1': 'UserAgent', '3': 4, '4': 1, '5': 9, '10': 'UserAgent'},
  ],
};

/// Descriptor for `AdminLoginLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminLoginLogDescriptor = $convert.base64Decode('Cg1BZG1pbkxvZ2luTG9nEhYKBlVzZXJJRBgBIAEoCVIGVXNlcklEEjQKB0xvZ2luQXQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgdMb2dpbkF0Eg4KAklQGAMgASgJUgJJUBIcCglVc2VyQWdlbnQYBCABKAlSCVVzZXJBZ2VudA==');
@$core.Deprecated('Use adminLoginLogRequestDescriptor instead')
const AdminLoginLogRequest$json = const {
  '1': 'AdminLoginLogRequest',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'Pager', '3': 2, '4': 1, '5': 11, '6': '.server.shared.Pager', '10': 'Pager'},
  ],
};

/// Descriptor for `AdminLoginLogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminLoginLogRequestDescriptor = $convert.base64Decode('ChRBZG1pbkxvZ2luTG9nUmVxdWVzdBIWCgZVc2VySUQYASABKAlSBlVzZXJJRBIqCgVQYWdlchgCIAEoCzIULnNlcnZlci5zaGFyZWQuUGFnZXJSBVBhZ2Vy');
@$core.Deprecated('Use adminLoginLogListResponseDescriptor instead')
const AdminLoginLogListResponse$json = const {
  '1': 'AdminLoginLogListResponse',
  '2': const [
    const {'1': 'LoginLogs', '3': 1, '4': 3, '5': 11, '6': '.server.admin.AdminLoginLog', '10': 'LoginLogs'},
    const {'1': 'PageResponse', '3': 2, '4': 1, '5': 11, '6': '.server.shared.PageResponse', '10': 'PageResponse'},
  ],
};

/// Descriptor for `AdminLoginLogListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminLoginLogListResponseDescriptor = $convert.base64Decode('ChlBZG1pbkxvZ2luTG9nTGlzdFJlc3BvbnNlEjkKCUxvZ2luTG9ncxgBIAMoCzIbLnNlcnZlci5hZG1pbi5BZG1pbkxvZ2luTG9nUglMb2dpbkxvZ3MSPwoMUGFnZVJlc3BvbnNlGAIgASgLMhsuc2VydmVyLnNoYXJlZC5QYWdlUmVzcG9uc2VSDFBhZ2VSZXNwb25zZQ==');
