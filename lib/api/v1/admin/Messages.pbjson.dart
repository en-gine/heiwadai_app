///
//  Generated code. Do not modify.
//  source: v1/admin/Messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageIDRequestDescriptor instead')
const MessageIDRequest$json = const {
  '1': 'MessageIDRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `MessageIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIDRequestDescriptor = $convert.base64Decode('ChBNZXNzYWdlSURSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRA==');
@$core.Deprecated('Use messagesResponseDescriptor instead')
const MessagesResponse$json = const {
  '1': 'MessagesResponse',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.server.admin.MessageResponse', '10': 'messages'},
    const {'1': 'PageResponse', '3': 2, '4': 1, '5': 11, '6': '.server.shared.PageResponse', '10': 'PageResponse'},
  ],
};

/// Descriptor for `MessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messagesResponseDescriptor = $convert.base64Decode('ChBNZXNzYWdlc1Jlc3BvbnNlEjkKCG1lc3NhZ2VzGAEgAygLMh0uc2VydmVyLmFkbWluLk1lc3NhZ2VSZXNwb25zZVIIbWVzc2FnZXMSPwoMUGFnZVJlc3BvbnNlGAIgASgLMhsuc2VydmVyLnNoYXJlZC5QYWdlUmVzcG9uc2VSDFBhZ2VSZXNwb25zZQ==');
@$core.Deprecated('Use getMessageRequestDescriptor instead')
const GetMessageRequest$json = const {
  '1': 'GetMessageRequest',
  '2': const [
    const {'1': 'Pager', '3': 1, '4': 1, '5': 11, '6': '.server.shared.Pager', '10': 'Pager'},
  ],
};

/// Descriptor for `GetMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessageRequestDescriptor = $convert.base64Decode('ChFHZXRNZXNzYWdlUmVxdWVzdBIqCgVQYWdlchgBIAEoCzIULnNlcnZlci5zaGFyZWQuUGFnZXJSBVBhZ2Vy');
@$core.Deprecated('Use messageCreateRequestDescriptor instead')
const MessageCreateRequest$json = const {
  '1': 'MessageCreateRequest',
  '2': const [
    const {'1': 'Title', '3': 1, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Content', '3': 2, '4': 1, '5': 9, '10': 'Content'},
    const {'1': 'DisplayDate', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'DisplayDate'},
  ],
};

/// Descriptor for `MessageCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageCreateRequestDescriptor = $convert.base64Decode('ChRNZXNzYWdlQ3JlYXRlUmVxdWVzdBIUCgVUaXRsZRgBIAEoCVIFVGl0bGUSGAoHQ29udGVudBgCIAEoCVIHQ29udGVudBI8CgtEaXNwbGF5RGF0ZRgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC0Rpc3BsYXlEYXRl');
@$core.Deprecated('Use messageUpdateRequestDescriptor instead')
const MessageUpdateRequest$json = const {
  '1': 'MessageUpdateRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'Title', '17': true},
    const {'1': 'Content', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'Content', '17': true},
    const {'1': 'DisplayDate', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'DisplayDate', '17': true},
  ],
  '8': const [
    const {'1': '_Title'},
    const {'1': '_Content'},
    const {'1': '_DisplayDate'},
  ],
};

/// Descriptor for `MessageUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageUpdateRequestDescriptor = $convert.base64Decode('ChRNZXNzYWdlVXBkYXRlUmVxdWVzdBIOCgJJRBgBIAEoCVICSUQSGQoFVGl0bGUYAiABKAlIAFIFVGl0bGWIAQESHQoHQ29udGVudBgDIAEoCUgBUgdDb250ZW50iAEBEkEKC0Rpc3BsYXlEYXRlGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgCUgtEaXNwbGF5RGF0ZYgBAUIICgZfVGl0bGVCCgoIX0NvbnRlbnRCDgoMX0Rpc3BsYXlEYXRl');
@$core.Deprecated('Use messageResponseDescriptor instead')
const MessageResponse$json = const {
  '1': 'MessageResponse',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Content', '3': 3, '4': 1, '5': 9, '10': 'Content'},
    const {'1': 'AuthorID', '3': 4, '4': 1, '5': 9, '10': 'AuthorID'},
    const {'1': 'DisplayDate', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'DisplayDate'},
    const {'1': 'CreateAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreateAt'},
  ],
};

/// Descriptor for `MessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageResponseDescriptor = $convert.base64Decode('Cg9NZXNzYWdlUmVzcG9uc2USDgoCSUQYASABKAlSAklEEhQKBVRpdGxlGAIgASgJUgVUaXRsZRIYCgdDb250ZW50GAMgASgJUgdDb250ZW50EhoKCEF1dGhvcklEGAQgASgJUghBdXRob3JJRBI8CgtEaXNwbGF5RGF0ZRgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC0Rpc3BsYXlEYXRlEjYKCENyZWF0ZUF0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIQ3JlYXRlQXQ=');
