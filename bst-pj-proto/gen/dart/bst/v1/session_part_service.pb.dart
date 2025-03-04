//
//  Generated code. Do not modify.
//  source: bst/v1/session_part_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session.pb.dart' as $37;

/// GET /sessions/{id}/parts
class ListSessionPartsRequest extends $pb.GeneratedMessage {
  factory ListSessionPartsRequest() => create();
  ListSessionPartsRequest._() : super();
  factory ListSessionPartsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionPartsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionPartsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionPartsRequest clone() => ListSessionPartsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionPartsRequest copyWith(void Function(ListSessionPartsRequest) updates) => super.copyWith((message) => updates(message as ListSessionPartsRequest)) as ListSessionPartsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionPartsRequest create() => ListSessionPartsRequest._();
  ListSessionPartsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionPartsRequest> createRepeated() => $pb.PbList<ListSessionPartsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionPartsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionPartsRequest>(create);
  static ListSessionPartsRequest? _defaultInstance;
}

class ListSessionPartsResponse extends $pb.GeneratedMessage {
  factory ListSessionPartsResponse({
    $core.Iterable<$37.SessionPart>? parts,
  }) {
    final $result = create();
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    return $result;
  }
  ListSessionPartsResponse._() : super();
  factory ListSessionPartsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionPartsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionPartsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$37.SessionPart>(1, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: $37.SessionPart.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionPartsResponse clone() => ListSessionPartsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionPartsResponse copyWith(void Function(ListSessionPartsResponse) updates) => super.copyWith((message) => updates(message as ListSessionPartsResponse)) as ListSessionPartsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionPartsResponse create() => ListSessionPartsResponse._();
  ListSessionPartsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionPartsResponse> createRepeated() => $pb.PbList<ListSessionPartsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionPartsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionPartsResponse>(create);
  static ListSessionPartsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$37.SessionPart> get parts => $_getList(0);
}

/// POST /sessions/{id}/parts
class AddSessionPartRequest extends $pb.GeneratedMessage {
  factory AddSessionPartRequest({
    $core.int? partId,
    $core.String? name,
    $core.int? displayOrder,
    $core.int? maxEntry,
    $core.int? transitionCost,
  }) {
    final $result = create();
    if (partId != null) {
      $result.partId = partId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (displayOrder != null) {
      $result.displayOrder = displayOrder;
    }
    if (maxEntry != null) {
      $result.maxEntry = maxEntry;
    }
    if (transitionCost != null) {
      $result.transitionCost = transitionCost;
    }
    return $result;
  }
  AddSessionPartRequest._() : super();
  factory AddSessionPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionPartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'partId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'displayOrder', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'maxEntry', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'transitionCost', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionPartRequest clone() => AddSessionPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionPartRequest copyWith(void Function(AddSessionPartRequest) updates) => super.copyWith((message) => updates(message as AddSessionPartRequest)) as AddSessionPartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionPartRequest create() => AddSessionPartRequest._();
  AddSessionPartRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionPartRequest> createRepeated() => $pb.PbList<AddSessionPartRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionPartRequest>(create);
  static AddSessionPartRequest? _defaultInstance;

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
  $core.int get displayOrder => $_getIZ(2);
  @$pb.TagNumber(3)
  set displayOrder($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxEntry => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxEntry($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxEntry() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxEntry() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get transitionCost => $_getIZ(4);
  @$pb.TagNumber(5)
  set transitionCost($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTransitionCost() => $_has(4);
  @$pb.TagNumber(5)
  void clearTransitionCost() => clearField(5);
}

class AddSessionPartResponse extends $pb.GeneratedMessage {
  factory AddSessionPartResponse({
    $37.SessionPart? part,
  }) {
    final $result = create();
    if (part != null) {
      $result.part = part;
    }
    return $result;
  }
  AddSessionPartResponse._() : super();
  factory AddSessionPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionPartResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.SessionPart>(1, _omitFieldNames ? '' : 'part', subBuilder: $37.SessionPart.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionPartResponse clone() => AddSessionPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionPartResponse copyWith(void Function(AddSessionPartResponse) updates) => super.copyWith((message) => updates(message as AddSessionPartResponse)) as AddSessionPartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionPartResponse create() => AddSessionPartResponse._();
  AddSessionPartResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionPartResponse> createRepeated() => $pb.PbList<AddSessionPartResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionPartResponse>(create);
  static AddSessionPartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.SessionPart get part => $_getN(0);
  @$pb.TagNumber(1)
  set part($37.SessionPart v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  $37.SessionPart ensurePart() => $_ensure(0);
}

/// PUT /sessions/{id}/parts/{sessionPartId}
class UpdateSessionPartRequest extends $pb.GeneratedMessage {
  factory UpdateSessionPartRequest({
    $core.int? partId,
    $core.String? name,
    $core.int? displayOrder,
    $core.int? maxEntry,
  }) {
    final $result = create();
    if (partId != null) {
      $result.partId = partId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (displayOrder != null) {
      $result.displayOrder = displayOrder;
    }
    if (maxEntry != null) {
      $result.maxEntry = maxEntry;
    }
    return $result;
  }
  UpdateSessionPartRequest._() : super();
  factory UpdateSessionPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionPartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'partId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'displayOrder', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'maxEntry', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionPartRequest clone() => UpdateSessionPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionPartRequest copyWith(void Function(UpdateSessionPartRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionPartRequest)) as UpdateSessionPartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionPartRequest create() => UpdateSessionPartRequest._();
  UpdateSessionPartRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionPartRequest> createRepeated() => $pb.PbList<UpdateSessionPartRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionPartRequest>(create);
  static UpdateSessionPartRequest? _defaultInstance;

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
  $core.int get displayOrder => $_getIZ(2);
  @$pb.TagNumber(3)
  set displayOrder($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxEntry => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxEntry($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxEntry() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxEntry() => clearField(4);
}

class UpdateSessionPartResponse extends $pb.GeneratedMessage {
  factory UpdateSessionPartResponse({
    $37.SessionPart? part,
  }) {
    final $result = create();
    if (part != null) {
      $result.part = part;
    }
    return $result;
  }
  UpdateSessionPartResponse._() : super();
  factory UpdateSessionPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionPartResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.SessionPart>(1, _omitFieldNames ? '' : 'part', subBuilder: $37.SessionPart.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionPartResponse clone() => UpdateSessionPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionPartResponse copyWith(void Function(UpdateSessionPartResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionPartResponse)) as UpdateSessionPartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionPartResponse create() => UpdateSessionPartResponse._();
  UpdateSessionPartResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionPartResponse> createRepeated() => $pb.PbList<UpdateSessionPartResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionPartResponse>(create);
  static UpdateSessionPartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.SessionPart get part => $_getN(0);
  @$pb.TagNumber(1)
  set part($37.SessionPart v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  $37.SessionPart ensurePart() => $_ensure(0);
}

/// DELETE /sessions/{id}/parts/{sessionPartId}
class DeleteSessionPartRequest extends $pb.GeneratedMessage {
  factory DeleteSessionPartRequest() => create();
  DeleteSessionPartRequest._() : super();
  factory DeleteSessionPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionPartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionPartRequest clone() => DeleteSessionPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionPartRequest copyWith(void Function(DeleteSessionPartRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionPartRequest)) as DeleteSessionPartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionPartRequest create() => DeleteSessionPartRequest._();
  DeleteSessionPartRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionPartRequest> createRepeated() => $pb.PbList<DeleteSessionPartRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionPartRequest>(create);
  static DeleteSessionPartRequest? _defaultInstance;
}

class DeleteSessionPartResponse extends $pb.GeneratedMessage {
  factory DeleteSessionPartResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionPartResponse._() : super();
  factory DeleteSessionPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionPartResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionPartResponse clone() => DeleteSessionPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionPartResponse copyWith(void Function(DeleteSessionPartResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionPartResponse)) as DeleteSessionPartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionPartResponse create() => DeleteSessionPartResponse._();
  DeleteSessionPartResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionPartResponse> createRepeated() => $pb.PbList<DeleteSessionPartResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionPartResponse>(create);
  static DeleteSessionPartResponse? _defaultInstance;

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
