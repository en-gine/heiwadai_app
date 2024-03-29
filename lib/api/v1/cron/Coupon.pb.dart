///
//  Generated code. Do not modify.
//  source: v1/cron/Coupon.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AffectedCountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AffectedCountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.cron'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AffectedUserCount', $pb.PbFieldType.OU3, protoName: 'AffectedUserCount')
    ..hasRequiredFields = false
  ;

  AffectedCountResponse._() : super();
  factory AffectedCountResponse({
    $core.int? affectedUserCount,
  }) {
    final _result = create();
    if (affectedUserCount != null) {
      _result.affectedUserCount = affectedUserCount;
    }
    return _result;
  }
  factory AffectedCountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AffectedCountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AffectedCountResponse clone() => AffectedCountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AffectedCountResponse copyWith(void Function(AffectedCountResponse) updates) => super.copyWith((message) => updates(message as AffectedCountResponse)) as AffectedCountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AffectedCountResponse create() => AffectedCountResponse._();
  AffectedCountResponse createEmptyInstance() => create();
  static $pb.PbList<AffectedCountResponse> createRepeated() => $pb.PbList<AffectedCountResponse>();
  @$core.pragma('dart2js:noInline')
  static AffectedCountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AffectedCountResponse>(create);
  static AffectedCountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get affectedUserCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set affectedUserCount($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAffectedUserCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAffectedUserCount() => clearField(1);
}

