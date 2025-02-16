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

import '../../google/protobuf/timestamp.pb.dart' as $22;
import 'area.pb.dart' as $21;
import 'content.pb.dart' as $20;
import 'user.pb.dart' as $23;

class Location extends $pb.GeneratedMessage {
  factory Location({
    $core.int? id,
    $core.String? name,
    $core.String? additionalInfo,
    $21.Area? area,
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
    ..aOM<$21.Area>(4, _omitFieldNames ? '' : 'area', subBuilder: $21.Area.create)
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
  $21.Area get area => $_getN(3);
  @$pb.TagNumber(4)
  set area($21.Area v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasArea() => $_has(3);
  @$pb.TagNumber(4)
  void clearArea() => clearField(4);
  @$pb.TagNumber(4)
  $21.Area ensureArea() => $_ensure(3);

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
    $23.User? user,
    $core.String? review,
    $core.int? rating,
    $core.Iterable<$20.Resource>? resources,
    $22.Timestamp? createdAt,
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
    ..aOM<$23.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $23.User.create)
    ..aOS(2, _omitFieldNames ? '' : 'review')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..pc<$20.Resource>(4, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $20.Resource.create)
    ..aOM<$22.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $22.Timestamp.create)
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
  $23.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($23.User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $23.User ensureUser() => $_ensure(0);

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
  $core.List<$20.Resource> get resources => $_getList(3);

  @$pb.TagNumber(5)
  $22.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($22.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $22.Timestamp ensureCreatedAt() => $_ensure(4);
}

class Studio extends $pb.GeneratedMessage {
  factory Studio({
    $core.int? id,
    Location? location,
    $core.int? overallRating,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (location != null) {
      $result.location = location;
    }
    if (overallRating != null) {
      $result.overallRating = overallRating;
    }
    return $result;
  }
  Studio._() : super();
  factory Studio.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Studio.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Studio', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<Location>(2, _omitFieldNames ? '' : 'location', subBuilder: Location.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'overallRating', $pb.PbFieldType.O3)
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
  Location get location => $_getN(1);
  @$pb.TagNumber(2)
  set location(Location v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);
  @$pb.TagNumber(2)
  Location ensureLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get overallRating => $_getIZ(2);
  @$pb.TagNumber(3)
  set overallRating($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOverallRating() => $_has(2);
  @$pb.TagNumber(3)
  void clearOverallRating() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
