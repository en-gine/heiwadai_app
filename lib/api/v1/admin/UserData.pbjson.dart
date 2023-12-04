///
//  Generated code. Do not modify.
//  source: v1/admin/UserData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userUpdateDataRequestDescriptor instead')
const UserUpdateDataRequest$json = const {
  '1': 'UserUpdateDataRequest',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.server.user.UserUpdateDataRequest', '10': 'User'},
    const {'1': 'InnerNote', '3': 2, '4': 1, '5': 9, '10': 'InnerNote'},
    const {'1': 'IsBlackCustomer', '3': 3, '4': 1, '5': 8, '10': 'IsBlackCustomer'},
  ],
};

/// Descriptor for `UserUpdateDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUpdateDataRequestDescriptor = $convert.base64Decode('ChVVc2VyVXBkYXRlRGF0YVJlcXVlc3QSNgoEVXNlchgBIAEoCzIiLnNlcnZlci51c2VyLlVzZXJVcGRhdGVEYXRhUmVxdWVzdFIEVXNlchIcCglJbm5lck5vdGUYAiABKAlSCUlubmVyTm90ZRIoCg9Jc0JsYWNrQ3VzdG9tZXIYAyABKAhSD0lzQmxhY2tDdXN0b21lcg==');
@$core.Deprecated('Use userDataResponseDescriptor instead')
const UserDataResponse$json = const {
  '1': 'UserDataResponse',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.server.user.UserDataResponse', '10': 'User'},
    const {'1': 'InnerNote', '3': 2, '4': 1, '5': 9, '10': 'InnerNote'},
    const {'1': 'IsBlackCustomer', '3': 3, '4': 1, '5': 8, '10': 'IsBlackCustomer'},
  ],
};

/// Descriptor for `UserDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataResponseDescriptor = $convert.base64Decode('ChBVc2VyRGF0YVJlc3BvbnNlEjEKBFVzZXIYASABKAsyHS5zZXJ2ZXIudXNlci5Vc2VyRGF0YVJlc3BvbnNlUgRVc2VyEhwKCUlubmVyTm90ZRgCIAEoCVIJSW5uZXJOb3RlEigKD0lzQmxhY2tDdXN0b21lchgDIAEoCFIPSXNCbGFja0N1c3RvbWVy');
@$core.Deprecated('Use userWithCheckInDescriptor instead')
const UserWithCheckIn$json = const {
  '1': 'UserWithCheckIn',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.server.user.UserDataResponse', '10': 'User'},
    const {'1': 'LastCheckinAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'LastCheckinAt', '17': true},
  ],
  '8': const [
    const {'1': '_LastCheckinAt'},
  ],
};

/// Descriptor for `UserWithCheckIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userWithCheckInDescriptor = $convert.base64Decode('Cg9Vc2VyV2l0aENoZWNrSW4SMQoEVXNlchgBIAEoCzIdLnNlcnZlci51c2VyLlVzZXJEYXRhUmVzcG9uc2VSBFVzZXISRQoNTGFzdENoZWNraW5BdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFINTGFzdENoZWNraW5BdIgBAUIQCg5fTGFzdENoZWNraW5BdA==');
@$core.Deprecated('Use userListResponseDescriptor instead')
const UserListResponse$json = const {
  '1': 'UserListResponse',
  '2': const [
    const {'1': 'Users', '3': 1, '4': 3, '5': 11, '6': '.server.admin.UserWithCheckIn', '10': 'Users'},
    const {'1': 'PageResponse', '3': 3, '4': 1, '5': 11, '6': '.server.shared.PageResponse', '10': 'PageResponse'},
  ],
};

/// Descriptor for `UserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListResponseDescriptor = $convert.base64Decode('ChBVc2VyTGlzdFJlc3BvbnNlEjMKBVVzZXJzGAEgAygLMh0uc2VydmVyLmFkbWluLlVzZXJXaXRoQ2hlY2tJblIFVXNlcnMSPwoMUGFnZVJlc3BvbnNlGAMgASgLMhsuc2VydmVyLnNoYXJlZC5QYWdlUmVzcG9uc2VSDFBhZ2VSZXNwb25zZQ==');
@$core.Deprecated('Use userDeleteRequestDescriptor instead')
const UserDeleteRequest$json = const {
  '1': 'UserDeleteRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `UserDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDeleteRequestDescriptor = $convert.base64Decode('ChFVc2VyRGVsZXRlUmVxdWVzdBIOCgJJRBgBIAEoCVICSUQ=');
@$core.Deprecated('Use searchFilterDescriptor instead')
const SearchFilter$json = const {
  '1': 'SearchFilter',
  '2': const [
    const {'1': 'LastName', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'LastName', '17': true},
    const {'1': 'FirstName', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'FirstName', '17': true},
    const {'1': 'LastNameKana', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'LastNameKana', '17': true},
    const {'1': 'FirstNameKana', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'FirstNameKana', '17': true},
    const {'1': 'Prefecture', '3': 5, '4': 1, '5': 14, '6': '.server.shared.Prefecture', '9': 4, '10': 'Prefecture', '17': true},
  ],
  '8': const [
    const {'1': '_LastName'},
    const {'1': '_FirstName'},
    const {'1': '_LastNameKana'},
    const {'1': '_FirstNameKana'},
    const {'1': '_Prefecture'},
  ],
};

/// Descriptor for `SearchFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchFilterDescriptor = $convert.base64Decode('CgxTZWFyY2hGaWx0ZXISHwoITGFzdE5hbWUYASABKAlIAFIITGFzdE5hbWWIAQESIQoJRmlyc3ROYW1lGAIgASgJSAFSCUZpcnN0TmFtZYgBARInCgxMYXN0TmFtZUthbmEYAyABKAlIAlIMTGFzdE5hbWVLYW5hiAEBEikKDUZpcnN0TmFtZUthbmEYBCABKAlIA1INRmlyc3ROYW1lS2FuYYgBARI+CgpQcmVmZWN0dXJlGAUgASgOMhkuc2VydmVyLnNoYXJlZC5QcmVmZWN0dXJlSARSClByZWZlY3R1cmWIAQFCCwoJX0xhc3ROYW1lQgwKCl9GaXJzdE5hbWVCDwoNX0xhc3ROYW1lS2FuYUIQCg5fRmlyc3ROYW1lS2FuYUINCgtfUHJlZmVjdHVyZQ==');
@$core.Deprecated('Use userListFilterRequestDescriptor instead')
const UserListFilterRequest$json = const {
  '1': 'UserListFilterRequest',
  '2': const [
    const {'1': 'Search', '3': 1, '4': 1, '5': 11, '6': '.server.admin.SearchFilter', '10': 'Search'},
    const {'1': 'Pager', '3': 2, '4': 1, '5': 11, '6': '.server.shared.Pager', '10': 'Pager'},
  ],
};

/// Descriptor for `UserListFilterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListFilterRequestDescriptor = $convert.base64Decode('ChVVc2VyTGlzdEZpbHRlclJlcXVlc3QSMgoGU2VhcmNoGAEgASgLMhouc2VydmVyLmFkbWluLlNlYXJjaEZpbHRlclIGU2VhcmNoEioKBVBhZ2VyGAIgASgLMhQuc2VydmVyLnNoYXJlZC5QYWdlclIFUGFnZXI=');
