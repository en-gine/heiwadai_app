///
//  Generated code. Do not modify.
//  source: v1/admin/Auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use adminAuthRequestDescriptor instead')
const AdminAuthRequest$json = const {
  '1': 'AdminAuthRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AdminAuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminAuthRequestDescriptor = $convert.base64Decode('ChBBZG1pbkF1dGhSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use adminAuthResponseDescriptor instead')
const AdminAuthResponse$json = const {
  '1': 'AdminAuthResponse',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'expiresIn', '3': 2, '4': 1, '5': 3, '10': 'expiresIn'},
    const {'1': 'refreshToken', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `AdminAuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminAuthResponseDescriptor = $convert.base64Decode('ChFBZG1pbkF1dGhSZXNwb25zZRIgCgthY2Nlc3NUb2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SHAoJZXhwaXJlc0luGAIgASgDUglleHBpcmVzSW4SIgoMcmVmcmVzaFRva2VuGAMgASgJUgxyZWZyZXNoVG9rZW4=');
@$core.Deprecated('Use adminRegisterRequestDescriptor instead')
const AdminRegisterRequest$json = const {
  '1': 'AdminRegisterRequest',
  '2': const [
    const {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Mail', '3': 2, '4': 1, '5': 9, '10': 'Mail'},
    const {'1': 'BelongStoreID', '3': 4, '4': 1, '5': 9, '10': 'BelongStoreID'},
  ],
};

/// Descriptor for `AdminRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminRegisterRequestDescriptor = $convert.base64Decode('ChRBZG1pblJlZ2lzdGVyUmVxdWVzdBISCgROYW1lGAEgASgJUgROYW1lEhIKBE1haWwYAiABKAlSBE1haWwSJAoNQmVsb25nU3RvcmVJRBgEIAEoCVINQmVsb25nU3RvcmVJRA==');
@$core.Deprecated('Use resetPasswordRequestDescriptor instead')
const ResetPasswordRequest$json = const {
  '1': 'ResetPasswordRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `ResetPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordRequestDescriptor = $convert.base64Decode('ChRSZXNldFBhc3N3b3JkUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWw=');
@$core.Deprecated('Use updatePasswordRequestDescriptor instead')
const UpdatePasswordRequest$json = const {
  '1': 'UpdatePasswordRequest',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UpdatePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePasswordRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVQYXNzd29yZFJlcXVlc3QSGgoIcGFzc3dvcmQYASABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use updateEmailRequestDescriptor instead')
const UpdateEmailRequest$json = const {
  '1': 'UpdateEmailRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UpdateEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEmailRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVFbWFpbFJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWls');
