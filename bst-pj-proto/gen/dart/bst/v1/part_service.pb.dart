//
//  Generated code. Do not modify.
//  source: bst/v1/part_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'content.pb.dart' as $17;

class CreatePartRequest extends $pb.GeneratedMessage {
  factory CreatePartRequest({
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  CreatePartRequest._() : super();
  factory CreatePartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePartRequest clone() => CreatePartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePartRequest copyWith(void Function(CreatePartRequest) updates) => super.copyWith((message) => updates(message as CreatePartRequest)) as CreatePartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePartRequest create() => CreatePartRequest._();
  CreatePartRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePartRequest> createRepeated() => $pb.PbList<CreatePartRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePartRequest>(create);
  static CreatePartRequest? _defaultInstance;

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
}

class CreatePartResponse extends $pb.GeneratedMessage {
  factory CreatePartResponse({
    $17.Part? part,
  }) {
    final $result = create();
    if (part != null) {
      $result.part = part;
    }
    return $result;
  }
  CreatePartResponse._() : super();
  factory CreatePartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePartResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$17.Part>(1, _omitFieldNames ? '' : 'part', subBuilder: $17.Part.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePartResponse clone() => CreatePartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePartResponse copyWith(void Function(CreatePartResponse) updates) => super.copyWith((message) => updates(message as CreatePartResponse)) as CreatePartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePartResponse create() => CreatePartResponse._();
  CreatePartResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePartResponse> createRepeated() => $pb.PbList<CreatePartResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePartResponse>(create);
  static CreatePartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $17.Part get part => $_getN(0);
  @$pb.TagNumber(1)
  set part($17.Part v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  $17.Part ensurePart() => $_ensure(0);
}

class ListPartsRequest extends $pb.GeneratedMessage {
  factory ListPartsRequest({
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
  ListPartsRequest._() : super();
  factory ListPartsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPartsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPartsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPartsRequest clone() => ListPartsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPartsRequest copyWith(void Function(ListPartsRequest) updates) => super.copyWith((message) => updates(message as ListPartsRequest)) as ListPartsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPartsRequest create() => ListPartsRequest._();
  ListPartsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPartsRequest> createRepeated() => $pb.PbList<ListPartsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPartsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPartsRequest>(create);
  static ListPartsRequest? _defaultInstance;

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

class ListPartsResponse extends $pb.GeneratedMessage {
  factory ListPartsResponse({
    $core.Iterable<$17.Part>? parts,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListPartsResponse._() : super();
  factory ListPartsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPartsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPartsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$17.Part>(1, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: $17.Part.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPartsResponse clone() => ListPartsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPartsResponse copyWith(void Function(ListPartsResponse) updates) => super.copyWith((message) => updates(message as ListPartsResponse)) as ListPartsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPartsResponse create() => ListPartsResponse._();
  ListPartsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPartsResponse> createRepeated() => $pb.PbList<ListPartsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPartsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPartsResponse>(create);
  static ListPartsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$17.Part> get parts => $_getList(0);

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

class GetPartRequest extends $pb.GeneratedMessage {
  factory GetPartRequest({
    $core.int? partId,
  }) {
    final $result = create();
    if (partId != null) {
      $result.partId = partId;
    }
    return $result;
  }
  GetPartRequest._() : super();
  factory GetPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'partId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPartRequest clone() => GetPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPartRequest copyWith(void Function(GetPartRequest) updates) => super.copyWith((message) => updates(message as GetPartRequest)) as GetPartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPartRequest create() => GetPartRequest._();
  GetPartRequest createEmptyInstance() => create();
  static $pb.PbList<GetPartRequest> createRepeated() => $pb.PbList<GetPartRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPartRequest>(create);
  static GetPartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get partId => $_getIZ(0);
  @$pb.TagNumber(1)
  set partId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartId() => clearField(1);
}

class GetPartResponse extends $pb.GeneratedMessage {
  factory GetPartResponse({
    $17.Part? part,
  }) {
    final $result = create();
    if (part != null) {
      $result.part = part;
    }
    return $result;
  }
  GetPartResponse._() : super();
  factory GetPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPartResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$17.Part>(1, _omitFieldNames ? '' : 'part', subBuilder: $17.Part.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPartResponse clone() => GetPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPartResponse copyWith(void Function(GetPartResponse) updates) => super.copyWith((message) => updates(message as GetPartResponse)) as GetPartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPartResponse create() => GetPartResponse._();
  GetPartResponse createEmptyInstance() => create();
  static $pb.PbList<GetPartResponse> createRepeated() => $pb.PbList<GetPartResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPartResponse>(create);
  static GetPartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $17.Part get part => $_getN(0);
  @$pb.TagNumber(1)
  set part($17.Part v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  $17.Part ensurePart() => $_ensure(0);
}

class UpdatePartRequest extends $pb.GeneratedMessage {
  factory UpdatePartRequest({
    $core.int? partId,
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (partId != null) {
      $result.partId = partId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  UpdatePartRequest._() : super();
  factory UpdatePartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'partId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePartRequest clone() => UpdatePartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePartRequest copyWith(void Function(UpdatePartRequest) updates) => super.copyWith((message) => updates(message as UpdatePartRequest)) as UpdatePartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePartRequest create() => UpdatePartRequest._();
  UpdatePartRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePartRequest> createRepeated() => $pb.PbList<UpdatePartRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePartRequest>(create);
  static UpdatePartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get partId => $_getIZ(0);
  @$pb.TagNumber(1)
  set partId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartId() => clearField(1);

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
}

class UpdatePartResponse extends $pb.GeneratedMessage {
  factory UpdatePartResponse({
    $17.Part? part,
  }) {
    final $result = create();
    if (part != null) {
      $result.part = part;
    }
    return $result;
  }
  UpdatePartResponse._() : super();
  factory UpdatePartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePartResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$17.Part>(1, _omitFieldNames ? '' : 'part', subBuilder: $17.Part.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePartResponse clone() => UpdatePartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePartResponse copyWith(void Function(UpdatePartResponse) updates) => super.copyWith((message) => updates(message as UpdatePartResponse)) as UpdatePartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePartResponse create() => UpdatePartResponse._();
  UpdatePartResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePartResponse> createRepeated() => $pb.PbList<UpdatePartResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePartResponse>(create);
  static UpdatePartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $17.Part get part => $_getN(0);
  @$pb.TagNumber(1)
  set part($17.Part v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  $17.Part ensurePart() => $_ensure(0);
}

class DeletePartRequest extends $pb.GeneratedMessage {
  factory DeletePartRequest({
    $core.int? partId,
  }) {
    final $result = create();
    if (partId != null) {
      $result.partId = partId;
    }
    return $result;
  }
  DeletePartRequest._() : super();
  factory DeletePartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'partId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePartRequest clone() => DeletePartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePartRequest copyWith(void Function(DeletePartRequest) updates) => super.copyWith((message) => updates(message as DeletePartRequest)) as DeletePartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePartRequest create() => DeletePartRequest._();
  DeletePartRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePartRequest> createRepeated() => $pb.PbList<DeletePartRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePartRequest>(create);
  static DeletePartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get partId => $_getIZ(0);
  @$pb.TagNumber(1)
  set partId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartId() => clearField(1);
}

class DeletePartResponse extends $pb.GeneratedMessage {
  factory DeletePartResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeletePartResponse._() : super();
  factory DeletePartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePartResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePartResponse clone() => DeletePartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePartResponse copyWith(void Function(DeletePartResponse) updates) => super.copyWith((message) => updates(message as DeletePartResponse)) as DeletePartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePartResponse create() => DeletePartResponse._();
  DeletePartResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePartResponse> createRepeated() => $pb.PbList<DeletePartResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePartResponse>(create);
  static DeletePartResponse? _defaultInstance;

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
