///
//  Generated code. Do not modify.
//  source: v1/admin/Auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use adminRefreshTokenRequestDescriptor instead')
const AdminRefreshTokenRequest$json = const {
  '1': 'AdminRefreshTokenRequest',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `AdminRefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminRefreshTokenRequestDescriptor = $convert.base64Decode('ChhBZG1pblJlZnJlc2hUb2tlblJlcXVlc3QSIAoLYWNjZXNzVG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEiIKDHJlZnJlc2hUb2tlbhgCIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use adminAuthTokenResponseDescriptor instead')
const AdminAuthTokenResponse$json = const {
  '1': 'AdminAuthTokenResponse',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'expiresIn', '3': 2, '4': 1, '5': 3, '10': 'expiresIn'},
    const {'1': 'refreshToken', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `AdminAuthTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminAuthTokenResponseDescriptor = $convert.base64Decode('ChZBZG1pbkF1dGhUb2tlblJlc3BvbnNlEiAKC2FjY2Vzc1Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbhIcCglleHBpcmVzSW4YAiABKANSCWV4cGlyZXNJbhIiCgxyZWZyZXNoVG9rZW4YAyABKAlSDHJlZnJlc2hUb2tlbg==');
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
