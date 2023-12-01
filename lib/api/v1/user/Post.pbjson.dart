///
//  Generated code. Do not modify.
//  source: v1/user/Post.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use postRequestDescriptor instead')
const PostRequest$json = const {
  '1': 'PostRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 13, '10': 'ID'},
  ],
};

/// Descriptor for `PostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postRequestDescriptor = $convert.base64Decode('CgtQb3N0UmVxdWVzdBIOCgJJRBgBIAEoDVICSUQ=');
@$core.Deprecated('Use postsResponseDescriptor instead')
const PostsResponse$json = const {
  '1': 'PostsResponse',
  '2': const [
    const {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.server.user.PostResponse', '10': 'posts'},
  ],
};

/// Descriptor for `PostsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postsResponseDescriptor = $convert.base64Decode('Cg1Qb3N0c1Jlc3BvbnNlEi8KBXBvc3RzGAEgAygLMhkuc2VydmVyLnVzZXIuUG9zdFJlc3BvbnNlUgVwb3N0cw==');
@$core.Deprecated('Use postResponseDescriptor instead')
const PostResponse$json = const {
  '1': 'PostResponse',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 13, '10': 'ID'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Content', '3': 3, '4': 1, '5': 9, '10': 'Content'},
    const {'1': 'Author', '3': 4, '4': 1, '5': 9, '10': 'Author'},
    const {'1': 'PostDate', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'PostDate'},
  ],
};

/// Descriptor for `PostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postResponseDescriptor = $convert.base64Decode('CgxQb3N0UmVzcG9uc2USDgoCSUQYASABKA1SAklEEhQKBVRpdGxlGAIgASgJUgVUaXRsZRIYCgdDb250ZW50GAMgASgJUgdDb250ZW50EhYKBkF1dGhvchgEIAEoCVIGQXV0aG9yEjYKCFBvc3REYXRlGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIUG9zdERhdGU=');
