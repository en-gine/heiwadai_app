///
//  Generated code. Do not modify.
//  source: v1/admin/MailMagazine.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MailMagazineStatus extends $pb.ProtobufEnum {
  static const MailMagazineStatus MailMagazineDraft = MailMagazineStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MailMagazineDraft');
  static const MailMagazineStatus MailMagazineSaved = MailMagazineStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MailMagazineSaved');
  static const MailMagazineStatus MailMagazineSentCompleted = MailMagazineStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MailMagazineSentCompleted');
  static const MailMagazineStatus MailMagazineSentUnCompleted = MailMagazineStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MailMagazineSentUnCompleted');

  static const $core.List<MailMagazineStatus> values = <MailMagazineStatus> [
    MailMagazineDraft,
    MailMagazineSaved,
    MailMagazineSentCompleted,
    MailMagazineSentUnCompleted,
  ];

  static final $core.Map<$core.int, MailMagazineStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MailMagazineStatus? valueOf($core.int value) => _byValue[value];

  const MailMagazineStatus._($core.int v, $core.String n) : super(v, n);
}

