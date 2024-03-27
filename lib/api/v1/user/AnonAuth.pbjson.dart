///
//  Generated code. Do not modify.
//  source: v1/user/AnonAuth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userAuthRequestDescriptor instead')
const UserAuthRequest$json = const {
  '1': 'UserAuthRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UserAuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAuthRequestDescriptor = $convert.base64Decode('Cg9Vc2VyQXV0aFJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use userMailRequestDescriptor instead')
const UserMailRequest$json = const {
  '1': 'UserMailRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UserMailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userMailRequestDescriptor = $convert.base64Decode('Cg9Vc2VyTWFpbFJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWls');
@$core.Deprecated('Use anonTokenResponseDescriptor instead')
const AnonTokenResponse$json = const {
  '1': 'AnonTokenResponse',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'expiresIn', '3': 3, '4': 1, '5': 3, '10': 'expiresIn'},
  ],
};

/// Descriptor for `AnonTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List anonTokenResponseDescriptor = $convert.base64Decode('ChFBbm9uVG9rZW5SZXNwb25zZRIgCgthY2Nlc3NUb2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIgoMcmVmcmVzaFRva2VuGAIgASgJUgxyZWZyZXNoVG9rZW4SHAoJZXhwaXJlc0luGAMgASgDUglleHBpcmVzSW4=');
@$core.Deprecated('Use resendInviteRequestDescriptor instead')
const ResendInviteRequest$json = const {
  '1': 'ResendInviteRequest',
  '2': const [
    const {'1': 'Mail', '3': 1, '4': 1, '5': 9, '10': 'Mail'},
  ],
};

/// Descriptor for `ResendInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resendInviteRequestDescriptor = $convert.base64Decode('ChNSZXNlbmRJbnZpdGVSZXF1ZXN0EhIKBE1haWwYASABKAlSBE1haWw=');
@$core.Deprecated('Use isUnderRegisterResponseDescriptor instead')
const IsUnderRegisterResponse$json = const {
  '1': 'IsUnderRegisterResponse',
  '2': const [
    const {'1': 'isUnderRegister', '3': 1, '4': 1, '5': 8, '10': 'isUnderRegister'},
  ],
};

/// Descriptor for `IsUnderRegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isUnderRegisterResponseDescriptor = $convert.base64Decode('ChdJc1VuZGVyUmVnaXN0ZXJSZXNwb25zZRIoCg9pc1VuZGVyUmVnaXN0ZXIYASABKAhSD2lzVW5kZXJSZWdpc3Rlcg==');
