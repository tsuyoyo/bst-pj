//
//  Generated code. Do not modify.
//  source: bst/v1/user_rating_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $33;

class RateUserRequest extends $pb.GeneratedMessage {
  factory RateUserRequest({
    $core.int? userId,
    $core.int? sessionId,
    $core.int? score,
    $core.String? comment,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (score != null) {
      $result.score = score;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  RateUserRequest._() : super();
  factory RateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RateUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'score', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RateUserRequest clone() => RateUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RateUserRequest copyWith(void Function(RateUserRequest) updates) => super.copyWith((message) => updates(message as RateUserRequest)) as RateUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RateUserRequest create() => RateUserRequest._();
  RateUserRequest createEmptyInstance() => create();
  static $pb.PbList<RateUserRequest> createRepeated() => $pb.PbList<RateUserRequest>();
  @$core.pragma('dart2js:noInline')
  static RateUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RateUserRequest>(create);
  static RateUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sessionId => $_getIZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get score => $_getIZ(2);
  @$pb.TagNumber(3)
  set score($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get comment => $_getSZ(3);
  @$pb.TagNumber(4)
  set comment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasComment() => $_has(3);
  @$pb.TagNumber(4)
  void clearComment() => clearField(4);
}

class RateUserResponse extends $pb.GeneratedMessage {
  factory RateUserResponse() => create();
  RateUserResponse._() : super();
  factory RateUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RateUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RateUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RateUserResponse clone() => RateUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RateUserResponse copyWith(void Function(RateUserResponse) updates) => super.copyWith((message) => updates(message as RateUserResponse)) as RateUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RateUserResponse create() => RateUserResponse._();
  RateUserResponse createEmptyInstance() => create();
  static $pb.PbList<RateUserResponse> createRepeated() => $pb.PbList<RateUserResponse>();
  @$core.pragma('dart2js:noInline')
  static RateUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RateUserResponse>(create);
  static RateUserResponse? _defaultInstance;
}

class GetUserRatingBadgesRequest extends $pb.GeneratedMessage {
  factory GetUserRatingBadgesRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetUserRatingBadgesRequest._() : super();
  factory GetUserRatingBadgesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRatingBadgesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserRatingBadgesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserRatingBadgesRequest clone() => GetUserRatingBadgesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserRatingBadgesRequest copyWith(void Function(GetUserRatingBadgesRequest) updates) => super.copyWith((message) => updates(message as GetUserRatingBadgesRequest)) as GetUserRatingBadgesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserRatingBadgesRequest create() => GetUserRatingBadgesRequest._();
  GetUserRatingBadgesRequest createEmptyInstance() => create();
  static $pb.PbList<GetUserRatingBadgesRequest> createRepeated() => $pb.PbList<GetUserRatingBadgesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUserRatingBadgesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserRatingBadgesRequest>(create);
  static GetUserRatingBadgesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetUserRatingBadgesResponse extends $pb.GeneratedMessage {
  factory GetUserRatingBadgesResponse({
    $core.Iterable<$33.UserRatingBadge>? badges,
  }) {
    final $result = create();
    if (badges != null) {
      $result.badges.addAll(badges);
    }
    return $result;
  }
  GetUserRatingBadgesResponse._() : super();
  factory GetUserRatingBadgesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRatingBadgesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserRatingBadgesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$33.UserRatingBadge>(1, _omitFieldNames ? '' : 'badges', $pb.PbFieldType.PM, subBuilder: $33.UserRatingBadge.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserRatingBadgesResponse clone() => GetUserRatingBadgesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserRatingBadgesResponse copyWith(void Function(GetUserRatingBadgesResponse) updates) => super.copyWith((message) => updates(message as GetUserRatingBadgesResponse)) as GetUserRatingBadgesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserRatingBadgesResponse create() => GetUserRatingBadgesResponse._();
  GetUserRatingBadgesResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserRatingBadgesResponse> createRepeated() => $pb.PbList<GetUserRatingBadgesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserRatingBadgesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserRatingBadgesResponse>(create);
  static GetUserRatingBadgesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$33.UserRatingBadge> get badges => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
