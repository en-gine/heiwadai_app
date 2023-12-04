///
//  Generated code. Do not modify.
//  source: v1/shared/Pager.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pagerDescriptor instead')
const Pager$json = const {
  '1': 'Pager',
  '2': const [
    const {'1': 'CurrentPage', '3': 1, '4': 1, '5': 13, '9': 0, '10': 'CurrentPage', '17': true},
    const {'1': 'PerPage', '3': 2, '4': 1, '5': 13, '9': 1, '10': 'PerPage', '17': true},
  ],
  '8': const [
    const {'1': '_CurrentPage'},
    const {'1': '_PerPage'},
  ],
};

/// Descriptor for `Pager`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pagerDescriptor = $convert.base64Decode('CgVQYWdlchIlCgtDdXJyZW50UGFnZRgBIAEoDUgAUgtDdXJyZW50UGFnZYgBARIdCgdQZXJQYWdlGAIgASgNSAFSB1BlclBhZ2WIAQFCDgoMX0N1cnJlbnRQYWdlQgoKCF9QZXJQYWdl');
@$core.Deprecated('Use pageResponseDescriptor instead')
const PageResponse$json = const {
  '1': 'PageResponse',
  '2': const [
    const {'1': 'TotalCount', '3': 1, '4': 1, '5': 13, '10': 'TotalCount'},
    const {'1': 'TotalPage', '3': 2, '4': 1, '5': 13, '10': 'TotalPage'},
    const {'1': 'CurrentPage', '3': 3, '4': 1, '5': 13, '10': 'CurrentPage'},
    const {'1': 'PerPage', '3': 4, '4': 1, '5': 13, '10': 'PerPage'},
  ],
};

/// Descriptor for `PageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageResponseDescriptor = $convert.base64Decode('CgxQYWdlUmVzcG9uc2USHgoKVG90YWxDb3VudBgBIAEoDVIKVG90YWxDb3VudBIcCglUb3RhbFBhZ2UYAiABKA1SCVRvdGFsUGFnZRIgCgtDdXJyZW50UGFnZRgDIAEoDVILQ3VycmVudFBhZ2USGAoHUGVyUGFnZRgEIAEoDVIHUGVyUGFnZQ==');
