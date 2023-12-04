///
//  Generated code. Do not modify.
//  source: v1/admin/MailMagazine.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use mailMagazineStatusDescriptor instead')
const MailMagazineStatus$json = const {
  '1': 'MailMagazineStatus',
  '2': const [
    const {'1': 'MailMagazineDraft', '2': 0},
    const {'1': 'MailMagazineSaved', '2': 1},
    const {'1': 'MailMagazineSentCompleted', '2': 2},
    const {'1': 'MailMagazineSentUnCompleted', '2': 3},
  ],
};

/// Descriptor for `MailMagazineStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mailMagazineStatusDescriptor = $convert.base64Decode('ChJNYWlsTWFnYXppbmVTdGF0dXMSFQoRTWFpbE1hZ2F6aW5lRHJhZnQQABIVChFNYWlsTWFnYXppbmVTYXZlZBABEh0KGU1haWxNYWdhemluZVNlbnRDb21wbGV0ZWQQAhIfChtNYWlsTWFnYXppbmVTZW50VW5Db21wbGV0ZWQQAw==');
@$core.Deprecated('Use getMailMagazineListRequestDescriptor instead')
const GetMailMagazineListRequest$json = const {
  '1': 'GetMailMagazineListRequest',
  '2': const [
    const {'1': 'Pager', '3': 1, '4': 1, '5': 11, '6': '.server.shared.Pager', '10': 'Pager'},
  ],
};

/// Descriptor for `GetMailMagazineListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMailMagazineListRequestDescriptor = $convert.base64Decode('ChpHZXRNYWlsTWFnYXppbmVMaXN0UmVxdWVzdBIqCgVQYWdlchgBIAEoCzIULnNlcnZlci5zaGFyZWQuUGFnZXJSBVBhZ2Vy');
@$core.Deprecated('Use mailMagazineDescriptor instead')
const MailMagazine$json = const {
  '1': 'MailMagazine',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Content', '3': 3, '4': 1, '5': 9, '10': 'Content'},
    const {'1': 'AuthorID', '3': 4, '4': 1, '5': 9, '10': 'AuthorID'},
    const {'1': 'TargetPrefecture', '3': 5, '4': 3, '5': 14, '6': '.server.shared.Prefecture', '10': 'TargetPrefecture'},
    const {'1': 'MailMagazineStatus', '3': 6, '4': 1, '5': 14, '6': '.server.admin.MailMagazineStatus', '10': 'MailMagazineStatus'},
    const {'1': 'UnsentCount', '3': 7, '4': 1, '5': 5, '10': 'UnsentCount'},
    const {'1': 'SentCount', '3': 8, '4': 1, '5': 5, '10': 'SentCount'},
    const {'1': 'SentAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'SentAt', '17': true},
  ],
  '8': const [
    const {'1': '_SentAt'},
  ],
};

/// Descriptor for `MailMagazine`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mailMagazineDescriptor = $convert.base64Decode('CgxNYWlsTWFnYXppbmUSDgoCSUQYASABKAlSAklEEhQKBVRpdGxlGAIgASgJUgVUaXRsZRIYCgdDb250ZW50GAMgASgJUgdDb250ZW50EhoKCEF1dGhvcklEGAQgASgJUghBdXRob3JJRBJFChBUYXJnZXRQcmVmZWN0dXJlGAUgAygOMhkuc2VydmVyLnNoYXJlZC5QcmVmZWN0dXJlUhBUYXJnZXRQcmVmZWN0dXJlElAKEk1haWxNYWdhemluZVN0YXR1cxgGIAEoDjIgLnNlcnZlci5hZG1pbi5NYWlsTWFnYXppbmVTdGF0dXNSEk1haWxNYWdhemluZVN0YXR1cxIgCgtVbnNlbnRDb3VudBgHIAEoBVILVW5zZW50Q291bnQSHAoJU2VudENvdW50GAggASgFUglTZW50Q291bnQSNwoGU2VudEF0GAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgAUgZTZW50QXSIAQFCCQoHX1NlbnRBdA==');
@$core.Deprecated('Use mailMagazinesResponseDescriptor instead')
const MailMagazinesResponse$json = const {
  '1': 'MailMagazinesResponse',
  '2': const [
    const {'1': 'MailMagazines', '3': 1, '4': 3, '5': 11, '6': '.server.admin.MailMagazine', '10': 'MailMagazines'},
  ],
};

/// Descriptor for `MailMagazinesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mailMagazinesResponseDescriptor = $convert.base64Decode('ChVNYWlsTWFnYXppbmVzUmVzcG9uc2USQAoNTWFpbE1hZ2F6aW5lcxgBIAMoCzIaLnNlcnZlci5hZG1pbi5NYWlsTWFnYXppbmVSDU1haWxNYWdhemluZXM=');
@$core.Deprecated('Use createDraftRequestDescriptor instead')
const CreateDraftRequest$json = const {
  '1': 'CreateDraftRequest',
  '2': const [
    const {'1': 'Title', '3': 1, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Content', '3': 2, '4': 1, '5': 9, '10': 'Content'},
    const {'1': 'TargetPrefectures', '3': 3, '4': 3, '5': 14, '6': '.server.shared.Prefecture', '10': 'TargetPrefectures'},
  ],
};

/// Descriptor for `CreateDraftRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDraftRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVEcmFmdFJlcXVlc3QSFAoFVGl0bGUYASABKAlSBVRpdGxlEhgKB0NvbnRlbnQYAiABKAlSB0NvbnRlbnQSRwoRVGFyZ2V0UHJlZmVjdHVyZXMYAyADKA4yGS5zZXJ2ZXIuc2hhcmVkLlByZWZlY3R1cmVSEVRhcmdldFByZWZlY3R1cmVz');
@$core.Deprecated('Use updateMailMagazineRequestDescriptor instead')
const UpdateMailMagazineRequest$json = const {
  '1': 'UpdateMailMagazineRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'Title', '17': true},
    const {'1': 'Content', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'Content', '17': true},
    const {'1': 'TargetPrefectures', '3': 5, '4': 3, '5': 14, '6': '.server.shared.Prefecture', '10': 'TargetPrefectures'},
  ],
  '8': const [
    const {'1': '_Title'},
    const {'1': '_Content'},
  ],
};

/// Descriptor for `UpdateMailMagazineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMailMagazineRequestDescriptor = $convert.base64Decode('ChlVcGRhdGVNYWlsTWFnYXppbmVSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRBIZCgVUaXRsZRgCIAEoCUgAUgVUaXRsZYgBARIdCgdDb250ZW50GAMgASgJSAFSB0NvbnRlbnSIAQESRwoRVGFyZ2V0UHJlZmVjdHVyZXMYBSADKA4yGS5zZXJ2ZXIuc2hhcmVkLlByZWZlY3R1cmVSEVRhcmdldFByZWZlY3R1cmVzQggKBl9UaXRsZUIKCghfQ29udGVudA==');
@$core.Deprecated('Use deleteMailMagazineRequestDescriptor instead')
const DeleteMailMagazineRequest$json = const {
  '1': 'DeleteMailMagazineRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `DeleteMailMagazineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMailMagazineRequestDescriptor = $convert.base64Decode('ChlEZWxldGVNYWlsTWFnYXppbmVSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRA==');
@$core.Deprecated('Use sendMailMagazineRequestDescriptor instead')
const SendMailMagazineRequest$json = const {
  '1': 'SendMailMagazineRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `SendMailMagazineRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMailMagazineRequestDescriptor = $convert.base64Decode('ChdTZW5kTWFpbE1hZ2F6aW5lUmVxdWVzdBIOCgJJRBgBIAEoCVICSUQ=');
