///
//  Generated code. Do not modify.
//  source: v1/admin/UserCheckin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use checkinDataDescriptor instead')
const CheckinData$json = const {
  '1': 'CheckinData',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'StoreID', '3': 2, '4': 1, '5': 9, '10': 'StoreID'},
    const {'1': 'StoreName', '3': 3, '4': 1, '5': 9, '10': 'StoreName'},
    const {'1': 'StoreBranchName', '3': 4, '4': 1, '5': 9, '10': 'StoreBranchName'},
    const {'1': 'UserID', '3': 5, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'UserFirstName', '3': 6, '4': 1, '5': 9, '10': 'UserFirstName'},
    const {'1': 'UserLastName', '3': 7, '4': 1, '5': 9, '10': 'UserLastName'},
    const {'1': 'CheckinAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'CheckinAt', '17': true},
    const {'1': 'IsArchive', '3': 9, '4': 1, '5': 8, '10': 'IsArchive'},
  ],
  '8': const [
    const {'1': '_CheckinAt'},
  ],
};

/// Descriptor for `CheckinData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkinDataDescriptor = $convert.base64Decode('CgtDaGVja2luRGF0YRIOCgJJRBgBIAEoCVICSUQSGAoHU3RvcmVJRBgCIAEoCVIHU3RvcmVJRBIcCglTdG9yZU5hbWUYAyABKAlSCVN0b3JlTmFtZRIoCg9TdG9yZUJyYW5jaE5hbWUYBCABKAlSD1N0b3JlQnJhbmNoTmFtZRIWCgZVc2VySUQYBSABKAlSBlVzZXJJRBIkCg1Vc2VyRmlyc3ROYW1lGAYgASgJUg1Vc2VyRmlyc3ROYW1lEiIKDFVzZXJMYXN0TmFtZRgHIAEoCVIMVXNlckxhc3ROYW1lEj0KCUNoZWNraW5BdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJQ2hlY2tpbkF0iAEBEhwKCUlzQXJjaGl2ZRgJIAEoCFIJSXNBcmNoaXZlQgwKCl9DaGVja2luQXQ=');
@$core.Deprecated('Use checkinsResponseDescriptor instead')
const CheckinsResponse$json = const {
  '1': 'CheckinsResponse',
  '2': const [
    const {'1': 'Checkins', '3': 1, '4': 3, '5': 11, '6': '.server.admin.CheckinData', '10': 'Checkins'},
    const {'1': 'PageResponse', '3': 2, '4': 1, '5': 11, '6': '.server.shared.PageResponse', '9': 0, '10': 'PageResponse', '17': true},
  ],
  '8': const [
    const {'1': '_PageResponse'},
  ],
};

/// Descriptor for `CheckinsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkinsResponseDescriptor = $convert.base64Decode('ChBDaGVja2luc1Jlc3BvbnNlEjUKCENoZWNraW5zGAEgAygLMhkuc2VydmVyLmFkbWluLkNoZWNraW5EYXRhUghDaGVja2lucxJECgxQYWdlUmVzcG9uc2UYAiABKAsyGy5zZXJ2ZXIuc2hhcmVkLlBhZ2VSZXNwb25zZUgAUgxQYWdlUmVzcG9uc2WIAQFCDwoNX1BhZ2VSZXNwb25zZQ==');
@$core.Deprecated('Use getRecentAllCheckinRequestDescriptor instead')
const GetRecentAllCheckinRequest$json = const {
  '1': 'GetRecentAllCheckinRequest',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `GetRecentAllCheckinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecentAllCheckinRequestDescriptor = $convert.base64Decode('ChpHZXRSZWNlbnRBbGxDaGVja2luUmVxdWVzdBIUCgVsaW1pdBgBIAEoBVIFbGltaXQ=');
@$core.Deprecated('Use userCheckinRequestDescriptor instead')
const UserCheckinRequest$json = const {
  '1': 'UserCheckinRequest',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'Pager', '3': 2, '4': 1, '5': 11, '6': '.server.shared.Pager', '10': 'Pager'},
  ],
};

/// Descriptor for `UserCheckinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCheckinRequestDescriptor = $convert.base64Decode('ChJVc2VyQ2hlY2tpblJlcXVlc3QSFgoGVXNlcklEGAEgASgJUgZVc2VySUQSKgoFUGFnZXIYAiABKAsyFC5zZXJ2ZXIuc2hhcmVkLlBhZ2VyUgVQYWdlcg==');
