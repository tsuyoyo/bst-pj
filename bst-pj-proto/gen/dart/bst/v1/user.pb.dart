//
//  Generated code. Do not modify.
//  source: bst/v1/user.proto
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

/// User model
class User extends $pb.GeneratedMessage {
  factory User({
    $core.int? id,
    $core.String? name,
    $core.String? icon,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

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
  $core.String get icon => $_getSZ(2);
  @$pb.TagNumber(3)
  set icon($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}

class UserFavorite extends $pb.GeneratedMessage {
  factory UserFavorite({
    $core.Iterable<$20.Genre>? genres,
    $core.Iterable<$20.Artist>? artists,
    $core.Iterable<$20.Part>? parts,
  }) {
    final $result = create();
    if (genres != null) {
      $result.genres.addAll(genres);
    }
    if (artists != null) {
      $result.artists.addAll(artists);
    }
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    return $result;
  }
  UserFavorite._() : super();
  factory UserFavorite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFavorite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserFavorite', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$20.Genre>(1, _omitFieldNames ? '' : 'genres', $pb.PbFieldType.PM, subBuilder: $20.Genre.create)
    ..pc<$20.Artist>(2, _omitFieldNames ? '' : 'artists', $pb.PbFieldType.PM, subBuilder: $20.Artist.create)
    ..pc<$20.Part>(3, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: $20.Part.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFavorite clone() => UserFavorite()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFavorite copyWith(void Function(UserFavorite) updates) => super.copyWith((message) => updates(message as UserFavorite)) as UserFavorite;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserFavorite create() => UserFavorite._();
  UserFavorite createEmptyInstance() => create();
  static $pb.PbList<UserFavorite> createRepeated() => $pb.PbList<UserFavorite>();
  @$core.pragma('dart2js:noInline')
  static UserFavorite getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFavorite>(create);
  static UserFavorite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$20.Genre> get genres => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$20.Artist> get artists => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$20.Part> get parts => $_getList(2);
}

class UserProfile extends $pb.GeneratedMessage {
  factory UserProfile({
    User? user,
    $core.String? introduction,
    $21.Area? area,
    UserFavorite? favorite,
    $22.Timestamp? createdAt,
    $core.Iterable<UserRatingBadge>? badges,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (introduction != null) {
      $result.introduction = introduction;
    }
    if (area != null) {
      $result.area = area;
    }
    if (favorite != null) {
      $result.favorite = favorite;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (badges != null) {
      $result.badges.addAll(badges);
    }
    return $result;
  }
  UserProfile._() : super();
  factory UserProfile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProfile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserProfile', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<User>(1, _omitFieldNames ? '' : 'user', subBuilder: User.create)
    ..aOS(2, _omitFieldNames ? '' : 'introduction')
    ..aOM<$21.Area>(3, _omitFieldNames ? '' : 'area', subBuilder: $21.Area.create)
    ..aOM<UserFavorite>(4, _omitFieldNames ? '' : 'favorite', subBuilder: UserFavorite.create)
    ..aOM<$22.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $22.Timestamp.create)
    ..pc<UserRatingBadge>(6, _omitFieldNames ? '' : 'badges', $pb.PbFieldType.PM, subBuilder: UserRatingBadge.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserProfile clone() => UserProfile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserProfile copyWith(void Function(UserProfile) updates) => super.copyWith((message) => updates(message as UserProfile)) as UserProfile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProfile create() => UserProfile._();
  UserProfile createEmptyInstance() => create();
  static $pb.PbList<UserProfile> createRepeated() => $pb.PbList<UserProfile>();
  @$core.pragma('dart2js:noInline')
  static UserProfile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProfile>(create);
  static UserProfile? _defaultInstance;

  @$pb.TagNumber(1)
  User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get introduction => $_getSZ(1);
  @$pb.TagNumber(2)
  set introduction($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIntroduction() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntroduction() => clearField(2);

  @$pb.TagNumber(3)
  $21.Area get area => $_getN(2);
  @$pb.TagNumber(3)
  set area($21.Area v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasArea() => $_has(2);
  @$pb.TagNumber(3)
  void clearArea() => clearField(3);
  @$pb.TagNumber(3)
  $21.Area ensureArea() => $_ensure(2);

  @$pb.TagNumber(4)
  UserFavorite get favorite => $_getN(3);
  @$pb.TagNumber(4)
  set favorite(UserFavorite v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFavorite() => $_has(3);
  @$pb.TagNumber(4)
  void clearFavorite() => clearField(4);
  @$pb.TagNumber(4)
  UserFavorite ensureFavorite() => $_ensure(3);

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

  /// When the user is well evaluated, the badge is given.
  @$pb.TagNumber(6)
  $core.List<UserRatingBadge> get badges => $_getList(5);
}

class MyProfile extends $pb.GeneratedMessage {
  factory MyProfile({
    UserProfile? profile,
    $core.String? email,
  }) {
    final $result = create();
    if (profile != null) {
      $result.profile = profile;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  MyProfile._() : super();
  factory MyProfile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProfile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProfile', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<UserProfile>(1, _omitFieldNames ? '' : 'profile', subBuilder: UserProfile.create)
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProfile clone() => MyProfile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProfile copyWith(void Function(MyProfile) updates) => super.copyWith((message) => updates(message as MyProfile)) as MyProfile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProfile create() => MyProfile._();
  MyProfile createEmptyInstance() => create();
  static $pb.PbList<MyProfile> createRepeated() => $pb.PbList<MyProfile>();
  @$core.pragma('dart2js:noInline')
  static MyProfile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProfile>(create);
  static MyProfile? _defaultInstance;

  @$pb.TagNumber(1)
  UserProfile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(UserProfile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => clearField(1);
  @$pb.TagNumber(1)
  UserProfile ensureProfile() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class UserRatingBadge extends $pb.GeneratedMessage {
  factory UserRatingBadge({
    $core.int? id,
    $core.String? name,
    $core.String? color,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (color != null) {
      $result.color = color;
    }
    return $result;
  }
  UserRatingBadge._() : super();
  factory UserRatingBadge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRatingBadge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRatingBadge', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRatingBadge clone() => UserRatingBadge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRatingBadge copyWith(void Function(UserRatingBadge) updates) => super.copyWith((message) => updates(message as UserRatingBadge)) as UserRatingBadge;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRatingBadge create() => UserRatingBadge._();
  UserRatingBadge createEmptyInstance() => create();
  static $pb.PbList<UserRatingBadge> createRepeated() => $pb.PbList<UserRatingBadge>();
  @$core.pragma('dart2js:noInline')
  static UserRatingBadge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRatingBadge>(create);
  static UserRatingBadge? _defaultInstance;

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
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
