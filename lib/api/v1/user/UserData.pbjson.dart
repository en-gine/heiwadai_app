///
//  Generated code. Do not modify.
//  source: v1/user/UserData.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userRegisterRequestDescriptor instead')
const UserRegisterRequest$json = const {
  '1': 'UserRegisterRequest',
  '2': const [
    const {'1': 'FirstName', '3': 1, '4': 1, '5': 9, '10': 'FirstName'},
    const {'1': 'LastName', '3': 2, '4': 1, '5': 9, '10': 'LastName'},
    const {'1': 'FirstNameKana', '3': 3, '4': 1, '5': 9, '10': 'FirstNameKana'},
    const {'1': 'LastNameKana', '3': 4, '4': 1, '5': 9, '10': 'LastNameKana'},
    const {'1': 'CompanyName', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'CompanyName', '17': true},
    const {'1': 'BirthDate', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'BirthDate'},
    const {'1': 'ZipCode', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'ZipCode', '17': true},
    const {'1': 'Prefecture', '3': 8, '4': 1, '5': 14, '6': '.server.shared.Prefecture', '10': 'Prefecture'},
    const {'1': 'City', '3': 9, '4': 1, '5': 9, '9': 2, '10': 'City', '17': true},
    const {'1': 'Address', '3': 10, '4': 1, '5': 9, '9': 3, '10': 'Address', '17': true},
    const {'1': 'Tel', '3': 11, '4': 1, '5': 9, '9': 4, '10': 'Tel', '17': true},
    const {'1': 'Mail', '3': 12, '4': 1, '5': 9, '10': 'Mail'},
    const {'1': 'AcceptMail', '3': 13, '4': 1, '5': 8, '10': 'AcceptMail'},
    const {'1': 'AcceptTerm', '3': 14, '4': 1, '5': 8, '10': 'AcceptTerm'},
  ],
  '8': const [
    const {'1': '_CompanyName'},
    const {'1': '_ZipCode'},
    const {'1': '_City'},
    const {'1': '_Address'},
    const {'1': '_Tel'},
  ],
};

/// Descriptor for `UserRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterRequestDescriptor = $convert.base64Decode('ChNVc2VyUmVnaXN0ZXJSZXF1ZXN0EhwKCUZpcnN0TmFtZRgBIAEoCVIJRmlyc3ROYW1lEhoKCExhc3ROYW1lGAIgASgJUghMYXN0TmFtZRIkCg1GaXJzdE5hbWVLYW5hGAMgASgJUg1GaXJzdE5hbWVLYW5hEiIKDExhc3ROYW1lS2FuYRgEIAEoCVIMTGFzdE5hbWVLYW5hEiUKC0NvbXBhbnlOYW1lGAUgASgJSABSC0NvbXBhbnlOYW1liAEBEjgKCUJpcnRoRGF0ZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCUJpcnRoRGF0ZRIdCgdaaXBDb2RlGAcgASgJSAFSB1ppcENvZGWIAQESOQoKUHJlZmVjdHVyZRgIIAEoDjIZLnNlcnZlci5zaGFyZWQuUHJlZmVjdHVyZVIKUHJlZmVjdHVyZRIXCgRDaXR5GAkgASgJSAJSBENpdHmIAQESHQoHQWRkcmVzcxgKIAEoCUgDUgdBZGRyZXNziAEBEhUKA1RlbBgLIAEoCUgEUgNUZWyIAQESEgoETWFpbBgMIAEoCVIETWFpbBIeCgpBY2NlcHRNYWlsGA0gASgIUgpBY2NlcHRNYWlsEh4KCkFjY2VwdFRlcm0YDiABKAhSCkFjY2VwdFRlcm1CDgoMX0NvbXBhbnlOYW1lQgoKCF9aaXBDb2RlQgcKBV9DaXR5QgoKCF9BZGRyZXNzQgYKBF9UZWw=');
@$core.Deprecated('Use userUpdateDataRequestDescriptor instead')
const UserUpdateDataRequest$json = const {
  '1': 'UserUpdateDataRequest',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'FirstName', '3': 2, '4': 1, '5': 9, '10': 'FirstName'},
    const {'1': 'LastName', '3': 3, '4': 1, '5': 9, '10': 'LastName'},
    const {'1': 'FirstNameKana', '3': 4, '4': 1, '5': 9, '10': 'FirstNameKana'},
    const {'1': 'LastNameKana', '3': 5, '4': 1, '5': 9, '10': 'LastNameKana'},
    const {'1': 'CompanyName', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'CompanyName', '17': true},
    const {'1': 'BirthDate', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'BirthDate'},
    const {'1': 'ZipCode', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'ZipCode', '17': true},
    const {'1': 'Prefecture', '3': 9, '4': 1, '5': 14, '6': '.server.shared.Prefecture', '10': 'Prefecture'},
    const {'1': 'City', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'City', '17': true},
    const {'1': 'Address', '3': 11, '4': 1, '5': 9, '9': 3, '10': 'Address', '17': true},
    const {'1': 'Tel', '3': 12, '4': 1, '5': 9, '9': 4, '10': 'Tel', '17': true},
    const {'1': 'Mail', '3': 13, '4': 1, '5': 9, '10': 'Mail'},
    const {'1': 'AcceptMail', '3': 14, '4': 1, '5': 8, '10': 'AcceptMail'},
  ],
  '8': const [
    const {'1': '_CompanyName'},
    const {'1': '_ZipCode'},
    const {'1': '_City'},
    const {'1': '_Address'},
    const {'1': '_Tel'},
  ],
};

/// Descriptor for `UserUpdateDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUpdateDataRequestDescriptor = $convert.base64Decode('ChVVc2VyVXBkYXRlRGF0YVJlcXVlc3QSDgoCSUQYASABKAlSAklEEhwKCUZpcnN0TmFtZRgCIAEoCVIJRmlyc3ROYW1lEhoKCExhc3ROYW1lGAMgASgJUghMYXN0TmFtZRIkCg1GaXJzdE5hbWVLYW5hGAQgASgJUg1GaXJzdE5hbWVLYW5hEiIKDExhc3ROYW1lS2FuYRgFIAEoCVIMTGFzdE5hbWVLYW5hEiUKC0NvbXBhbnlOYW1lGAYgASgJSABSC0NvbXBhbnlOYW1liAEBEjgKCUJpcnRoRGF0ZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCUJpcnRoRGF0ZRIdCgdaaXBDb2RlGAggASgJSAFSB1ppcENvZGWIAQESOQoKUHJlZmVjdHVyZRgJIAEoDjIZLnNlcnZlci5zaGFyZWQuUHJlZmVjdHVyZVIKUHJlZmVjdHVyZRIXCgRDaXR5GAogASgJSAJSBENpdHmIAQESHQoHQWRkcmVzcxgLIAEoCUgDUgdBZGRyZXNziAEBEhUKA1RlbBgMIAEoCUgEUgNUZWyIAQESEgoETWFpbBgNIAEoCVIETWFpbBIeCgpBY2NlcHRNYWlsGA4gASgIUgpBY2NlcHRNYWlsQg4KDF9Db21wYW55TmFtZUIKCghfWmlwQ29kZUIHCgVfQ2l0eUIKCghfQWRkcmVzc0IGCgRfVGVs');
@$core.Deprecated('Use userDataResponseDescriptor instead')
const UserDataResponse$json = const {
  '1': 'UserDataResponse',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'FirstName', '3': 2, '4': 1, '5': 9, '10': 'FirstName'},
    const {'1': 'LastName', '3': 3, '4': 1, '5': 9, '10': 'LastName'},
    const {'1': 'FirstNameKana', '3': 4, '4': 1, '5': 9, '10': 'FirstNameKana'},
    const {'1': 'LastNameKana', '3': 5, '4': 1, '5': 9, '10': 'LastNameKana'},
    const {'1': 'CompanyName', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'CompanyName', '17': true},
    const {'1': 'BirthDate', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'BirthDate'},
    const {'1': 'ZipCode', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'ZipCode', '17': true},
    const {'1': 'Prefecture', '3': 9, '4': 1, '5': 14, '6': '.server.shared.Prefecture', '10': 'Prefecture'},
    const {'1': 'City', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'City', '17': true},
    const {'1': 'Address', '3': 11, '4': 1, '5': 9, '9': 3, '10': 'Address', '17': true},
    const {'1': 'Tel', '3': 12, '4': 1, '5': 9, '9': 4, '10': 'Tel', '17': true},
    const {'1': 'Mail', '3': 13, '4': 1, '5': 9, '10': 'Mail'},
    const {'1': 'AcceptMail', '3': 14, '4': 1, '5': 8, '10': 'AcceptMail'},
  ],
  '8': const [
    const {'1': '_CompanyName'},
    const {'1': '_ZipCode'},
    const {'1': '_City'},
    const {'1': '_Address'},
    const {'1': '_Tel'},
  ],
};

/// Descriptor for `UserDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataResponseDescriptor = $convert.base64Decode('ChBVc2VyRGF0YVJlc3BvbnNlEg4KAklEGAEgASgJUgJJRBIcCglGaXJzdE5hbWUYAiABKAlSCUZpcnN0TmFtZRIaCghMYXN0TmFtZRgDIAEoCVIITGFzdE5hbWUSJAoNRmlyc3ROYW1lS2FuYRgEIAEoCVINRmlyc3ROYW1lS2FuYRIiCgxMYXN0TmFtZUthbmEYBSABKAlSDExhc3ROYW1lS2FuYRIlCgtDb21wYW55TmFtZRgGIAEoCUgAUgtDb21wYW55TmFtZYgBARI4CglCaXJ0aERhdGUYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglCaXJ0aERhdGUSHQoHWmlwQ29kZRgIIAEoCUgBUgdaaXBDb2RliAEBEjkKClByZWZlY3R1cmUYCSABKA4yGS5zZXJ2ZXIuc2hhcmVkLlByZWZlY3R1cmVSClByZWZlY3R1cmUSFwoEQ2l0eRgKIAEoCUgCUgRDaXR5iAEBEh0KB0FkZHJlc3MYCyABKAlIA1IHQWRkcmVzc4gBARIVCgNUZWwYDCABKAlIBFIDVGVsiAEBEhIKBE1haWwYDSABKAlSBE1haWwSHgoKQWNjZXB0TWFpbBgOIAEoCFIKQWNjZXB0TWFpbEIOCgxfQ29tcGFueU5hbWVCCgoIX1ppcENvZGVCBwoFX0NpdHlCCgoIX0FkZHJlc3NCBgoEX1RlbA==');
