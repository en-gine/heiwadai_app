///
//  Generated code. Do not modify.
//  source: v1/admin/Messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../shared/Pager.pb.dart' as $22;
import '../../google/protobuf/timestamp.pb.dart' as $21;

class MessageIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  MessageIDRequest._() : super();
  factory MessageIDRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory MessageIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageIDRequest clone() => MessageIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageIDRequest copyWith(void Function(MessageIDRequest) updates) => super.copyWith((message) => updates(message as MessageIDRequest)) as MessageIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageIDRequest create() => MessageIDRequest._();
  MessageIDRequest createEmptyInstance() => create();
  static $pb.PbList<MessageIDRequest> createRepeated() => $pb.PbList<MessageIDRequest>();
  @$core.pragma('dart2js:noInline')
  static MessageIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageIDRequest>(create);
  static MessageIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class MessagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessagesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..pc<MessageResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: MessageResponse.create)
    ..hasRequiredFields = false
  ;

  MessagesResponse._() : super();
  factory MessagesResponse({
    $core.Iterable<MessageResponse>? messages,
  }) {
    final _result = create();
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory MessagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessagesResponse clone() => MessagesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessagesResponse copyWith(void Function(MessagesResponse) updates) => super.copyWith((message) => updates(message as MessagesResponse)) as MessagesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessagesResponse create() => MessagesResponse._();
  MessagesResponse createEmptyInstance() => create();
  static $pb.PbList<MessagesResponse> createRepeated() => $pb.PbList<MessagesResponse>();
  @$core.pragma('dart2js:noInline')
  static MessagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessagesResponse>(create);
  static MessagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MessageResponse> get messages => $_getList(0);
}

class GetMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOM<$22.Pager>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pager', protoName: 'Pager', subBuilder: $22.Pager.create)
    ..hasRequiredFields = false
  ;

  GetMessageRequest._() : super();
  factory GetMessageRequest({
    $22.Pager? pager,
  }) {
    final _result = create();
    if (pager != null) {
      _result.pager = pager;
    }
    return _result;
  }
  factory GetMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMessageRequest clone() => GetMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMessageRequest copyWith(void Function(GetMessageRequest) updates) => super.copyWith((message) => updates(message as GetMessageRequest)) as GetMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMessageRequest create() => GetMessageRequest._();
  GetMessageRequest createEmptyInstance() => create();
  static $pb.PbList<GetMessageRequest> createRepeated() => $pb.PbList<GetMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMessageRequest>(create);
  static GetMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $22.Pager get pager => $_getN(0);
  @$pb.TagNumber(1)
  set pager($22.Pager v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPager() => $_has(0);
  @$pb.TagNumber(1)
  void clearPager() => clearField(1);
  @$pb.TagNumber(1)
  $22.Pager ensurePager() => $_ensure(0);
}

class MessageCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageCreateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..aOM<$21.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DisplayDate', protoName: 'DisplayDate', subBuilder: $21.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MessageCreateRequest._() : super();
  factory MessageCreateRequest({
    $core.String? title,
    $core.String? content,
    $21.Timestamp? displayDate,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (displayDate != null) {
      _result.displayDate = displayDate;
    }
    return _result;
  }
  factory MessageCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageCreateRequest clone() => MessageCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageCreateRequest copyWith(void Function(MessageCreateRequest) updates) => super.copyWith((message) => updates(message as MessageCreateRequest)) as MessageCreateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageCreateRequest create() => MessageCreateRequest._();
  MessageCreateRequest createEmptyInstance() => create();
  static $pb.PbList<MessageCreateRequest> createRepeated() => $pb.PbList<MessageCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static MessageCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageCreateRequest>(create);
  static MessageCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(5)
  $21.Timestamp get displayDate => $_getN(2);
  @$pb.TagNumber(5)
  set displayDate($21.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisplayDate() => $_has(2);
  @$pb.TagNumber(5)
  void clearDisplayDate() => clearField(5);
  @$pb.TagNumber(5)
  $21.Timestamp ensureDisplayDate() => $_ensure(2);
}

class MessageUpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageUpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..aOM<$21.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DisplayDate', protoName: 'DisplayDate', subBuilder: $21.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MessageUpdateRequest._() : super();
  factory MessageUpdateRequest({
    $core.String? iD,
    $core.String? title,
    $core.String? content,
    $21.Timestamp? displayDate,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (displayDate != null) {
      _result.displayDate = displayDate;
    }
    return _result;
  }
  factory MessageUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageUpdateRequest clone() => MessageUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageUpdateRequest copyWith(void Function(MessageUpdateRequest) updates) => super.copyWith((message) => updates(message as MessageUpdateRequest)) as MessageUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageUpdateRequest create() => MessageUpdateRequest._();
  MessageUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<MessageUpdateRequest> createRepeated() => $pb.PbList<MessageUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static MessageUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageUpdateRequest>(create);
  static MessageUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $21.Timestamp get displayDate => $_getN(3);
  @$pb.TagNumber(4)
  set displayDate($21.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisplayDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayDate() => clearField(4);
  @$pb.TagNumber(4)
  $21.Timestamp ensureDisplayDate() => $_ensure(3);
}

class MessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.admin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AuthorID', protoName: 'AuthorID')
    ..aOM<$21.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DisplayDate', protoName: 'DisplayDate', subBuilder: $21.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MessageResponse._() : super();
  factory MessageResponse({
    $core.String? iD,
    $core.String? title,
    $core.String? content,
    $core.String? authorID,
    $21.Timestamp? displayDate,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (authorID != null) {
      _result.authorID = authorID;
    }
    if (displayDate != null) {
      _result.displayDate = displayDate;
    }
    return _result;
  }
  factory MessageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageResponse clone() => MessageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageResponse copyWith(void Function(MessageResponse) updates) => super.copyWith((message) => updates(message as MessageResponse)) as MessageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageResponse create() => MessageResponse._();
  MessageResponse createEmptyInstance() => create();
  static $pb.PbList<MessageResponse> createRepeated() => $pb.PbList<MessageResponse>();
  @$core.pragma('dart2js:noInline')
  static MessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageResponse>(create);
  static MessageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get authorID => $_getSZ(3);
  @$pb.TagNumber(4)
  set authorID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthorID() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthorID() => clearField(4);

  @$pb.TagNumber(5)
  $21.Timestamp get displayDate => $_getN(4);
  @$pb.TagNumber(5)
  set displayDate($21.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisplayDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisplayDate() => clearField(5);
  @$pb.TagNumber(5)
  $21.Timestamp ensureDisplayDate() => $_ensure(4);
}

