//
//  Generated code. Do not modify.
//  source: bst/v1/follow_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $26;

class FollowUserRequest extends $pb.GeneratedMessage {
  factory FollowUserRequest({
    $core.int? followingId,
  }) {
    final $result = create();
    if (followingId != null) {
      $result.followingId = followingId;
    }
    return $result;
  }
  FollowUserRequest._() : super();
  factory FollowUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'followingId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowUserRequest clone() => FollowUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowUserRequest copyWith(void Function(FollowUserRequest) updates) => super.copyWith((message) => updates(message as FollowUserRequest)) as FollowUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowUserRequest create() => FollowUserRequest._();
  FollowUserRequest createEmptyInstance() => create();
  static $pb.PbList<FollowUserRequest> createRepeated() => $pb.PbList<FollowUserRequest>();
  @$core.pragma('dart2js:noInline')
  static FollowUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowUserRequest>(create);
  static FollowUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get followingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set followingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFollowingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFollowingId() => clearField(1);
}

class FollowUserResponse extends $pb.GeneratedMessage {
  factory FollowUserResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  FollowUserResponse._() : super();
  factory FollowUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FollowUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FollowUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FollowUserResponse clone() => FollowUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FollowUserResponse copyWith(void Function(FollowUserResponse) updates) => super.copyWith((message) => updates(message as FollowUserResponse)) as FollowUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FollowUserResponse create() => FollowUserResponse._();
  FollowUserResponse createEmptyInstance() => create();
  static $pb.PbList<FollowUserResponse> createRepeated() => $pb.PbList<FollowUserResponse>();
  @$core.pragma('dart2js:noInline')
  static FollowUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FollowUserResponse>(create);
  static FollowUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class ListFollowersRequest extends $pb.GeneratedMessage {
  factory ListFollowersRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  ListFollowersRequest._() : super();
  factory ListFollowersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFollowersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFollowersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFollowersRequest clone() => ListFollowersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFollowersRequest copyWith(void Function(ListFollowersRequest) updates) => super.copyWith((message) => updates(message as ListFollowersRequest)) as ListFollowersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFollowersRequest create() => ListFollowersRequest._();
  ListFollowersRequest createEmptyInstance() => create();
  static $pb.PbList<ListFollowersRequest> createRepeated() => $pb.PbList<ListFollowersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListFollowersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFollowersRequest>(create);
  static ListFollowersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class ListFollowersResponse extends $pb.GeneratedMessage {
  factory ListFollowersResponse({
    $core.Iterable<$26.User>? followers,
  }) {
    final $result = create();
    if (followers != null) {
      $result.followers.addAll(followers);
    }
    return $result;
  }
  ListFollowersResponse._() : super();
  factory ListFollowersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFollowersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFollowersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$26.User>(1, _omitFieldNames ? '' : 'followers', $pb.PbFieldType.PM, subBuilder: $26.User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFollowersResponse clone() => ListFollowersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFollowersResponse copyWith(void Function(ListFollowersResponse) updates) => super.copyWith((message) => updates(message as ListFollowersResponse)) as ListFollowersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFollowersResponse create() => ListFollowersResponse._();
  ListFollowersResponse createEmptyInstance() => create();
  static $pb.PbList<ListFollowersResponse> createRepeated() => $pb.PbList<ListFollowersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListFollowersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFollowersResponse>(create);
  static ListFollowersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$26.User> get followers => $_getList(0);
}

class ListFollowingRequest extends $pb.GeneratedMessage {
  factory ListFollowingRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  ListFollowingRequest._() : super();
  factory ListFollowingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFollowingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFollowingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFollowingRequest clone() => ListFollowingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFollowingRequest copyWith(void Function(ListFollowingRequest) updates) => super.copyWith((message) => updates(message as ListFollowingRequest)) as ListFollowingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFollowingRequest create() => ListFollowingRequest._();
  ListFollowingRequest createEmptyInstance() => create();
  static $pb.PbList<ListFollowingRequest> createRepeated() => $pb.PbList<ListFollowingRequest>();
  @$core.pragma('dart2js:noInline')
  static ListFollowingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFollowingRequest>(create);
  static ListFollowingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class ListFollowingResponse extends $pb.GeneratedMessage {
  factory ListFollowingResponse({
    $core.Iterable<$26.User>? followings,
  }) {
    final $result = create();
    if (followings != null) {
      $result.followings.addAll(followings);
    }
    return $result;
  }
  ListFollowingResponse._() : super();
  factory ListFollowingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFollowingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFollowingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$26.User>(1, _omitFieldNames ? '' : 'followings', $pb.PbFieldType.PM, subBuilder: $26.User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFollowingResponse clone() => ListFollowingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFollowingResponse copyWith(void Function(ListFollowingResponse) updates) => super.copyWith((message) => updates(message as ListFollowingResponse)) as ListFollowingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFollowingResponse create() => ListFollowingResponse._();
  ListFollowingResponse createEmptyInstance() => create();
  static $pb.PbList<ListFollowingResponse> createRepeated() => $pb.PbList<ListFollowingResponse>();
  @$core.pragma('dart2js:noInline')
  static ListFollowingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFollowingResponse>(create);
  static ListFollowingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$26.User> get followings => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
