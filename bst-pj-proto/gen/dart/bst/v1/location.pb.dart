//
//  Generated code. Do not modify.
//  source: bst/v1/location.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $33;
import 'area.pb.dart' as $32;
import 'content.pb.dart' as $31;
import 'user.pb.dart' as $34;

class Location extends $pb.GeneratedMessage {
  factory Location({
    $core.int? id,
    $core.String? name,
    $core.String? additionalInfo,
    $32.Area? area,
    $core.String? mapUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (additionalInfo != null) {
      $result.additionalInfo = additionalInfo;
    }
    if (area != null) {
      $result.area = area;
    }
    if (mapUrl != null) {
      $result.mapUrl = mapUrl;
    }
    return $result;
  }
  Location._() : super();
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Location', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'additionalInfo')
    ..aOM<$32.Area>(4, _omitFieldNames ? '' : 'area', subBuilder: $32.Area.create)
    ..aOS(5, _omitFieldNames ? '' : 'mapUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get additionalInfo => $_getSZ(2);
  @$pb.TagNumber(3)
  set additionalInfo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdditionalInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdditionalInfo() => clearField(3);

  @$pb.TagNumber(4)
  $32.Area get area => $_getN(3);
  @$pb.TagNumber(4)
  set area($32.Area v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasArea() => $_has(3);
  @$pb.TagNumber(4)
  void clearArea() => clearField(4);
  @$pb.TagNumber(4)
  $32.Area ensureArea() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get mapUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set mapUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMapUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearMapUrl() => clearField(5);
}

/// Note: Will add more fields later (e.g. capacity, price, etc)
class StudioReview extends $pb.GeneratedMessage {
  factory StudioReview({
    $34.User? user,
    $core.String? review,
    $core.int? rating,
    $core.Iterable<$31.Resource>? resources,
    $33.Timestamp? createdAt,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (review != null) {
      $result.review = review;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  StudioReview._() : super();
  factory StudioReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudioReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StudioReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$34.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $34.User.create)
    ..aOS(2, _omitFieldNames ? '' : 'review')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..pc<$31.Resource>(4, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $31.Resource.create)
    ..aOM<$33.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudioReview clone() => StudioReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudioReview copyWith(void Function(StudioReview) updates) => super.copyWith((message) => updates(message as StudioReview)) as StudioReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StudioReview create() => StudioReview._();
  StudioReview createEmptyInstance() => create();
  static $pb.PbList<StudioReview> createRepeated() => $pb.PbList<StudioReview>();
  @$core.pragma('dart2js:noInline')
  static StudioReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudioReview>(create);
  static StudioReview? _defaultInstance;

  @$pb.TagNumber(1)
  $34.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($34.User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $34.User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get review => $_getSZ(1);
  @$pb.TagNumber(2)
  set review($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReview() => $_has(1);
  @$pb.TagNumber(2)
  void clearReview() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rating => $_getIZ(2);
  @$pb.TagNumber(3)
  set rating($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRating() => $_has(2);
  @$pb.TagNumber(3)
  void clearRating() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$31.Resource> get resources => $_getList(3);

  @$pb.TagNumber(5)
  $33.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($33.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $33.Timestamp ensureCreatedAt() => $_ensure(4);
}

class Studio extends $pb.GeneratedMessage {
  factory Studio({
    $core.int? id,
    $core.String? name,
    $core.String? description,
    $core.String? googleMapsUrl,
    $core.String? additionalInfo,
    $32.Area? area,
    $core.int? overallRating,
    $core.Iterable<StudioRoom>? rooms,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (googleMapsUrl != null) {
      $result.googleMapsUrl = googleMapsUrl;
    }
    if (additionalInfo != null) {
      $result.additionalInfo = additionalInfo;
    }
    if (area != null) {
      $result.area = area;
    }
    if (overallRating != null) {
      $result.overallRating = overallRating;
    }
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    return $result;
  }
  Studio._() : super();
  factory Studio.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Studio.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Studio', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'googleMapsUrl')
    ..aOS(5, _omitFieldNames ? '' : 'additionalInfo')
    ..aOM<$32.Area>(6, _omitFieldNames ? '' : 'area', subBuilder: $32.Area.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'overallRating', $pb.PbFieldType.O3)
    ..pc<StudioRoom>(8, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: StudioRoom.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Studio clone() => Studio()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Studio copyWith(void Function(Studio) updates) => super.copyWith((message) => updates(message as Studio)) as Studio;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Studio create() => Studio._();
  Studio createEmptyInstance() => create();
  static $pb.PbList<Studio> createRepeated() => $pb.PbList<Studio>();
  @$core.pragma('dart2js:noInline')
  static Studio getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Studio>(create);
  static Studio? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get googleMapsUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set googleMapsUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGoogleMapsUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearGoogleMapsUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get additionalInfo => $_getSZ(4);
  @$pb.TagNumber(5)
  set additionalInfo($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdditionalInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdditionalInfo() => clearField(5);

  @$pb.TagNumber(6)
  $32.Area get area => $_getN(5);
  @$pb.TagNumber(6)
  set area($32.Area v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasArea() => $_has(5);
  @$pb.TagNumber(6)
  void clearArea() => clearField(6);
  @$pb.TagNumber(6)
  $32.Area ensureArea() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get overallRating => $_getIZ(6);
  @$pb.TagNumber(7)
  set overallRating($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOverallRating() => $_has(6);
  @$pb.TagNumber(7)
  void clearOverallRating() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<StudioRoom> get rooms => $_getList(7);
}

class StudioRoom extends $pb.GeneratedMessage {
  factory StudioRoom({
    $core.int? id,
    $core.String? name,
    $core.int? capacity,
    $core.int? price,
    $core.int? size,
    $core.Iterable<StudioRoomInfo>? infos,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (capacity != null) {
      $result.capacity = capacity;
    }
    if (price != null) {
      $result.price = price;
    }
    if (size != null) {
      $result.size = size;
    }
    if (infos != null) {
      $result.infos.addAll(infos);
    }
    return $result;
  }
  StudioRoom._() : super();
  factory StudioRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudioRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StudioRoom', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'capacity', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..pc<StudioRoomInfo>(6, _omitFieldNames ? '' : 'infos', $pb.PbFieldType.PM, subBuilder: StudioRoomInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudioRoom clone() => StudioRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudioRoom copyWith(void Function(StudioRoom) updates) => super.copyWith((message) => updates(message as StudioRoom)) as StudioRoom;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StudioRoom create() => StudioRoom._();
  StudioRoom createEmptyInstance() => create();
  static $pb.PbList<StudioRoom> createRepeated() => $pb.PbList<StudioRoom>();
  @$core.pragma('dart2js:noInline')
  static StudioRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudioRoom>(create);
  static StudioRoom? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get capacity => $_getIZ(2);
  @$pb.TagNumber(3)
  set capacity($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCapacity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCapacity() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get price => $_getIZ(3);
  @$pb.TagNumber(4)
  set price($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get size => $_getIZ(4);
  @$pb.TagNumber(5)
  set size($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearSize() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<StudioRoomInfo> get infos => $_getList(5);
}

class StudioRoomInfo extends $pb.GeneratedMessage {
  factory StudioRoomInfo({
    $core.int? id,
    StudioRoomInfoType? type,
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  StudioRoomInfo._() : super();
  factory StudioRoomInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudioRoomInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StudioRoomInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<StudioRoomInfoType>(2, _omitFieldNames ? '' : 'type', subBuilder: StudioRoomInfoType.create)
    ..aOS(3, _omitFieldNames ? '' : 'key')
    ..aOS(4, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudioRoomInfo clone() => StudioRoomInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudioRoomInfo copyWith(void Function(StudioRoomInfo) updates) => super.copyWith((message) => updates(message as StudioRoomInfo)) as StudioRoomInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StudioRoomInfo create() => StudioRoomInfo._();
  StudioRoomInfo createEmptyInstance() => create();
  static $pb.PbList<StudioRoomInfo> createRepeated() => $pb.PbList<StudioRoomInfo>();
  @$core.pragma('dart2js:noInline')
  static StudioRoomInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudioRoomInfo>(create);
  static StudioRoomInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// 情報の種類 (例: Equipment)"
  @$pb.TagNumber(2)
  StudioRoomInfoType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(StudioRoomInfoType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
  @$pb.TagNumber(2)
  StudioRoomInfoType ensureType() => $_ensure(1);

  /// 情報のキー (例: ギターアンプ)"
  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  /// 情報の値 (例: Marshall)"
  @$pb.TagNumber(4)
  $core.String get value => $_getSZ(3);
  @$pb.TagNumber(4)
  set value($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
}

class StudioRoomInfoType extends $pb.GeneratedMessage {
  factory StudioRoomInfoType({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  StudioRoomInfoType._() : super();
  factory StudioRoomInfoType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StudioRoomInfoType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StudioRoomInfoType', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StudioRoomInfoType clone() => StudioRoomInfoType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StudioRoomInfoType copyWith(void Function(StudioRoomInfoType) updates) => super.copyWith((message) => updates(message as StudioRoomInfoType)) as StudioRoomInfoType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StudioRoomInfoType create() => StudioRoomInfoType._();
  StudioRoomInfoType createEmptyInstance() => create();
  static $pb.PbList<StudioRoomInfoType> createRepeated() => $pb.PbList<StudioRoomInfoType>();
  @$core.pragma('dart2js:noInline')
  static StudioRoomInfoType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StudioRoomInfoType>(create);
  static StudioRoomInfoType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
