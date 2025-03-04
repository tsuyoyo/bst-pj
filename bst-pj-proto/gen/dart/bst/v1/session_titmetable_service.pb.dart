//
//  Generated code. Do not modify.
//  source: bst/v1/session_titmetable_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session.pb.dart' as $37;

class GetSessionTimetableRequest extends $pb.GeneratedMessage {
  factory GetSessionTimetableRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  GetSessionTimetableRequest._() : super();
  factory GetSessionTimetableRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionTimetableRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionTimetableRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionTimetableRequest clone() => GetSessionTimetableRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionTimetableRequest copyWith(void Function(GetSessionTimetableRequest) updates) => super.copyWith((message) => updates(message as GetSessionTimetableRequest)) as GetSessionTimetableRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionTimetableRequest create() => GetSessionTimetableRequest._();
  GetSessionTimetableRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionTimetableRequest> createRepeated() => $pb.PbList<GetSessionTimetableRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionTimetableRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionTimetableRequest>(create);
  static GetSessionTimetableRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class GetSessionTimetableResponse extends $pb.GeneratedMessage {
  factory GetSessionTimetableResponse({
    $37.Timetable? timetable,
  }) {
    final $result = create();
    if (timetable != null) {
      $result.timetable = timetable;
    }
    return $result;
  }
  GetSessionTimetableResponse._() : super();
  factory GetSessionTimetableResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionTimetableResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionTimetableResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $37.Timetable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionTimetableResponse clone() => GetSessionTimetableResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionTimetableResponse copyWith(void Function(GetSessionTimetableResponse) updates) => super.copyWith((message) => updates(message as GetSessionTimetableResponse)) as GetSessionTimetableResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionTimetableResponse create() => GetSessionTimetableResponse._();
  GetSessionTimetableResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionTimetableResponse> createRepeated() => $pb.PbList<GetSessionTimetableResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionTimetableResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionTimetableResponse>(create);
  static GetSessionTimetableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($37.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $37.Timetable ensureTimetable() => $_ensure(0);
}

class UpdateSessionTimetableRequest extends $pb.GeneratedMessage {
  factory UpdateSessionTimetableRequest({
    $core.int? sessionId,
    $37.Timetable? timetable,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (timetable != null) {
      $result.timetable = timetable;
    }
    return $result;
  }
  UpdateSessionTimetableRequest._() : super();
  factory UpdateSessionTimetableRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionTimetableRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionTimetableRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$37.Timetable>(2, _omitFieldNames ? '' : 'timetable', subBuilder: $37.Timetable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionTimetableRequest clone() => UpdateSessionTimetableRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionTimetableRequest copyWith(void Function(UpdateSessionTimetableRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionTimetableRequest)) as UpdateSessionTimetableRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionTimetableRequest create() => UpdateSessionTimetableRequest._();
  UpdateSessionTimetableRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionTimetableRequest> createRepeated() => $pb.PbList<UpdateSessionTimetableRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionTimetableRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionTimetableRequest>(create);
  static UpdateSessionTimetableRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $37.Timetable get timetable => $_getN(1);
  @$pb.TagNumber(2)
  set timetable($37.Timetable v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimetable() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimetable() => clearField(2);
  @$pb.TagNumber(2)
  $37.Timetable ensureTimetable() => $_ensure(1);
}

class UpdateSessionTimetableResponse extends $pb.GeneratedMessage {
  factory UpdateSessionTimetableResponse({
    $37.Timetable? timetable,
  }) {
    final $result = create();
    if (timetable != null) {
      $result.timetable = timetable;
    }
    return $result;
  }
  UpdateSessionTimetableResponse._() : super();
  factory UpdateSessionTimetableResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionTimetableResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionTimetableResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $37.Timetable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionTimetableResponse clone() => UpdateSessionTimetableResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionTimetableResponse copyWith(void Function(UpdateSessionTimetableResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionTimetableResponse)) as UpdateSessionTimetableResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionTimetableResponse create() => UpdateSessionTimetableResponse._();
  UpdateSessionTimetableResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionTimetableResponse> createRepeated() => $pb.PbList<UpdateSessionTimetableResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionTimetableResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionTimetableResponse>(create);
  static UpdateSessionTimetableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($37.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $37.Timetable ensureTimetable() => $_ensure(0);
}

class GetOptimizedTimetableRequest extends $pb.GeneratedMessage {
  factory GetOptimizedTimetableRequest({
    $core.int? sessionId,
    $core.Iterable<$core.String>? optimizationRules,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (optimizationRules != null) {
      $result.optimizationRules.addAll(optimizationRules);
    }
    return $result;
  }
  GetOptimizedTimetableRequest._() : super();
  factory GetOptimizedTimetableRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOptimizedTimetableRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOptimizedTimetableRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..pPS(2, _omitFieldNames ? '' : 'optimizationRules')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOptimizedTimetableRequest clone() => GetOptimizedTimetableRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOptimizedTimetableRequest copyWith(void Function(GetOptimizedTimetableRequest) updates) => super.copyWith((message) => updates(message as GetOptimizedTimetableRequest)) as GetOptimizedTimetableRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOptimizedTimetableRequest create() => GetOptimizedTimetableRequest._();
  GetOptimizedTimetableRequest createEmptyInstance() => create();
  static $pb.PbList<GetOptimizedTimetableRequest> createRepeated() => $pb.PbList<GetOptimizedTimetableRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOptimizedTimetableRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOptimizedTimetableRequest>(create);
  static GetOptimizedTimetableRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get optimizationRules => $_getList(1);
}

class GetOptimizedTimetableResponse extends $pb.GeneratedMessage {
  factory GetOptimizedTimetableResponse({
    $37.Timetable? timetable,
  }) {
    final $result = create();
    if (timetable != null) {
      $result.timetable = timetable;
    }
    return $result;
  }
  GetOptimizedTimetableResponse._() : super();
  factory GetOptimizedTimetableResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOptimizedTimetableResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOptimizedTimetableResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $37.Timetable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOptimizedTimetableResponse clone() => GetOptimizedTimetableResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOptimizedTimetableResponse copyWith(void Function(GetOptimizedTimetableResponse) updates) => super.copyWith((message) => updates(message as GetOptimizedTimetableResponse)) as GetOptimizedTimetableResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOptimizedTimetableResponse create() => GetOptimizedTimetableResponse._();
  GetOptimizedTimetableResponse createEmptyInstance() => create();
  static $pb.PbList<GetOptimizedTimetableResponse> createRepeated() => $pb.PbList<GetOptimizedTimetableResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOptimizedTimetableResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOptimizedTimetableResponse>(create);
  static GetOptimizedTimetableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($37.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $37.Timetable ensureTimetable() => $_ensure(0);
}

class GetTimetableProgressRequest extends $pb.GeneratedMessage {
  factory GetTimetableProgressRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  GetTimetableProgressRequest._() : super();
  factory GetTimetableProgressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTimetableProgressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTimetableProgressRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTimetableProgressRequest clone() => GetTimetableProgressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTimetableProgressRequest copyWith(void Function(GetTimetableProgressRequest) updates) => super.copyWith((message) => updates(message as GetTimetableProgressRequest)) as GetTimetableProgressRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTimetableProgressRequest create() => GetTimetableProgressRequest._();
  GetTimetableProgressRequest createEmptyInstance() => create();
  static $pb.PbList<GetTimetableProgressRequest> createRepeated() => $pb.PbList<GetTimetableProgressRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTimetableProgressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTimetableProgressRequest>(create);
  static GetTimetableProgressRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class GetTimetableProgressResponse extends $pb.GeneratedMessage {
  factory GetTimetableProgressResponse({
    $core.Iterable<$37.TimetableEntry>? completedEntries,
    $37.TimetableEntry? currentEntry,
  }) {
    final $result = create();
    if (completedEntries != null) {
      $result.completedEntries.addAll(completedEntries);
    }
    if (currentEntry != null) {
      $result.currentEntry = currentEntry;
    }
    return $result;
  }
  GetTimetableProgressResponse._() : super();
  factory GetTimetableProgressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTimetableProgressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTimetableProgressResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$37.TimetableEntry>(1, _omitFieldNames ? '' : 'completedEntries', $pb.PbFieldType.PM, subBuilder: $37.TimetableEntry.create)
    ..aOM<$37.TimetableEntry>(2, _omitFieldNames ? '' : 'currentEntry', subBuilder: $37.TimetableEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTimetableProgressResponse clone() => GetTimetableProgressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTimetableProgressResponse copyWith(void Function(GetTimetableProgressResponse) updates) => super.copyWith((message) => updates(message as GetTimetableProgressResponse)) as GetTimetableProgressResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTimetableProgressResponse create() => GetTimetableProgressResponse._();
  GetTimetableProgressResponse createEmptyInstance() => create();
  static $pb.PbList<GetTimetableProgressResponse> createRepeated() => $pb.PbList<GetTimetableProgressResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTimetableProgressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTimetableProgressResponse>(create);
  static GetTimetableProgressResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$37.TimetableEntry> get completedEntries => $_getList(0);

  @$pb.TagNumber(2)
  $37.TimetableEntry get currentEntry => $_getN(1);
  @$pb.TagNumber(2)
  set currentEntry($37.TimetableEntry v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentEntry() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentEntry() => clearField(2);
  @$pb.TagNumber(2)
  $37.TimetableEntry ensureCurrentEntry() => $_ensure(1);
}

class UpdateTimetableProgressRequest extends $pb.GeneratedMessage {
  factory UpdateTimetableProgressRequest({
    $core.int? sessionId,
    $core.int? currentEntryId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (currentEntryId != null) {
      $result.currentEntryId = currentEntryId;
    }
    return $result;
  }
  UpdateTimetableProgressRequest._() : super();
  factory UpdateTimetableProgressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTimetableProgressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTimetableProgressRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'currentEntryId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTimetableProgressRequest clone() => UpdateTimetableProgressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTimetableProgressRequest copyWith(void Function(UpdateTimetableProgressRequest) updates) => super.copyWith((message) => updates(message as UpdateTimetableProgressRequest)) as UpdateTimetableProgressRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTimetableProgressRequest create() => UpdateTimetableProgressRequest._();
  UpdateTimetableProgressRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTimetableProgressRequest> createRepeated() => $pb.PbList<UpdateTimetableProgressRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTimetableProgressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTimetableProgressRequest>(create);
  static UpdateTimetableProgressRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get currentEntryId => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentEntryId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentEntryId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentEntryId() => clearField(2);
}

class UpdateTimetableProgressResponse extends $pb.GeneratedMessage {
  factory UpdateTimetableProgressResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  UpdateTimetableProgressResponse._() : super();
  factory UpdateTimetableProgressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTimetableProgressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTimetableProgressResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTimetableProgressResponse clone() => UpdateTimetableProgressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTimetableProgressResponse copyWith(void Function(UpdateTimetableProgressResponse) updates) => super.copyWith((message) => updates(message as UpdateTimetableProgressResponse)) as UpdateTimetableProgressResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTimetableProgressResponse create() => UpdateTimetableProgressResponse._();
  UpdateTimetableProgressResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTimetableProgressResponse> createRepeated() => $pb.PbList<UpdateTimetableProgressResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateTimetableProgressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTimetableProgressResponse>(create);
  static UpdateTimetableProgressResponse? _defaultInstance;

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
