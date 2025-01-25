//
//  Generated code. Do not modify.
//  source: studio_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'area.pb.dart' as $8;
import 'location.pb.dart' as $11;

class CreateStudioRequest extends $pb.GeneratedMessage {
  factory CreateStudioRequest({
    $core.String? name,
    $core.String? description,
    $11.Location? location,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  CreateStudioRequest._() : super();
  factory CreateStudioRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOM<$11.Location>(3, _omitFieldNames ? '' : 'location', subBuilder: $11.Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioRequest clone() => CreateStudioRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioRequest copyWith(void Function(CreateStudioRequest) updates) => super.copyWith((message) => updates(message as CreateStudioRequest)) as CreateStudioRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioRequest create() => CreateStudioRequest._();
  CreateStudioRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStudioRequest> createRepeated() => $pb.PbList<CreateStudioRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioRequest>(create);
  static CreateStudioRequest? _defaultInstance;

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
  $11.Location get location => $_getN(2);
  @$pb.TagNumber(3)
  set location($11.Location v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);
  @$pb.TagNumber(3)
  $11.Location ensureLocation() => $_ensure(2);
}

class CreateStudioResponse extends $pb.GeneratedMessage {
  factory CreateStudioResponse({
    $11.Studio? studio,
  }) {
    final $result = create();
    if (studio != null) {
      $result.studio = studio;
    }
    return $result;
  }
  CreateStudioResponse._() : super();
  factory CreateStudioResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$11.Studio>(1, _omitFieldNames ? '' : 'studio', subBuilder: $11.Studio.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioResponse clone() => CreateStudioResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioResponse copyWith(void Function(CreateStudioResponse) updates) => super.copyWith((message) => updates(message as CreateStudioResponse)) as CreateStudioResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioResponse create() => CreateStudioResponse._();
  CreateStudioResponse createEmptyInstance() => create();
  static $pb.PbList<CreateStudioResponse> createRepeated() => $pb.PbList<CreateStudioResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioResponse>(create);
  static CreateStudioResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.Studio get studio => $_getN(0);
  @$pb.TagNumber(1)
  set studio($11.Studio v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudio() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudio() => clearField(1);
  @$pb.TagNumber(1)
  $11.Studio ensureStudio() => $_ensure(0);
}

class ListStudiosRequest extends $pb.GeneratedMessage {
  factory ListStudiosRequest({
    $core.int? pageSize,
    $core.int? pageToken,
    $8.Area? area,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (area != null) {
      $result.area = area;
    }
    return $result;
  }
  ListStudiosRequest._() : super();
  factory ListStudiosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudiosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudiosRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageToken', $pb.PbFieldType.O3)
    ..aOM<$8.Area>(3, _omitFieldNames ? '' : 'area', subBuilder: $8.Area.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudiosRequest clone() => ListStudiosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudiosRequest copyWith(void Function(ListStudiosRequest) updates) => super.copyWith((message) => updates(message as ListStudiosRequest)) as ListStudiosRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudiosRequest create() => ListStudiosRequest._();
  ListStudiosRequest createEmptyInstance() => create();
  static $pb.PbList<ListStudiosRequest> createRepeated() => $pb.PbList<ListStudiosRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStudiosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudiosRequest>(create);
  static ListStudiosRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageToken => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $8.Area get area => $_getN(2);
  @$pb.TagNumber(3)
  set area($8.Area v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasArea() => $_has(2);
  @$pb.TagNumber(3)
  void clearArea() => clearField(3);
  @$pb.TagNumber(3)
  $8.Area ensureArea() => $_ensure(2);
}

class ListStudiosResponse extends $pb.GeneratedMessage {
  factory ListStudiosResponse({
    $core.Iterable<$11.Studio>? studios,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (studios != null) {
      $result.studios.addAll(studios);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListStudiosResponse._() : super();
  factory ListStudiosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudiosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudiosResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$11.Studio>(1, _omitFieldNames ? '' : 'studios', $pb.PbFieldType.PM, subBuilder: $11.Studio.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudiosResponse clone() => ListStudiosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudiosResponse copyWith(void Function(ListStudiosResponse) updates) => super.copyWith((message) => updates(message as ListStudiosResponse)) as ListStudiosResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudiosResponse create() => ListStudiosResponse._();
  ListStudiosResponse createEmptyInstance() => create();
  static $pb.PbList<ListStudiosResponse> createRepeated() => $pb.PbList<ListStudiosResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStudiosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudiosResponse>(create);
  static ListStudiosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$11.Studio> get studios => $_getList(0);

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

class GetStudioRequest extends $pb.GeneratedMessage {
  factory GetStudioRequest({
    $core.int? studioId,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    return $result;
  }
  GetStudioRequest._() : super();
  factory GetStudioRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStudioRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStudioRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStudioRequest clone() => GetStudioRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStudioRequest copyWith(void Function(GetStudioRequest) updates) => super.copyWith((message) => updates(message as GetStudioRequest)) as GetStudioRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStudioRequest create() => GetStudioRequest._();
  GetStudioRequest createEmptyInstance() => create();
  static $pb.PbList<GetStudioRequest> createRepeated() => $pb.PbList<GetStudioRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStudioRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStudioRequest>(create);
  static GetStudioRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);
}

class GetStudioResponse extends $pb.GeneratedMessage {
  factory GetStudioResponse({
    $11.Studio? studio,
  }) {
    final $result = create();
    if (studio != null) {
      $result.studio = studio;
    }
    return $result;
  }
  GetStudioResponse._() : super();
  factory GetStudioResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStudioResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStudioResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$11.Studio>(1, _omitFieldNames ? '' : 'studio', subBuilder: $11.Studio.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStudioResponse clone() => GetStudioResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStudioResponse copyWith(void Function(GetStudioResponse) updates) => super.copyWith((message) => updates(message as GetStudioResponse)) as GetStudioResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStudioResponse create() => GetStudioResponse._();
  GetStudioResponse createEmptyInstance() => create();
  static $pb.PbList<GetStudioResponse> createRepeated() => $pb.PbList<GetStudioResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStudioResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStudioResponse>(create);
  static GetStudioResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.Studio get studio => $_getN(0);
  @$pb.TagNumber(1)
  set studio($11.Studio v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudio() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudio() => clearField(1);
  @$pb.TagNumber(1)
  $11.Studio ensureStudio() => $_ensure(0);
}

class UpdateStudioRequest extends $pb.GeneratedMessage {
  factory UpdateStudioRequest({
    $core.int? studioId,
    $core.String? name,
    $core.String? description,
    $11.Location? location,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  UpdateStudioRequest._() : super();
  factory UpdateStudioRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudioRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudioRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$11.Location>(4, _omitFieldNames ? '' : 'location', subBuilder: $11.Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudioRequest clone() => UpdateStudioRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudioRequest copyWith(void Function(UpdateStudioRequest) updates) => super.copyWith((message) => updates(message as UpdateStudioRequest)) as UpdateStudioRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudioRequest create() => UpdateStudioRequest._();
  UpdateStudioRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateStudioRequest> createRepeated() => $pb.PbList<UpdateStudioRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudioRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudioRequest>(create);
  static UpdateStudioRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

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
  $11.Location get location => $_getN(3);
  @$pb.TagNumber(4)
  set location($11.Location v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
  @$pb.TagNumber(4)
  $11.Location ensureLocation() => $_ensure(3);
}

class UpdateStudioResponse extends $pb.GeneratedMessage {
  factory UpdateStudioResponse({
    $11.Studio? studio,
  }) {
    final $result = create();
    if (studio != null) {
      $result.studio = studio;
    }
    return $result;
  }
  UpdateStudioResponse._() : super();
  factory UpdateStudioResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudioResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudioResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$11.Studio>(1, _omitFieldNames ? '' : 'studio', subBuilder: $11.Studio.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudioResponse clone() => UpdateStudioResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudioResponse copyWith(void Function(UpdateStudioResponse) updates) => super.copyWith((message) => updates(message as UpdateStudioResponse)) as UpdateStudioResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudioResponse create() => UpdateStudioResponse._();
  UpdateStudioResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateStudioResponse> createRepeated() => $pb.PbList<UpdateStudioResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudioResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudioResponse>(create);
  static UpdateStudioResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.Studio get studio => $_getN(0);
  @$pb.TagNumber(1)
  set studio($11.Studio v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudio() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudio() => clearField(1);
  @$pb.TagNumber(1)
  $11.Studio ensureStudio() => $_ensure(0);
}

class DeleteStudioRequest extends $pb.GeneratedMessage {
  factory DeleteStudioRequest({
    $core.int? studioId,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    return $result;
  }
  DeleteStudioRequest._() : super();
  factory DeleteStudioRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioRequest clone() => DeleteStudioRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioRequest copyWith(void Function(DeleteStudioRequest) updates) => super.copyWith((message) => updates(message as DeleteStudioRequest)) as DeleteStudioRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioRequest create() => DeleteStudioRequest._();
  DeleteStudioRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioRequest> createRepeated() => $pb.PbList<DeleteStudioRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioRequest>(create);
  static DeleteStudioRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);
}

class DeleteStudioResponse extends $pb.GeneratedMessage {
  factory DeleteStudioResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteStudioResponse._() : super();
  factory DeleteStudioResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioResponse clone() => DeleteStudioResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioResponse copyWith(void Function(DeleteStudioResponse) updates) => super.copyWith((message) => updates(message as DeleteStudioResponse)) as DeleteStudioResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioResponse create() => DeleteStudioResponse._();
  DeleteStudioResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioResponse> createRepeated() => $pb.PbList<DeleteStudioResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioResponse>(create);
  static DeleteStudioResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class CreateStudioReviewRequest extends $pb.GeneratedMessage {
  factory CreateStudioReviewRequest({
    $core.int? studioId,
    $core.String? comment,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  CreateStudioReviewRequest._() : super();
  factory CreateStudioReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioReviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioReviewRequest clone() => CreateStudioReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioReviewRequest copyWith(void Function(CreateStudioReviewRequest) updates) => super.copyWith((message) => updates(message as CreateStudioReviewRequest)) as CreateStudioReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewRequest create() => CreateStudioReviewRequest._();
  CreateStudioReviewRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStudioReviewRequest> createRepeated() => $pb.PbList<CreateStudioReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioReviewRequest>(create);
  static CreateStudioReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => clearField(2);
}

class CreateStudioReviewResponse extends $pb.GeneratedMessage {
  factory CreateStudioReviewResponse({
    $11.StudioReview? review,
  }) {
    final $result = create();
    if (review != null) {
      $result.review = review;
    }
    return $result;
  }
  CreateStudioReviewResponse._() : super();
  factory CreateStudioReviewResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioReviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioReviewResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$11.StudioReview>(1, _omitFieldNames ? '' : 'review', subBuilder: $11.StudioReview.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioReviewResponse clone() => CreateStudioReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioReviewResponse copyWith(void Function(CreateStudioReviewResponse) updates) => super.copyWith((message) => updates(message as CreateStudioReviewResponse)) as CreateStudioReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewResponse create() => CreateStudioReviewResponse._();
  CreateStudioReviewResponse createEmptyInstance() => create();
  static $pb.PbList<CreateStudioReviewResponse> createRepeated() => $pb.PbList<CreateStudioReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioReviewResponse>(create);
  static CreateStudioReviewResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.StudioReview get review => $_getN(0);
  @$pb.TagNumber(1)
  set review($11.StudioReview v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReview() => $_has(0);
  @$pb.TagNumber(1)
  void clearReview() => clearField(1);
  @$pb.TagNumber(1)
  $11.StudioReview ensureReview() => $_ensure(0);
}

class ListStudioReviewsRequest extends $pb.GeneratedMessage {
  factory ListStudioReviewsRequest({
    $core.int? studioId,
    $core.int? pageSize,
    $core.int? pageToken,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    return $result;
  }
  ListStudioReviewsRequest._() : super();
  factory ListStudioReviewsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioReviewsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioReviewsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pageToken', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioReviewsRequest clone() => ListStudioReviewsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioReviewsRequest copyWith(void Function(ListStudioReviewsRequest) updates) => super.copyWith((message) => updates(message as ListStudioReviewsRequest)) as ListStudioReviewsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsRequest create() => ListStudioReviewsRequest._();
  ListStudioReviewsRequest createEmptyInstance() => create();
  static $pb.PbList<ListStudioReviewsRequest> createRepeated() => $pb.PbList<ListStudioReviewsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioReviewsRequest>(create);
  static ListStudioReviewsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pageToken => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);
}

class ListStudioReviewsResponse extends $pb.GeneratedMessage {
  factory ListStudioReviewsResponse({
    $core.Iterable<$11.StudioReview>? reviews,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (reviews != null) {
      $result.reviews.addAll(reviews);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListStudioReviewsResponse._() : super();
  factory ListStudioReviewsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioReviewsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioReviewsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$11.StudioReview>(1, _omitFieldNames ? '' : 'reviews', $pb.PbFieldType.PM, subBuilder: $11.StudioReview.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioReviewsResponse clone() => ListStudioReviewsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioReviewsResponse copyWith(void Function(ListStudioReviewsResponse) updates) => super.copyWith((message) => updates(message as ListStudioReviewsResponse)) as ListStudioReviewsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsResponse create() => ListStudioReviewsResponse._();
  ListStudioReviewsResponse createEmptyInstance() => create();
  static $pb.PbList<ListStudioReviewsResponse> createRepeated() => $pb.PbList<ListStudioReviewsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioReviewsResponse>(create);
  static ListStudioReviewsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$11.StudioReview> get reviews => $_getList(0);

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

class DeleteStudioReviewRequest extends $pb.GeneratedMessage {
  factory DeleteStudioReviewRequest({
    $core.int? studioId,
    $core.int? reviewId,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (reviewId != null) {
      $result.reviewId = reviewId;
    }
    return $result;
  }
  DeleteStudioReviewRequest._() : super();
  factory DeleteStudioReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioReviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'reviewId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewRequest clone() => DeleteStudioReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewRequest copyWith(void Function(DeleteStudioReviewRequest) updates) => super.copyWith((message) => updates(message as DeleteStudioReviewRequest)) as DeleteStudioReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewRequest create() => DeleteStudioReviewRequest._();
  DeleteStudioReviewRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioReviewRequest> createRepeated() => $pb.PbList<DeleteStudioReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioReviewRequest>(create);
  static DeleteStudioReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get reviewId => $_getIZ(1);
  @$pb.TagNumber(2)
  set reviewId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReviewId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReviewId() => clearField(2);
}

class DeleteStudioReviewResponse extends $pb.GeneratedMessage {
  factory DeleteStudioReviewResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteStudioReviewResponse._() : super();
  factory DeleteStudioReviewResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioReviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioReviewResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewResponse clone() => DeleteStudioReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewResponse copyWith(void Function(DeleteStudioReviewResponse) updates) => super.copyWith((message) => updates(message as DeleteStudioReviewResponse)) as DeleteStudioReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewResponse create() => DeleteStudioReviewResponse._();
  DeleteStudioReviewResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioReviewResponse> createRepeated() => $pb.PbList<DeleteStudioReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioReviewResponse>(create);
  static DeleteStudioReviewResponse? _defaultInstance;

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
