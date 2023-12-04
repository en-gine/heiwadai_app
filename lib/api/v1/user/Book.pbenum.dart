///
//  Generated code. Do not modify.
//  source: v1/user/Book.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RoomType extends $pb.ProtobufEnum {
  static const RoomType RoomTypeSingle = RoomType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RoomTypeSingle');
  static const RoomType RoomTypeSemiDouble = RoomType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RoomTypeSemiDouble');
  static const RoomType RoomTypeDouble = RoomType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RoomTypeDouble');
  static const RoomType RoomTypeTwin = RoomType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RoomTypeTwin');
  static const RoomType RoomTypeFourth = RoomType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RoomTypeFourth');
  static const RoomType RoomTypeUnknown = RoomType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RoomTypeUnknown');

  static const $core.List<RoomType> values = <RoomType> [
    RoomTypeSingle,
    RoomTypeSemiDouble,
    RoomTypeDouble,
    RoomTypeTwin,
    RoomTypeFourth,
    RoomTypeUnknown,
  ];

  static final $core.Map<$core.int, RoomType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoomType? valueOf($core.int value) => _byValue[value];

  const RoomType._($core.int v, $core.String n) : super(v, n);
}

class SmokeType extends $pb.ProtobufEnum {
  static const SmokeType SmokeTypeNonSmoking = SmokeType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SmokeTypeNonSmoking');
  static const SmokeType SmokeTypeSmoking = SmokeType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SmokeTypeSmoking');
  static const SmokeType SmokeTypeUnknown = SmokeType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SmokeTypeUnknown');

  static const $core.List<SmokeType> values = <SmokeType> [
    SmokeTypeNonSmoking,
    SmokeTypeSmoking,
    SmokeTypeUnknown,
  ];

  static final $core.Map<$core.int, SmokeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SmokeType? valueOf($core.int value) => _byValue[value];

  const SmokeType._($core.int v, $core.String n) : super(v, n);
}

