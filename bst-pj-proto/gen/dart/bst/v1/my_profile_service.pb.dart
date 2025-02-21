//
//  Generated code. Do not modify.
//  source: bst/v1/my_profile_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $27;

class GetMyProfileResponse extends $pb.GeneratedMessage {
  factory GetMyProfileResponse({
    $27.UserProfile? profile,
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
  GetMyProfileResponse._() : super();
  factory GetMyProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMyProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMyProfileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$27.UserProfile>(1, _omitFieldNames ? '' : 'profile', subBuilder: $27.UserProfile.create)
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMyProfileResponse clone() => GetMyProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMyProfileResponse copyWith(void Function(GetMyProfileResponse) updates) => super.copyWith((message) => updates(message as GetMyProfileResponse)) as GetMyProfileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMyProfileResponse create() => GetMyProfileResponse._();
  GetMyProfileResponse createEmptyInstance() => create();
  static $pb.PbList<GetMyProfileResponse> createRepeated() => $pb.PbList<GetMyProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMyProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMyProfileResponse>(create);
  static GetMyProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $27.UserProfile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile($27.UserProfile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => clearField(1);
  @$pb.TagNumber(1)
  $27.UserProfile ensureProfile() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class UpdateIntroductionRequest extends $pb.GeneratedMessage {
  factory UpdateIntroductionRequest({
    $core.String? introduction,
  }) {
    final $result = create();
    if (introduction != null) {
      $result.introduction = introduction;
    }
    return $result;
  }
  UpdateIntroductionRequest._() : super();
  factory UpdateIntroductionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateIntroductionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateIntroductionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'introduction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateIntroductionRequest clone() => UpdateIntroductionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateIntroductionRequest copyWith(void Function(UpdateIntroductionRequest) updates) => super.copyWith((message) => updates(message as UpdateIntroductionRequest)) as UpdateIntroductionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateIntroductionRequest create() => UpdateIntroductionRequest._();
  UpdateIntroductionRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateIntroductionRequest> createRepeated() => $pb.PbList<UpdateIntroductionRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateIntroductionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateIntroductionRequest>(create);
  static UpdateIntroductionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get introduction => $_getSZ(0);
  @$pb.TagNumber(1)
  set introduction($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIntroduction() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntroduction() => clearField(1);
}

class UpdateUserNameRequest extends $pb.GeneratedMessage {
  factory UpdateUserNameRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  UpdateUserNameRequest._() : super();
  factory UpdateUserNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserNameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserNameRequest clone() => UpdateUserNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserNameRequest copyWith(void Function(UpdateUserNameRequest) updates) => super.copyWith((message) => updates(message as UpdateUserNameRequest)) as UpdateUserNameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserNameRequest create() => UpdateUserNameRequest._();
  UpdateUserNameRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserNameRequest> createRepeated() => $pb.PbList<UpdateUserNameRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserNameRequest>(create);
  static UpdateUserNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class UpdateUserIconRequest extends $pb.GeneratedMessage {
  factory UpdateUserIconRequest({
    $core.String? icon,
  }) {
    final $result = create();
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  UpdateUserIconRequest._() : super();
  factory UpdateUserIconRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserIconRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserIconRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserIconRequest clone() => UpdateUserIconRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserIconRequest copyWith(void Function(UpdateUserIconRequest) updates) => super.copyWith((message) => updates(message as UpdateUserIconRequest)) as UpdateUserIconRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserIconRequest create() => UpdateUserIconRequest._();
  UpdateUserIconRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserIconRequest> createRepeated() => $pb.PbList<UpdateUserIconRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserIconRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserIconRequest>(create);
  static UpdateUserIconRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => clearField(1);
}

class UpdateUserGenresRequest extends $pb.GeneratedMessage {
  factory UpdateUserGenresRequest({
    $core.Iterable<$core.int>? genreIds,
  }) {
    final $result = create();
    if (genreIds != null) {
      $result.genreIds.addAll(genreIds);
    }
    return $result;
  }
  UpdateUserGenresRequest._() : super();
  factory UpdateUserGenresRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserGenresRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserGenresRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'genreIds', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserGenresRequest clone() => UpdateUserGenresRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserGenresRequest copyWith(void Function(UpdateUserGenresRequest) updates) => super.copyWith((message) => updates(message as UpdateUserGenresRequest)) as UpdateUserGenresRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserGenresRequest create() => UpdateUserGenresRequest._();
  UpdateUserGenresRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserGenresRequest> createRepeated() => $pb.PbList<UpdateUserGenresRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserGenresRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserGenresRequest>(create);
  static UpdateUserGenresRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get genreIds => $_getList(0);
}

class UpdateUserArtistsRequest extends $pb.GeneratedMessage {
  factory UpdateUserArtistsRequest({
    $core.Iterable<$core.int>? artistIds,
  }) {
    final $result = create();
    if (artistIds != null) {
      $result.artistIds.addAll(artistIds);
    }
    return $result;
  }
  UpdateUserArtistsRequest._() : super();
  factory UpdateUserArtistsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserArtistsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserArtistsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'artistIds', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserArtistsRequest clone() => UpdateUserArtistsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserArtistsRequest copyWith(void Function(UpdateUserArtistsRequest) updates) => super.copyWith((message) => updates(message as UpdateUserArtistsRequest)) as UpdateUserArtistsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserArtistsRequest create() => UpdateUserArtistsRequest._();
  UpdateUserArtistsRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserArtistsRequest> createRepeated() => $pb.PbList<UpdateUserArtistsRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserArtistsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserArtistsRequest>(create);
  static UpdateUserArtistsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get artistIds => $_getList(0);
}

class UpdateUserPartsRequest extends $pb.GeneratedMessage {
  factory UpdateUserPartsRequest({
    $core.Iterable<$core.int>? partIds,
  }) {
    final $result = create();
    if (partIds != null) {
      $result.partIds.addAll(partIds);
    }
    return $result;
  }
  UpdateUserPartsRequest._() : super();
  factory UpdateUserPartsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserPartsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserPartsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'partIds', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserPartsRequest clone() => UpdateUserPartsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserPartsRequest copyWith(void Function(UpdateUserPartsRequest) updates) => super.copyWith((message) => updates(message as UpdateUserPartsRequest)) as UpdateUserPartsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserPartsRequest create() => UpdateUserPartsRequest._();
  UpdateUserPartsRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserPartsRequest> createRepeated() => $pb.PbList<UpdateUserPartsRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserPartsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserPartsRequest>(create);
  static UpdateUserPartsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get partIds => $_getList(0);
}

class UpdateUserAreaRequest extends $pb.GeneratedMessage {
  factory UpdateUserAreaRequest({
    $core.int? areaId,
  }) {
    final $result = create();
    if (areaId != null) {
      $result.areaId = areaId;
    }
    return $result;
  }
  UpdateUserAreaRequest._() : super();
  factory UpdateUserAreaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserAreaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserAreaRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'areaId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserAreaRequest clone() => UpdateUserAreaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserAreaRequest copyWith(void Function(UpdateUserAreaRequest) updates) => super.copyWith((message) => updates(message as UpdateUserAreaRequest)) as UpdateUserAreaRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserAreaRequest create() => UpdateUserAreaRequest._();
  UpdateUserAreaRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserAreaRequest> createRepeated() => $pb.PbList<UpdateUserAreaRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserAreaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserAreaRequest>(create);
  static UpdateUserAreaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get areaId => $_getIZ(0);
  @$pb.TagNumber(1)
  set areaId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAreaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAreaId() => clearField(1);
}

class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse({
    $core.bool? success,
    $27.UserProfile? profile,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (profile != null) {
      $result.profile = profile;
    }
    return $result;
  }
  UpdateResponse._() : super();
  factory UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<$27.UserProfile>(2, _omitFieldNames ? '' : 'profile', subBuilder: $27.UserProfile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $27.UserProfile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($27.UserProfile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $27.UserProfile ensureProfile() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
