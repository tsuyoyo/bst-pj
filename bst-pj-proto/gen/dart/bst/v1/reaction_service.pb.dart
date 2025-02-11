//
//  Generated code. Do not modify.
//  source: bst/v1/reaction_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'communication.pb.dart' as $16;

/// ReactionType messages
class CreateReactionTypeRequest extends $pb.GeneratedMessage {
  factory CreateReactionTypeRequest({
    $core.String? name,
    $core.String? description,
    $core.String? iconUrl,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (iconUrl != null) {
      $result.iconUrl = iconUrl;
    }
    return $result;
  }
  CreateReactionTypeRequest._() : super();
  factory CreateReactionTypeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReactionTypeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateReactionTypeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'iconUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReactionTypeRequest clone() => CreateReactionTypeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReactionTypeRequest copyWith(void Function(CreateReactionTypeRequest) updates) => super.copyWith((message) => updates(message as CreateReactionTypeRequest)) as CreateReactionTypeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateReactionTypeRequest create() => CreateReactionTypeRequest._();
  CreateReactionTypeRequest createEmptyInstance() => create();
  static $pb.PbList<CreateReactionTypeRequest> createRepeated() => $pb.PbList<CreateReactionTypeRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateReactionTypeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReactionTypeRequest>(create);
  static CreateReactionTypeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconUrl() => clearField(3);
}

class CreateReactionTypeResponse extends $pb.GeneratedMessage {
  factory CreateReactionTypeResponse({
    $16.ReactionType? reactionType,
  }) {
    final $result = create();
    if (reactionType != null) {
      $result.reactionType = reactionType;
    }
    return $result;
  }
  CreateReactionTypeResponse._() : super();
  factory CreateReactionTypeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReactionTypeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateReactionTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$16.ReactionType>(1, _omitFieldNames ? '' : 'reactionType', subBuilder: $16.ReactionType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReactionTypeResponse clone() => CreateReactionTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReactionTypeResponse copyWith(void Function(CreateReactionTypeResponse) updates) => super.copyWith((message) => updates(message as CreateReactionTypeResponse)) as CreateReactionTypeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateReactionTypeResponse create() => CreateReactionTypeResponse._();
  CreateReactionTypeResponse createEmptyInstance() => create();
  static $pb.PbList<CreateReactionTypeResponse> createRepeated() => $pb.PbList<CreateReactionTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateReactionTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReactionTypeResponse>(create);
  static CreateReactionTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $16.ReactionType get reactionType => $_getN(0);
  @$pb.TagNumber(1)
  set reactionType($16.ReactionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionType() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionType() => clearField(1);
  @$pb.TagNumber(1)
  $16.ReactionType ensureReactionType() => $_ensure(0);
}

class GetReactionTypeRequest extends $pb.GeneratedMessage {
  factory GetReactionTypeRequest({
    $core.int? reactionTypeId,
  }) {
    final $result = create();
    if (reactionTypeId != null) {
      $result.reactionTypeId = reactionTypeId;
    }
    return $result;
  }
  GetReactionTypeRequest._() : super();
  factory GetReactionTypeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReactionTypeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReactionTypeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reactionTypeId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReactionTypeRequest clone() => GetReactionTypeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReactionTypeRequest copyWith(void Function(GetReactionTypeRequest) updates) => super.copyWith((message) => updates(message as GetReactionTypeRequest)) as GetReactionTypeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReactionTypeRequest create() => GetReactionTypeRequest._();
  GetReactionTypeRequest createEmptyInstance() => create();
  static $pb.PbList<GetReactionTypeRequest> createRepeated() => $pb.PbList<GetReactionTypeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetReactionTypeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReactionTypeRequest>(create);
  static GetReactionTypeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reactionTypeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reactionTypeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionTypeId() => clearField(1);
}

class GetReactionTypeResponse extends $pb.GeneratedMessage {
  factory GetReactionTypeResponse({
    $16.ReactionType? reactionType,
  }) {
    final $result = create();
    if (reactionType != null) {
      $result.reactionType = reactionType;
    }
    return $result;
  }
  GetReactionTypeResponse._() : super();
  factory GetReactionTypeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReactionTypeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReactionTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$16.ReactionType>(1, _omitFieldNames ? '' : 'reactionType', subBuilder: $16.ReactionType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReactionTypeResponse clone() => GetReactionTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReactionTypeResponse copyWith(void Function(GetReactionTypeResponse) updates) => super.copyWith((message) => updates(message as GetReactionTypeResponse)) as GetReactionTypeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReactionTypeResponse create() => GetReactionTypeResponse._();
  GetReactionTypeResponse createEmptyInstance() => create();
  static $pb.PbList<GetReactionTypeResponse> createRepeated() => $pb.PbList<GetReactionTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetReactionTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReactionTypeResponse>(create);
  static GetReactionTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $16.ReactionType get reactionType => $_getN(0);
  @$pb.TagNumber(1)
  set reactionType($16.ReactionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionType() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionType() => clearField(1);
  @$pb.TagNumber(1)
  $16.ReactionType ensureReactionType() => $_ensure(0);
}

class ListReactionTypesRequest extends $pb.GeneratedMessage {
  factory ListReactionTypesRequest({
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    return $result;
  }
  ListReactionTypesRequest._() : super();
  factory ListReactionTypesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReactionTypesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListReactionTypesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReactionTypesRequest clone() => ListReactionTypesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReactionTypesRequest copyWith(void Function(ListReactionTypesRequest) updates) => super.copyWith((message) => updates(message as ListReactionTypesRequest)) as ListReactionTypesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReactionTypesRequest create() => ListReactionTypesRequest._();
  ListReactionTypesRequest createEmptyInstance() => create();
  static $pb.PbList<ListReactionTypesRequest> createRepeated() => $pb.PbList<ListReactionTypesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListReactionTypesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReactionTypesRequest>(create);
  static ListReactionTypesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);
}

class ListReactionTypesResponse extends $pb.GeneratedMessage {
  factory ListReactionTypesResponse({
    $core.Iterable<$16.ReactionType>? reactionTypes,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (reactionTypes != null) {
      $result.reactionTypes.addAll(reactionTypes);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListReactionTypesResponse._() : super();
  factory ListReactionTypesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReactionTypesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListReactionTypesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$16.ReactionType>(1, _omitFieldNames ? '' : 'reactionTypes', $pb.PbFieldType.PM, subBuilder: $16.ReactionType.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReactionTypesResponse clone() => ListReactionTypesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReactionTypesResponse copyWith(void Function(ListReactionTypesResponse) updates) => super.copyWith((message) => updates(message as ListReactionTypesResponse)) as ListReactionTypesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReactionTypesResponse create() => ListReactionTypesResponse._();
  ListReactionTypesResponse createEmptyInstance() => create();
  static $pb.PbList<ListReactionTypesResponse> createRepeated() => $pb.PbList<ListReactionTypesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListReactionTypesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReactionTypesResponse>(create);
  static ListReactionTypesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$16.ReactionType> get reactionTypes => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);
}

class UpdateReactionTypeRequest extends $pb.GeneratedMessage {
  factory UpdateReactionTypeRequest({
    $core.int? reactionTypeId,
    $core.String? name,
    $core.String? description,
    $core.String? iconUrl,
  }) {
    final $result = create();
    if (reactionTypeId != null) {
      $result.reactionTypeId = reactionTypeId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (iconUrl != null) {
      $result.iconUrl = iconUrl;
    }
    return $result;
  }
  UpdateReactionTypeRequest._() : super();
  factory UpdateReactionTypeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReactionTypeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReactionTypeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reactionTypeId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'iconUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReactionTypeRequest clone() => UpdateReactionTypeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReactionTypeRequest copyWith(void Function(UpdateReactionTypeRequest) updates) => super.copyWith((message) => updates(message as UpdateReactionTypeRequest)) as UpdateReactionTypeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReactionTypeRequest create() => UpdateReactionTypeRequest._();
  UpdateReactionTypeRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateReactionTypeRequest> createRepeated() => $pb.PbList<UpdateReactionTypeRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateReactionTypeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReactionTypeRequest>(create);
  static UpdateReactionTypeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reactionTypeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reactionTypeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionTypeId() => clearField(1);

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
  $core.String get iconUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set iconUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIconUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearIconUrl() => clearField(4);
}

class UpdateReactionTypeResponse extends $pb.GeneratedMessage {
  factory UpdateReactionTypeResponse({
    $16.ReactionType? reactionType,
  }) {
    final $result = create();
    if (reactionType != null) {
      $result.reactionType = reactionType;
    }
    return $result;
  }
  UpdateReactionTypeResponse._() : super();
  factory UpdateReactionTypeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReactionTypeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReactionTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$16.ReactionType>(1, _omitFieldNames ? '' : 'reactionType', subBuilder: $16.ReactionType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReactionTypeResponse clone() => UpdateReactionTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReactionTypeResponse copyWith(void Function(UpdateReactionTypeResponse) updates) => super.copyWith((message) => updates(message as UpdateReactionTypeResponse)) as UpdateReactionTypeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReactionTypeResponse create() => UpdateReactionTypeResponse._();
  UpdateReactionTypeResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateReactionTypeResponse> createRepeated() => $pb.PbList<UpdateReactionTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateReactionTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReactionTypeResponse>(create);
  static UpdateReactionTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $16.ReactionType get reactionType => $_getN(0);
  @$pb.TagNumber(1)
  set reactionType($16.ReactionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionType() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionType() => clearField(1);
  @$pb.TagNumber(1)
  $16.ReactionType ensureReactionType() => $_ensure(0);
}

class DeleteReactionTypeRequest extends $pb.GeneratedMessage {
  factory DeleteReactionTypeRequest({
    $core.int? reactionTypeId,
  }) {
    final $result = create();
    if (reactionTypeId != null) {
      $result.reactionTypeId = reactionTypeId;
    }
    return $result;
  }
  DeleteReactionTypeRequest._() : super();
  factory DeleteReactionTypeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReactionTypeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReactionTypeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reactionTypeId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReactionTypeRequest clone() => DeleteReactionTypeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReactionTypeRequest copyWith(void Function(DeleteReactionTypeRequest) updates) => super.copyWith((message) => updates(message as DeleteReactionTypeRequest)) as DeleteReactionTypeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReactionTypeRequest create() => DeleteReactionTypeRequest._();
  DeleteReactionTypeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteReactionTypeRequest> createRepeated() => $pb.PbList<DeleteReactionTypeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteReactionTypeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReactionTypeRequest>(create);
  static DeleteReactionTypeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reactionTypeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reactionTypeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionTypeId() => clearField(1);
}

class DeleteReactionTypeResponse extends $pb.GeneratedMessage {
  factory DeleteReactionTypeResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteReactionTypeResponse._() : super();
  factory DeleteReactionTypeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReactionTypeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReactionTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReactionTypeResponse clone() => DeleteReactionTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReactionTypeResponse copyWith(void Function(DeleteReactionTypeResponse) updates) => super.copyWith((message) => updates(message as DeleteReactionTypeResponse)) as DeleteReactionTypeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReactionTypeResponse create() => DeleteReactionTypeResponse._();
  DeleteReactionTypeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteReactionTypeResponse> createRepeated() => $pb.PbList<DeleteReactionTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteReactionTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReactionTypeResponse>(create);
  static DeleteReactionTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

/// Reaction messages
class CreateReactionRequest extends $pb.GeneratedMessage {
  factory CreateReactionRequest({
    $core.int? targetId,
    $core.int? reactionTypeId,
  }) {
    final $result = create();
    if (targetId != null) {
      $result.targetId = targetId;
    }
    if (reactionTypeId != null) {
      $result.reactionTypeId = reactionTypeId;
    }
    return $result;
  }
  CreateReactionRequest._() : super();
  factory CreateReactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateReactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'targetId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'reactionTypeId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReactionRequest clone() => CreateReactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReactionRequest copyWith(void Function(CreateReactionRequest) updates) => super.copyWith((message) => updates(message as CreateReactionRequest)) as CreateReactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateReactionRequest create() => CreateReactionRequest._();
  CreateReactionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateReactionRequest> createRepeated() => $pb.PbList<CreateReactionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateReactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReactionRequest>(create);
  static CreateReactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get targetId => $_getIZ(0);
  @$pb.TagNumber(1)
  set targetId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get reactionTypeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set reactionTypeId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReactionTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReactionTypeId() => clearField(2);
}

class CreateReactionResponse extends $pb.GeneratedMessage {
  factory CreateReactionResponse({
    $16.Reaction? reaction,
  }) {
    final $result = create();
    if (reaction != null) {
      $result.reaction = reaction;
    }
    return $result;
  }
  CreateReactionResponse._() : super();
  factory CreateReactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateReactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$16.Reaction>(1, _omitFieldNames ? '' : 'reaction', subBuilder: $16.Reaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReactionResponse clone() => CreateReactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReactionResponse copyWith(void Function(CreateReactionResponse) updates) => super.copyWith((message) => updates(message as CreateReactionResponse)) as CreateReactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateReactionResponse create() => CreateReactionResponse._();
  CreateReactionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateReactionResponse> createRepeated() => $pb.PbList<CreateReactionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateReactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReactionResponse>(create);
  static CreateReactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $16.Reaction get reaction => $_getN(0);
  @$pb.TagNumber(1)
  set reaction($16.Reaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearReaction() => clearField(1);
  @$pb.TagNumber(1)
  $16.Reaction ensureReaction() => $_ensure(0);
}

class GetReactionRequest extends $pb.GeneratedMessage {
  factory GetReactionRequest({
    $core.int? reactionId,
  }) {
    final $result = create();
    if (reactionId != null) {
      $result.reactionId = reactionId;
    }
    return $result;
  }
  GetReactionRequest._() : super();
  factory GetReactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reactionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReactionRequest clone() => GetReactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReactionRequest copyWith(void Function(GetReactionRequest) updates) => super.copyWith((message) => updates(message as GetReactionRequest)) as GetReactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReactionRequest create() => GetReactionRequest._();
  GetReactionRequest createEmptyInstance() => create();
  static $pb.PbList<GetReactionRequest> createRepeated() => $pb.PbList<GetReactionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetReactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReactionRequest>(create);
  static GetReactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reactionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reactionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionId() => clearField(1);
}

class GetReactionResponse extends $pb.GeneratedMessage {
  factory GetReactionResponse({
    $16.Reaction? reaction,
  }) {
    final $result = create();
    if (reaction != null) {
      $result.reaction = reaction;
    }
    return $result;
  }
  GetReactionResponse._() : super();
  factory GetReactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$16.Reaction>(1, _omitFieldNames ? '' : 'reaction', subBuilder: $16.Reaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReactionResponse clone() => GetReactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReactionResponse copyWith(void Function(GetReactionResponse) updates) => super.copyWith((message) => updates(message as GetReactionResponse)) as GetReactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReactionResponse create() => GetReactionResponse._();
  GetReactionResponse createEmptyInstance() => create();
  static $pb.PbList<GetReactionResponse> createRepeated() => $pb.PbList<GetReactionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetReactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReactionResponse>(create);
  static GetReactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $16.Reaction get reaction => $_getN(0);
  @$pb.TagNumber(1)
  set reaction($16.Reaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearReaction() => clearField(1);
  @$pb.TagNumber(1)
  $16.Reaction ensureReaction() => $_ensure(0);
}

class ListReactionsRequest extends $pb.GeneratedMessage {
  factory ListReactionsRequest({
    $core.int? pageSize,
    $core.String? pageToken,
    $core.int? targetId,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (targetId != null) {
      $result.targetId = targetId;
    }
    return $result;
  }
  ListReactionsRequest._() : super();
  factory ListReactionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReactionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListReactionsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'targetId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReactionsRequest clone() => ListReactionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReactionsRequest copyWith(void Function(ListReactionsRequest) updates) => super.copyWith((message) => updates(message as ListReactionsRequest)) as ListReactionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReactionsRequest create() => ListReactionsRequest._();
  ListReactionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListReactionsRequest> createRepeated() => $pb.PbList<ListReactionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListReactionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReactionsRequest>(create);
  static ListReactionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get targetId => $_getIZ(2);
  @$pb.TagNumber(3)
  set targetId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetId() => clearField(3);
}

class ListReactionsResponse extends $pb.GeneratedMessage {
  factory ListReactionsResponse({
    $core.Iterable<$16.Reaction>? reactions,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (reactions != null) {
      $result.reactions.addAll(reactions);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListReactionsResponse._() : super();
  factory ListReactionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReactionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListReactionsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$16.Reaction>(1, _omitFieldNames ? '' : 'reactions', $pb.PbFieldType.PM, subBuilder: $16.Reaction.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReactionsResponse clone() => ListReactionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReactionsResponse copyWith(void Function(ListReactionsResponse) updates) => super.copyWith((message) => updates(message as ListReactionsResponse)) as ListReactionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReactionsResponse create() => ListReactionsResponse._();
  ListReactionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListReactionsResponse> createRepeated() => $pb.PbList<ListReactionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListReactionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReactionsResponse>(create);
  static ListReactionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$16.Reaction> get reactions => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);
}

class UpdateReactionRequest extends $pb.GeneratedMessage {
  factory UpdateReactionRequest({
    $core.int? reactionId,
    $core.int? reactionTypeId,
  }) {
    final $result = create();
    if (reactionId != null) {
      $result.reactionId = reactionId;
    }
    if (reactionTypeId != null) {
      $result.reactionTypeId = reactionTypeId;
    }
    return $result;
  }
  UpdateReactionRequest._() : super();
  factory UpdateReactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reactionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'reactionTypeId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReactionRequest clone() => UpdateReactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReactionRequest copyWith(void Function(UpdateReactionRequest) updates) => super.copyWith((message) => updates(message as UpdateReactionRequest)) as UpdateReactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReactionRequest create() => UpdateReactionRequest._();
  UpdateReactionRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateReactionRequest> createRepeated() => $pb.PbList<UpdateReactionRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateReactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReactionRequest>(create);
  static UpdateReactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reactionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reactionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get reactionTypeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set reactionTypeId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReactionTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReactionTypeId() => clearField(2);
}

class UpdateReactionResponse extends $pb.GeneratedMessage {
  factory UpdateReactionResponse({
    $16.Reaction? reaction,
  }) {
    final $result = create();
    if (reaction != null) {
      $result.reaction = reaction;
    }
    return $result;
  }
  UpdateReactionResponse._() : super();
  factory UpdateReactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$16.Reaction>(1, _omitFieldNames ? '' : 'reaction', subBuilder: $16.Reaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReactionResponse clone() => UpdateReactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReactionResponse copyWith(void Function(UpdateReactionResponse) updates) => super.copyWith((message) => updates(message as UpdateReactionResponse)) as UpdateReactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReactionResponse create() => UpdateReactionResponse._();
  UpdateReactionResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateReactionResponse> createRepeated() => $pb.PbList<UpdateReactionResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateReactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReactionResponse>(create);
  static UpdateReactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $16.Reaction get reaction => $_getN(0);
  @$pb.TagNumber(1)
  set reaction($16.Reaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearReaction() => clearField(1);
  @$pb.TagNumber(1)
  $16.Reaction ensureReaction() => $_ensure(0);
}

class DeleteReactionRequest extends $pb.GeneratedMessage {
  factory DeleteReactionRequest({
    $core.int? reactionId,
  }) {
    final $result = create();
    if (reactionId != null) {
      $result.reactionId = reactionId;
    }
    return $result;
  }
  DeleteReactionRequest._() : super();
  factory DeleteReactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reactionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReactionRequest clone() => DeleteReactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReactionRequest copyWith(void Function(DeleteReactionRequest) updates) => super.copyWith((message) => updates(message as DeleteReactionRequest)) as DeleteReactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReactionRequest create() => DeleteReactionRequest._();
  DeleteReactionRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteReactionRequest> createRepeated() => $pb.PbList<DeleteReactionRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteReactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReactionRequest>(create);
  static DeleteReactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reactionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reactionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionId() => clearField(1);
}

class DeleteReactionResponse extends $pb.GeneratedMessage {
  factory DeleteReactionResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteReactionResponse._() : super();
  factory DeleteReactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReactionResponse clone() => DeleteReactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReactionResponse copyWith(void Function(DeleteReactionResponse) updates) => super.copyWith((message) => updates(message as DeleteReactionResponse)) as DeleteReactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReactionResponse create() => DeleteReactionResponse._();
  DeleteReactionResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteReactionResponse> createRepeated() => $pb.PbList<DeleteReactionResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteReactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReactionResponse>(create);
  static DeleteReactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
