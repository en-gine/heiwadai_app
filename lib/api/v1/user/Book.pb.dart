///
//  Generated code. Do not modify.
//  source: v1/user/Book.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $25;

import '../shared/Prefecture.pbenum.dart' as $26;
import 'Book.pbenum.dart';

export 'Book.pbenum.dart';

class BookResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BookResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOM<$25.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StayFrom', protoName: 'StayFrom', subBuilder: $25.Timestamp.create)
    ..aOM<$25.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StayTo', protoName: 'StayTo', subBuilder: $25.Timestamp.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Adult', $pb.PbFieldType.OU3, protoName: 'Adult')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Child', $pb.PbFieldType.OU3, protoName: 'Child')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomCount', $pb.PbFieldType.OU3, protoName: 'RoomCount')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckInTime', protoName: 'CheckInTime')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalCost', $pb.PbFieldType.OU3, protoName: 'TotalCost')
    ..aOM<GuestData>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'GuestData', protoName: 'GuestData', subBuilder: GuestData.create)
    ..aOM<BookPlan>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BookPlan', protoName: 'BookPlan', subBuilder: BookPlan.create)
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Note', protoName: 'Note')
    ..hasRequiredFields = false
  ;

  BookResponse._() : super();
  factory BookResponse({
    $core.String? iD,
    $25.Timestamp? stayFrom,
    $25.Timestamp? stayTo,
    $core.int? adult,
    $core.int? child,
    $core.int? roomCount,
    $core.String? checkInTime,
    $core.int? totalCost,
    GuestData? guestData,
    BookPlan? bookPlan,
    $core.String? note,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (stayFrom != null) {
      _result.stayFrom = stayFrom;
    }
    if (stayTo != null) {
      _result.stayTo = stayTo;
    }
    if (adult != null) {
      _result.adult = adult;
    }
    if (child != null) {
      _result.child = child;
    }
    if (roomCount != null) {
      _result.roomCount = roomCount;
    }
    if (checkInTime != null) {
      _result.checkInTime = checkInTime;
    }
    if (totalCost != null) {
      _result.totalCost = totalCost;
    }
    if (guestData != null) {
      _result.guestData = guestData;
    }
    if (bookPlan != null) {
      _result.bookPlan = bookPlan;
    }
    if (note != null) {
      _result.note = note;
    }
    return _result;
  }
  factory BookResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BookResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BookResponse clone() => BookResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BookResponse copyWith(void Function(BookResponse) updates) => super.copyWith((message) => updates(message as BookResponse)) as BookResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BookResponse create() => BookResponse._();
  BookResponse createEmptyInstance() => create();
  static $pb.PbList<BookResponse> createRepeated() => $pb.PbList<BookResponse>();
  @$core.pragma('dart2js:noInline')
  static BookResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BookResponse>(create);
  static BookResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $25.Timestamp get stayFrom => $_getN(1);
  @$pb.TagNumber(2)
  set stayFrom($25.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStayFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearStayFrom() => clearField(2);
  @$pb.TagNumber(2)
  $25.Timestamp ensureStayFrom() => $_ensure(1);

  @$pb.TagNumber(3)
  $25.Timestamp get stayTo => $_getN(2);
  @$pb.TagNumber(3)
  set stayTo($25.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStayTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearStayTo() => clearField(3);
  @$pb.TagNumber(3)
  $25.Timestamp ensureStayTo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get adult => $_getIZ(3);
  @$pb.TagNumber(4)
  set adult($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAdult() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdult() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get child => $_getIZ(4);
  @$pb.TagNumber(5)
  set child($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChild() => $_has(4);
  @$pb.TagNumber(5)
  void clearChild() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get roomCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set roomCount($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoomCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoomCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get checkInTime => $_getSZ(6);
  @$pb.TagNumber(7)
  set checkInTime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCheckInTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCheckInTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get totalCost => $_getIZ(7);
  @$pb.TagNumber(8)
  set totalCost($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalCost() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalCost() => clearField(8);

  @$pb.TagNumber(9)
  GuestData get guestData => $_getN(8);
  @$pb.TagNumber(9)
  set guestData(GuestData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasGuestData() => $_has(8);
  @$pb.TagNumber(9)
  void clearGuestData() => clearField(9);
  @$pb.TagNumber(9)
  GuestData ensureGuestData() => $_ensure(8);

  @$pb.TagNumber(10)
  BookPlan get bookPlan => $_getN(9);
  @$pb.TagNumber(10)
  set bookPlan(BookPlan v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasBookPlan() => $_has(9);
  @$pb.TagNumber(10)
  void clearBookPlan() => clearField(10);
  @$pb.TagNumber(10)
  BookPlan ensureBookPlan() => $_ensure(9);

  @$pb.TagNumber(12)
  $core.String get note => $_getSZ(10);
  @$pb.TagNumber(12)
  set note($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasNote() => $_has(10);
  @$pb.TagNumber(12)
  void clearNote() => clearField(12);
}

class GuestData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GuestData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FirstName', protoName: 'FirstName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastName', protoName: 'LastName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FirstNameKana', protoName: 'FirstNameKana')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastNameKana', protoName: 'LastNameKana')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CompanyName', protoName: 'CompanyName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ZipCode', protoName: 'ZipCode')
    ..e<$26.Prefecture>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Prefecture', $pb.PbFieldType.OE, protoName: 'Prefecture', defaultOrMaker: $26.Prefecture.Unspecified, valueOf: $26.Prefecture.valueOf, enumValues: $26.Prefecture.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'City', protoName: 'City')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', protoName: 'Address')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tel', protoName: 'Tel')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Mail', protoName: 'Mail')
    ..hasRequiredFields = false
  ;

  GuestData._() : super();
  factory GuestData({
    $core.String? firstName,
    $core.String? lastName,
    $core.String? firstNameKana,
    $core.String? lastNameKana,
    $core.String? companyName,
    $core.String? zipCode,
    $26.Prefecture? prefecture,
    $core.String? city,
    $core.String? address,
    $core.String? tel,
    $core.String? mail,
  }) {
    final _result = create();
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (firstNameKana != null) {
      _result.firstNameKana = firstNameKana;
    }
    if (lastNameKana != null) {
      _result.lastNameKana = lastNameKana;
    }
    if (companyName != null) {
      _result.companyName = companyName;
    }
    if (zipCode != null) {
      _result.zipCode = zipCode;
    }
    if (prefecture != null) {
      _result.prefecture = prefecture;
    }
    if (city != null) {
      _result.city = city;
    }
    if (address != null) {
      _result.address = address;
    }
    if (tel != null) {
      _result.tel = tel;
    }
    if (mail != null) {
      _result.mail = mail;
    }
    return _result;
  }
  factory GuestData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuestData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuestData clone() => GuestData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuestData copyWith(void Function(GuestData) updates) => super.copyWith((message) => updates(message as GuestData)) as GuestData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GuestData create() => GuestData._();
  GuestData createEmptyInstance() => create();
  static $pb.PbList<GuestData> createRepeated() => $pb.PbList<GuestData>();
  @$core.pragma('dart2js:noInline')
  static GuestData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuestData>(create);
  static GuestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get firstNameKana => $_getSZ(2);
  @$pb.TagNumber(3)
  set firstNameKana($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirstNameKana() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstNameKana() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastNameKana => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastNameKana($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastNameKana() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastNameKana() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get companyName => $_getSZ(4);
  @$pb.TagNumber(5)
  set companyName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCompanyName() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompanyName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get zipCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set zipCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasZipCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearZipCode() => clearField(6);

  @$pb.TagNumber(7)
  $26.Prefecture get prefecture => $_getN(6);
  @$pb.TagNumber(7)
  set prefecture($26.Prefecture v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPrefecture() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrefecture() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get city => $_getSZ(7);
  @$pb.TagNumber(8)
  set city($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCity() => $_has(7);
  @$pb.TagNumber(8)
  void clearCity() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get address => $_getSZ(8);
  @$pb.TagNumber(9)
  set address($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearAddress() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get tel => $_getSZ(9);
  @$pb.TagNumber(10)
  set tel($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTel() => $_has(9);
  @$pb.TagNumber(10)
  void clearTel() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get mail => $_getSZ(10);
  @$pb.TagNumber(11)
  set mail($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMail() => $_has(10);
  @$pb.TagNumber(11)
  void clearMail() => clearField(11);
}

class Plan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Plan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Price', $pb.PbFieldType.OU3, protoName: 'Price')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ImageURL', protoName: 'ImageURL')
    ..e<RoomType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomType', $pb.PbFieldType.OE, protoName: 'RoomType', defaultOrMaker: RoomType.RoomTypeSingle, valueOf: RoomType.valueOf, enumValues: RoomType.values)
    ..aOM<MealType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MealType', protoName: 'MealType', subBuilder: MealType.create)
    ..e<SmokeType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SmokeType', $pb.PbFieldType.OE, protoName: 'SmokeType', defaultOrMaker: SmokeType.SmokeTypeNonSmoking, valueOf: SmokeType.valueOf, enumValues: SmokeType.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OverView', protoName: 'OverView')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreID', protoName: 'StoreID')
    ..hasRequiredFields = false
  ;

  Plan._() : super();
  factory Plan({
    $core.String? iD,
    $core.String? title,
    $core.int? price,
    $core.String? imageURL,
    RoomType? roomType,
    MealType? mealType,
    SmokeType? smokeType,
    $core.String? overView,
    $core.String? storeID,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (title != null) {
      _result.title = title;
    }
    if (price != null) {
      _result.price = price;
    }
    if (imageURL != null) {
      _result.imageURL = imageURL;
    }
    if (roomType != null) {
      _result.roomType = roomType;
    }
    if (mealType != null) {
      _result.mealType = mealType;
    }
    if (smokeType != null) {
      _result.smokeType = smokeType;
    }
    if (overView != null) {
      _result.overView = overView;
    }
    if (storeID != null) {
      _result.storeID = storeID;
    }
    return _result;
  }
  factory Plan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Plan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Plan clone() => Plan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Plan copyWith(void Function(Plan) updates) => super.copyWith((message) => updates(message as Plan)) as Plan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Plan create() => Plan._();
  Plan createEmptyInstance() => create();
  static $pb.PbList<Plan> createRepeated() => $pb.PbList<Plan>();
  @$core.pragma('dart2js:noInline')
  static Plan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Plan>(create);
  static Plan? _defaultInstance;

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
  $core.int get price => $_getIZ(2);
  @$pb.TagNumber(3)
  set price($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageURL => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageURL($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageURL() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageURL() => clearField(4);

  @$pb.TagNumber(5)
  RoomType get roomType => $_getN(4);
  @$pb.TagNumber(5)
  set roomType(RoomType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoomType() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoomType() => clearField(5);

  @$pb.TagNumber(6)
  MealType get mealType => $_getN(5);
  @$pb.TagNumber(6)
  set mealType(MealType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMealType() => $_has(5);
  @$pb.TagNumber(6)
  void clearMealType() => clearField(6);
  @$pb.TagNumber(6)
  MealType ensureMealType() => $_ensure(5);

  @$pb.TagNumber(7)
  SmokeType get smokeType => $_getN(6);
  @$pb.TagNumber(7)
  set smokeType(SmokeType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSmokeType() => $_has(6);
  @$pb.TagNumber(7)
  void clearSmokeType() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get overView => $_getSZ(7);
  @$pb.TagNumber(8)
  set overView($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOverView() => $_has(7);
  @$pb.TagNumber(8)
  void clearOverView() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get storeID => $_getSZ(8);
  @$pb.TagNumber(9)
  set storeID($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStoreID() => $_has(8);
  @$pb.TagNumber(9)
  void clearStoreID() => clearField(9);
}

class BookPlan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BookPlan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Price', $pb.PbFieldType.OU3, protoName: 'Price')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ImageURL', protoName: 'ImageURL')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomTypeName', protoName: 'RoomTypeName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MealTypeName', protoName: 'MealTypeName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SmokeTypeName', protoName: 'SmokeTypeName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OverView', protoName: 'OverView')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreID', protoName: 'StoreID')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreName', protoName: 'StoreName')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StoreBranchName', protoName: 'StoreBranchName')
    ..hasRequiredFields = false
  ;

  BookPlan._() : super();
  factory BookPlan({
    $core.String? iD,
    $core.String? title,
    $core.int? price,
    $core.String? imageURL,
    $core.String? roomTypeName,
    $core.String? mealTypeName,
    $core.String? smokeTypeName,
    $core.String? overView,
    $core.String? storeID,
    $core.String? storeName,
    $core.String? storeBranchName,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (title != null) {
      _result.title = title;
    }
    if (price != null) {
      _result.price = price;
    }
    if (imageURL != null) {
      _result.imageURL = imageURL;
    }
    if (roomTypeName != null) {
      _result.roomTypeName = roomTypeName;
    }
    if (mealTypeName != null) {
      _result.mealTypeName = mealTypeName;
    }
    if (smokeTypeName != null) {
      _result.smokeTypeName = smokeTypeName;
    }
    if (overView != null) {
      _result.overView = overView;
    }
    if (storeID != null) {
      _result.storeID = storeID;
    }
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (storeBranchName != null) {
      _result.storeBranchName = storeBranchName;
    }
    return _result;
  }
  factory BookPlan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BookPlan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BookPlan clone() => BookPlan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BookPlan copyWith(void Function(BookPlan) updates) => super.copyWith((message) => updates(message as BookPlan)) as BookPlan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BookPlan create() => BookPlan._();
  BookPlan createEmptyInstance() => create();
  static $pb.PbList<BookPlan> createRepeated() => $pb.PbList<BookPlan>();
  @$core.pragma('dart2js:noInline')
  static BookPlan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BookPlan>(create);
  static BookPlan? _defaultInstance;

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
  $core.int get price => $_getIZ(2);
  @$pb.TagNumber(3)
  set price($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageURL => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageURL($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageURL() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageURL() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get roomTypeName => $_getSZ(4);
  @$pb.TagNumber(5)
  set roomTypeName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoomTypeName() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoomTypeName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get mealTypeName => $_getSZ(5);
  @$pb.TagNumber(6)
  set mealTypeName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMealTypeName() => $_has(5);
  @$pb.TagNumber(6)
  void clearMealTypeName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get smokeTypeName => $_getSZ(6);
  @$pb.TagNumber(7)
  set smokeTypeName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSmokeTypeName() => $_has(6);
  @$pb.TagNumber(7)
  void clearSmokeTypeName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get overView => $_getSZ(7);
  @$pb.TagNumber(8)
  set overView($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOverView() => $_has(7);
  @$pb.TagNumber(8)
  void clearOverView() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get storeID => $_getSZ(8);
  @$pb.TagNumber(9)
  set storeID($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStoreID() => $_has(8);
  @$pb.TagNumber(9)
  void clearStoreID() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get storeName => $_getSZ(9);
  @$pb.TagNumber(10)
  set storeName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStoreName() => $_has(9);
  @$pb.TagNumber(10)
  void clearStoreName() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get storeBranchName => $_getSZ(10);
  @$pb.TagNumber(11)
  set storeBranchName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStoreBranchName() => $_has(10);
  @$pb.TagNumber(11)
  void clearStoreBranchName() => clearField(11);
}

class MealType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MealType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Morning', protoName: 'Morning')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Dinner', protoName: 'Dinner')
    ..hasRequiredFields = false
  ;

  MealType._() : super();
  factory MealType({
    $core.bool? morning,
    $core.bool? dinner,
  }) {
    final _result = create();
    if (morning != null) {
      _result.morning = morning;
    }
    if (dinner != null) {
      _result.dinner = dinner;
    }
    return _result;
  }
  factory MealType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MealType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MealType clone() => MealType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MealType copyWith(void Function(MealType) updates) => super.copyWith((message) => updates(message as MealType)) as MealType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MealType create() => MealType._();
  MealType createEmptyInstance() => create();
  static $pb.PbList<MealType> createRepeated() => $pb.PbList<MealType>();
  @$core.pragma('dart2js:noInline')
  static MealType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MealType>(create);
  static MealType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get morning => $_getBF(0);
  @$pb.TagNumber(1)
  set morning($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMorning() => $_has(0);
  @$pb.TagNumber(1)
  void clearMorning() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dinner => $_getBF(1);
  @$pb.TagNumber(2)
  set dinner($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDinner() => $_has(1);
  @$pb.TagNumber(2)
  void clearDinner() => clearField(2);
}

class ReserveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReserveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..aOM<$25.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StayFrom', protoName: 'StayFrom', subBuilder: $25.Timestamp.create)
    ..aOM<$25.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StayTo', protoName: 'StayTo', subBuilder: $25.Timestamp.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Adult', $pb.PbFieldType.OU3, protoName: 'Adult')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Child', $pb.PbFieldType.OU3, protoName: 'Child')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomCount', $pb.PbFieldType.OU3, protoName: 'RoomCount')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CheckInTime', protoName: 'CheckInTime')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalCost', $pb.PbFieldType.OU3, protoName: 'TotalCost')
    ..aOM<GuestData>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'GuestData', protoName: 'GuestData', subBuilder: GuestData.create)
    ..aOM<Plan>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BookPlan', protoName: 'BookPlan', subBuilder: Plan.create)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Note', protoName: 'Note')
    ..hasRequiredFields = false
  ;

  ReserveRequest._() : super();
  factory ReserveRequest({
    $25.Timestamp? stayFrom,
    $25.Timestamp? stayTo,
    $core.int? adult,
    $core.int? child,
    $core.int? roomCount,
    $core.String? checkInTime,
    $core.int? totalCost,
    GuestData? guestData,
    Plan? bookPlan,
    $core.String? note,
  }) {
    final _result = create();
    if (stayFrom != null) {
      _result.stayFrom = stayFrom;
    }
    if (stayTo != null) {
      _result.stayTo = stayTo;
    }
    if (adult != null) {
      _result.adult = adult;
    }
    if (child != null) {
      _result.child = child;
    }
    if (roomCount != null) {
      _result.roomCount = roomCount;
    }
    if (checkInTime != null) {
      _result.checkInTime = checkInTime;
    }
    if (totalCost != null) {
      _result.totalCost = totalCost;
    }
    if (guestData != null) {
      _result.guestData = guestData;
    }
    if (bookPlan != null) {
      _result.bookPlan = bookPlan;
    }
    if (note != null) {
      _result.note = note;
    }
    return _result;
  }
  factory ReserveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReserveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReserveRequest clone() => ReserveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReserveRequest copyWith(void Function(ReserveRequest) updates) => super.copyWith((message) => updates(message as ReserveRequest)) as ReserveRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReserveRequest create() => ReserveRequest._();
  ReserveRequest createEmptyInstance() => create();
  static $pb.PbList<ReserveRequest> createRepeated() => $pb.PbList<ReserveRequest>();
  @$core.pragma('dart2js:noInline')
  static ReserveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReserveRequest>(create);
  static ReserveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $25.Timestamp get stayFrom => $_getN(0);
  @$pb.TagNumber(1)
  set stayFrom($25.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStayFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearStayFrom() => clearField(1);
  @$pb.TagNumber(1)
  $25.Timestamp ensureStayFrom() => $_ensure(0);

  @$pb.TagNumber(2)
  $25.Timestamp get stayTo => $_getN(1);
  @$pb.TagNumber(2)
  set stayTo($25.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStayTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearStayTo() => clearField(2);
  @$pb.TagNumber(2)
  $25.Timestamp ensureStayTo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get adult => $_getIZ(2);
  @$pb.TagNumber(3)
  set adult($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdult() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdult() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get child => $_getIZ(3);
  @$pb.TagNumber(4)
  set child($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChild() => $_has(3);
  @$pb.TagNumber(4)
  void clearChild() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get roomCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set roomCount($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoomCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoomCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get checkInTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set checkInTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCheckInTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCheckInTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get totalCost => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalCost($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalCost() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalCost() => clearField(7);

  @$pb.TagNumber(8)
  GuestData get guestData => $_getN(7);
  @$pb.TagNumber(8)
  set guestData(GuestData v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasGuestData() => $_has(7);
  @$pb.TagNumber(8)
  void clearGuestData() => clearField(8);
  @$pb.TagNumber(8)
  GuestData ensureGuestData() => $_ensure(7);

  @$pb.TagNumber(9)
  Plan get bookPlan => $_getN(8);
  @$pb.TagNumber(9)
  set bookPlan(Plan v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasBookPlan() => $_has(8);
  @$pb.TagNumber(9)
  void clearBookPlan() => clearField(9);
  @$pb.TagNumber(9)
  Plan ensureBookPlan() => $_ensure(8);

  @$pb.TagNumber(11)
  $core.String get note => $_getSZ(9);
  @$pb.TagNumber(11)
  set note($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasNote() => $_has(9);
  @$pb.TagNumber(11)
  void clearNote() => clearField(11);
}

class BookIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BookIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  BookIDRequest._() : super();
  factory BookIDRequest({
    $core.String? iD,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    return _result;
  }
  factory BookIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BookIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BookIDRequest clone() => BookIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BookIDRequest copyWith(void Function(BookIDRequest) updates) => super.copyWith((message) => updates(message as BookIDRequest)) as BookIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BookIDRequest create() => BookIDRequest._();
  BookIDRequest createEmptyInstance() => create();
  static $pb.PbList<BookIDRequest> createRepeated() => $pb.PbList<BookIDRequest>();
  @$core.pragma('dart2js:noInline')
  static BookIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BookIDRequest>(create);
  static BookIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);
}

class BooksResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BooksResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'server.user'), createEmptyInstance: create)
    ..pc<BookResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Books', $pb.PbFieldType.PM, protoName: 'Books', subBuilder: BookResponse.create)
    ..hasRequiredFields = false
  ;

  BooksResponse._() : super();
  factory BooksResponse({
    $core.Iterable<BookResponse>? books,
  }) {
    final _result = create();
    if (books != null) {
      _result.books.addAll(books);
    }
    return _result;
  }
  factory BooksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BooksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BooksResponse clone() => BooksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BooksResponse copyWith(void Function(BooksResponse) updates) => super.copyWith((message) => updates(message as BooksResponse)) as BooksResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BooksResponse create() => BooksResponse._();
  BooksResponse createEmptyInstance() => create();
  static $pb.PbList<BooksResponse> createRepeated() => $pb.PbList<BooksResponse>();
  @$core.pragma('dart2js:noInline')
  static BooksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BooksResponse>(create);
  static BooksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BookResponse> get books => $_getList(0);
}

