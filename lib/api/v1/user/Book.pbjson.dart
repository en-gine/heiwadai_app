///
//  Generated code. Do not modify.
//  source: v1/user/Book.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use roomTypeDescriptor instead')
const RoomType$json = const {
  '1': 'RoomType',
  '2': const [
    const {'1': 'RoomTypeSingle', '2': 0},
    const {'1': 'RoomTypeSemiDouble', '2': 1},
    const {'1': 'RoomTypeDouble', '2': 2},
    const {'1': 'RoomTypeTwin', '2': 3},
    const {'1': 'RoomTypeFourth', '2': 4},
    const {'1': 'RoomTypeUnknown', '2': 5},
  ],
};

/// Descriptor for `RoomType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roomTypeDescriptor = $convert.base64Decode('CghSb29tVHlwZRISCg5Sb29tVHlwZVNpbmdsZRAAEhYKElJvb21UeXBlU2VtaURvdWJsZRABEhIKDlJvb21UeXBlRG91YmxlEAISEAoMUm9vbVR5cGVUd2luEAMSEgoOUm9vbVR5cGVGb3VydGgQBBITCg9Sb29tVHlwZVVua25vd24QBQ==');
@$core.Deprecated('Use smokeTypeDescriptor instead')
const SmokeType$json = const {
  '1': 'SmokeType',
  '2': const [
    const {'1': 'SmokeTypeNonSmoking', '2': 0},
    const {'1': 'SmokeTypeSmoking', '2': 1},
    const {'1': 'SmokeTypeUnknown', '2': 2},
  ],
};

/// Descriptor for `SmokeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List smokeTypeDescriptor = $convert.base64Decode('CglTbW9rZVR5cGUSFwoTU21va2VUeXBlTm9uU21va2luZxAAEhQKEFNtb2tlVHlwZVNtb2tpbmcQARIUChBTbW9rZVR5cGVVbmtub3duEAI=');
@$core.Deprecated('Use bookResponseDescriptor instead')
const BookResponse$json = const {
  '1': 'BookResponse',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'StayFrom', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'StayFrom'},
    const {'1': 'StayTo', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'StayTo'},
    const {'1': 'Adult', '3': 4, '4': 1, '5': 13, '10': 'Adult'},
    const {'1': 'Child', '3': 5, '4': 1, '5': 13, '10': 'Child'},
    const {'1': 'RoomCount', '3': 6, '4': 1, '5': 13, '10': 'RoomCount'},
    const {'1': 'CheckInTime', '3': 7, '4': 1, '5': 9, '10': 'CheckInTime'},
    const {'1': 'TotalCost', '3': 8, '4': 1, '5': 13, '10': 'TotalCost'},
    const {'1': 'GuestData', '3': 9, '4': 1, '5': 11, '6': '.server.user.GuestData', '10': 'GuestData'},
    const {'1': 'BookPlan', '3': 10, '4': 1, '5': 11, '6': '.server.user.BookPlan', '10': 'BookPlan'},
    const {'1': 'Note', '3': 12, '4': 1, '5': 9, '10': 'Note'},
  ],
};

/// Descriptor for `BookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookResponseDescriptor = $convert.base64Decode('CgxCb29rUmVzcG9uc2USDgoCSUQYASABKAlSAklEEjYKCFN0YXlGcm9tGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIU3RheUZyb20SMgoGU3RheVRvGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGU3RheVRvEhQKBUFkdWx0GAQgASgNUgVBZHVsdBIUCgVDaGlsZBgFIAEoDVIFQ2hpbGQSHAoJUm9vbUNvdW50GAYgASgNUglSb29tQ291bnQSIAoLQ2hlY2tJblRpbWUYByABKAlSC0NoZWNrSW5UaW1lEhwKCVRvdGFsQ29zdBgIIAEoDVIJVG90YWxDb3N0EjQKCUd1ZXN0RGF0YRgJIAEoCzIWLnNlcnZlci51c2VyLkd1ZXN0RGF0YVIJR3Vlc3REYXRhEjEKCEJvb2tQbGFuGAogASgLMhUuc2VydmVyLnVzZXIuQm9va1BsYW5SCEJvb2tQbGFuEhIKBE5vdGUYDCABKAlSBE5vdGU=');
@$core.Deprecated('Use guestDataDescriptor instead')
const GuestData$json = const {
  '1': 'GuestData',
  '2': const [
    const {'1': 'FirstName', '3': 1, '4': 1, '5': 9, '10': 'FirstName'},
    const {'1': 'LastName', '3': 2, '4': 1, '5': 9, '10': 'LastName'},
    const {'1': 'FirstNameKana', '3': 3, '4': 1, '5': 9, '10': 'FirstNameKana'},
    const {'1': 'LastNameKana', '3': 4, '4': 1, '5': 9, '10': 'LastNameKana'},
    const {'1': 'CompanyName', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'CompanyName', '17': true},
    const {'1': 'ZipCode', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'ZipCode', '17': true},
    const {'1': 'Prefecture', '3': 7, '4': 1, '5': 14, '6': '.server.shared.Prefecture', '9': 2, '10': 'Prefecture', '17': true},
    const {'1': 'City', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'City', '17': true},
    const {'1': 'Address', '3': 9, '4': 1, '5': 9, '9': 4, '10': 'Address', '17': true},
    const {'1': 'Tel', '3': 10, '4': 1, '5': 9, '9': 5, '10': 'Tel', '17': true},
    const {'1': 'Mail', '3': 11, '4': 1, '5': 9, '10': 'Mail'},
  ],
  '8': const [
    const {'1': '_CompanyName'},
    const {'1': '_ZipCode'},
    const {'1': '_Prefecture'},
    const {'1': '_City'},
    const {'1': '_Address'},
    const {'1': '_Tel'},
  ],
};

/// Descriptor for `GuestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guestDataDescriptor = $convert.base64Decode('CglHdWVzdERhdGESHAoJRmlyc3ROYW1lGAEgASgJUglGaXJzdE5hbWUSGgoITGFzdE5hbWUYAiABKAlSCExhc3ROYW1lEiQKDUZpcnN0TmFtZUthbmEYAyABKAlSDUZpcnN0TmFtZUthbmESIgoMTGFzdE5hbWVLYW5hGAQgASgJUgxMYXN0TmFtZUthbmESJQoLQ29tcGFueU5hbWUYBSABKAlIAFILQ29tcGFueU5hbWWIAQESHQoHWmlwQ29kZRgGIAEoCUgBUgdaaXBDb2RliAEBEj4KClByZWZlY3R1cmUYByABKA4yGS5zZXJ2ZXIuc2hhcmVkLlByZWZlY3R1cmVIAlIKUHJlZmVjdHVyZYgBARIXCgRDaXR5GAggASgJSANSBENpdHmIAQESHQoHQWRkcmVzcxgJIAEoCUgEUgdBZGRyZXNziAEBEhUKA1RlbBgKIAEoCUgFUgNUZWyIAQESEgoETWFpbBgLIAEoCVIETWFpbEIOCgxfQ29tcGFueU5hbWVCCgoIX1ppcENvZGVCDQoLX1ByZWZlY3R1cmVCBwoFX0NpdHlCCgoIX0FkZHJlc3NCBgoEX1RlbA==');
@$core.Deprecated('Use planDescriptor instead')
const Plan$json = const {
  '1': 'Plan',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Price', '3': 3, '4': 1, '5': 13, '10': 'Price'},
    const {'1': 'ImageURL', '3': 4, '4': 1, '5': 9, '10': 'ImageURL'},
    const {'1': 'RoomType', '3': 5, '4': 1, '5': 14, '6': '.server.user.RoomType', '10': 'RoomType'},
    const {'1': 'MealType', '3': 6, '4': 1, '5': 11, '6': '.server.user.MealType', '10': 'MealType'},
    const {'1': 'SmokeType', '3': 7, '4': 1, '5': 14, '6': '.server.user.SmokeType', '10': 'SmokeType'},
    const {'1': 'OverView', '3': 8, '4': 1, '5': 9, '10': 'OverView'},
    const {'1': 'StoreID', '3': 9, '4': 1, '5': 9, '10': 'StoreID'},
  ],
};

/// Descriptor for `Plan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List planDescriptor = $convert.base64Decode('CgRQbGFuEg4KAklEGAEgASgJUgJJRBIUCgVUaXRsZRgCIAEoCVIFVGl0bGUSFAoFUHJpY2UYAyABKA1SBVByaWNlEhoKCEltYWdlVVJMGAQgASgJUghJbWFnZVVSTBIxCghSb29tVHlwZRgFIAEoDjIVLnNlcnZlci51c2VyLlJvb21UeXBlUghSb29tVHlwZRIxCghNZWFsVHlwZRgGIAEoCzIVLnNlcnZlci51c2VyLk1lYWxUeXBlUghNZWFsVHlwZRI0CglTbW9rZVR5cGUYByABKA4yFi5zZXJ2ZXIudXNlci5TbW9rZVR5cGVSCVNtb2tlVHlwZRIaCghPdmVyVmlldxgIIAEoCVIIT3ZlclZpZXcSGAoHU3RvcmVJRBgJIAEoCVIHU3RvcmVJRA==');
@$core.Deprecated('Use bookPlanDescriptor instead')
const BookPlan$json = const {
  '1': 'BookPlan',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    const {'1': 'Price', '3': 3, '4': 1, '5': 13, '10': 'Price'},
    const {'1': 'ImageURL', '3': 4, '4': 1, '5': 9, '10': 'ImageURL'},
    const {'1': 'RoomTypeName', '3': 5, '4': 1, '5': 9, '10': 'RoomTypeName'},
    const {'1': 'MealTypeName', '3': 6, '4': 1, '5': 9, '10': 'MealTypeName'},
    const {'1': 'SmokeTypeName', '3': 7, '4': 1, '5': 9, '10': 'SmokeTypeName'},
    const {'1': 'OverView', '3': 8, '4': 1, '5': 9, '10': 'OverView'},
    const {'1': 'StoreID', '3': 9, '4': 1, '5': 9, '10': 'StoreID'},
    const {'1': 'StoreName', '3': 10, '4': 1, '5': 9, '10': 'StoreName'},
    const {'1': 'StoreBranchName', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'StoreBranchName', '17': true},
  ],
  '8': const [
    const {'1': '_StoreBranchName'},
  ],
};

/// Descriptor for `BookPlan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookPlanDescriptor = $convert.base64Decode('CghCb29rUGxhbhIOCgJJRBgBIAEoCVICSUQSFAoFVGl0bGUYAiABKAlSBVRpdGxlEhQKBVByaWNlGAMgASgNUgVQcmljZRIaCghJbWFnZVVSTBgEIAEoCVIISW1hZ2VVUkwSIgoMUm9vbVR5cGVOYW1lGAUgASgJUgxSb29tVHlwZU5hbWUSIgoMTWVhbFR5cGVOYW1lGAYgASgJUgxNZWFsVHlwZU5hbWUSJAoNU21va2VUeXBlTmFtZRgHIAEoCVINU21va2VUeXBlTmFtZRIaCghPdmVyVmlldxgIIAEoCVIIT3ZlclZpZXcSGAoHU3RvcmVJRBgJIAEoCVIHU3RvcmVJRBIcCglTdG9yZU5hbWUYCiABKAlSCVN0b3JlTmFtZRItCg9TdG9yZUJyYW5jaE5hbWUYCyABKAlIAFIPU3RvcmVCcmFuY2hOYW1liAEBQhIKEF9TdG9yZUJyYW5jaE5hbWU=');
@$core.Deprecated('Use mealTypeDescriptor instead')
const MealType$json = const {
  '1': 'MealType',
  '2': const [
    const {'1': 'Morning', '3': 1, '4': 1, '5': 8, '10': 'Morning'},
    const {'1': 'Dinner', '3': 2, '4': 1, '5': 8, '10': 'Dinner'},
  ],
};

/// Descriptor for `MealType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealTypeDescriptor = $convert.base64Decode('CghNZWFsVHlwZRIYCgdNb3JuaW5nGAEgASgIUgdNb3JuaW5nEhYKBkRpbm5lchgCIAEoCFIGRGlubmVy');
@$core.Deprecated('Use reserveRequestDescriptor instead')
const ReserveRequest$json = const {
  '1': 'ReserveRequest',
  '2': const [
    const {'1': 'StayFrom', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'StayFrom'},
    const {'1': 'StayTo', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'StayTo'},
    const {'1': 'Adult', '3': 3, '4': 1, '5': 13, '10': 'Adult'},
    const {'1': 'Child', '3': 4, '4': 1, '5': 13, '10': 'Child'},
    const {'1': 'RoomCount', '3': 5, '4': 1, '5': 13, '10': 'RoomCount'},
    const {'1': 'CheckInTime', '3': 6, '4': 1, '5': 9, '10': 'CheckInTime'},
    const {'1': 'TotalCost', '3': 7, '4': 1, '5': 13, '10': 'TotalCost'},
    const {'1': 'GuestData', '3': 8, '4': 1, '5': 11, '6': '.server.user.GuestData', '10': 'GuestData'},
    const {'1': 'BookPlan', '3': 9, '4': 1, '5': 11, '6': '.server.user.Plan', '10': 'BookPlan'},
    const {'1': 'Note', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'Note', '17': true},
  ],
  '8': const [
    const {'1': '_Note'},
  ],
};

/// Descriptor for `ReserveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reserveRequestDescriptor = $convert.base64Decode('Cg5SZXNlcnZlUmVxdWVzdBI2CghTdGF5RnJvbRgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCFN0YXlGcm9tEjIKBlN0YXlUbxgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBlN0YXlUbxIUCgVBZHVsdBgDIAEoDVIFQWR1bHQSFAoFQ2hpbGQYBCABKA1SBUNoaWxkEhwKCVJvb21Db3VudBgFIAEoDVIJUm9vbUNvdW50EiAKC0NoZWNrSW5UaW1lGAYgASgJUgtDaGVja0luVGltZRIcCglUb3RhbENvc3QYByABKA1SCVRvdGFsQ29zdBI0CglHdWVzdERhdGEYCCABKAsyFi5zZXJ2ZXIudXNlci5HdWVzdERhdGFSCUd1ZXN0RGF0YRItCghCb29rUGxhbhgJIAEoCzIRLnNlcnZlci51c2VyLlBsYW5SCEJvb2tQbGFuEhcKBE5vdGUYCyABKAlIAFIETm90ZYgBAUIHCgVfTm90ZQ==');
@$core.Deprecated('Use bookIDRequestDescriptor instead')
const BookIDRequest$json = const {
  '1': 'BookIDRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `BookIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookIDRequestDescriptor = $convert.base64Decode('Cg1Cb29rSURSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRA==');
@$core.Deprecated('Use booksResponseDescriptor instead')
const BooksResponse$json = const {
  '1': 'BooksResponse',
  '2': const [
    const {'1': 'Books', '3': 1, '4': 3, '5': 11, '6': '.server.user.BookResponse', '10': 'Books'},
  ],
};

/// Descriptor for `BooksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booksResponseDescriptor = $convert.base64Decode('Cg1Cb29rc1Jlc3BvbnNlEi8KBUJvb2tzGAEgAygLMhkuc2VydmVyLnVzZXIuQm9va1Jlc3BvbnNlUgVCb29rcw==');
