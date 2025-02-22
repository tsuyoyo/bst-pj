//
//  Generated code. Do not modify.
//  source: bst/v1/session_song_entry_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session.pb.dart' as $36;

class AddSongEntryRequest extends $pb.GeneratedMessage {
  factory AddSongEntryRequest({
    $core.int? sessionPartId,
    $core.String? comment,
  }) {
    final $result = create();
    if (sessionPartId != null) {
      $result.sessionPartId = sessionPartId;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  AddSongEntryRequest._() : super();
  factory AddSongEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSongEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSongEntryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionPartId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSongEntryRequest clone() => AddSongEntryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSongEntryRequest copyWith(void Function(AddSongEntryRequest) updates) => super.copyWith((message) => updates(message as AddSongEntryRequest)) as AddSongEntryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSongEntryRequest create() => AddSongEntryRequest._();
  AddSongEntryRequest createEmptyInstance() => create();
  static $pb.PbList<AddSongEntryRequest> createRepeated() => $pb.PbList<AddSongEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSongEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSongEntryRequest>(create);
  static AddSongEntryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionPartId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionPartId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionPartId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => clearField(2);
}

class AddSongEntryResponse extends $pb.GeneratedMessage {
  factory AddSongEntryResponse({
    $36.SessionSongEntry? entry,
  }) {
    final $result = create();
    if (entry != null) {
      $result.entry = entry;
    }
    return $result;
  }
  AddSongEntryResponse._() : super();
  factory AddSongEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSongEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSongEntryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionSongEntry>(1, _omitFieldNames ? '' : 'entry', subBuilder: $36.SessionSongEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSongEntryResponse clone() => AddSongEntryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSongEntryResponse copyWith(void Function(AddSongEntryResponse) updates) => super.copyWith((message) => updates(message as AddSongEntryResponse)) as AddSongEntryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSongEntryResponse create() => AddSongEntryResponse._();
  AddSongEntryResponse createEmptyInstance() => create();
  static $pb.PbList<AddSongEntryResponse> createRepeated() => $pb.PbList<AddSongEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSongEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSongEntryResponse>(create);
  static AddSongEntryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionSongEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry($36.SessionSongEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionSongEntry ensureEntry() => $_ensure(0);
}

class UpdateSongEntryRequest extends $pb.GeneratedMessage {
  factory UpdateSongEntryRequest({
    $core.String? comment,
  }) {
    final $result = create();
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  UpdateSongEntryRequest._() : super();
  factory UpdateSongEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSongEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSongEntryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSongEntryRequest clone() => UpdateSongEntryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSongEntryRequest copyWith(void Function(UpdateSongEntryRequest) updates) => super.copyWith((message) => updates(message as UpdateSongEntryRequest)) as UpdateSongEntryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSongEntryRequest create() => UpdateSongEntryRequest._();
  UpdateSongEntryRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSongEntryRequest> createRepeated() => $pb.PbList<UpdateSongEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSongEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSongEntryRequest>(create);
  static UpdateSongEntryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get comment => $_getSZ(0);
  @$pb.TagNumber(1)
  set comment($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComment() => $_has(0);
  @$pb.TagNumber(1)
  void clearComment() => clearField(1);
}

class UpdateSongEntryResponse extends $pb.GeneratedMessage {
  factory UpdateSongEntryResponse({
    $36.SessionSongEntry? entry,
  }) {
    final $result = create();
    if (entry != null) {
      $result.entry = entry;
    }
    return $result;
  }
  UpdateSongEntryResponse._() : super();
  factory UpdateSongEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSongEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSongEntryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionSongEntry>(1, _omitFieldNames ? '' : 'entry', subBuilder: $36.SessionSongEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSongEntryResponse clone() => UpdateSongEntryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSongEntryResponse copyWith(void Function(UpdateSongEntryResponse) updates) => super.copyWith((message) => updates(message as UpdateSongEntryResponse)) as UpdateSongEntryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSongEntryResponse create() => UpdateSongEntryResponse._();
  UpdateSongEntryResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSongEntryResponse> createRepeated() => $pb.PbList<UpdateSongEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSongEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSongEntryResponse>(create);
  static UpdateSongEntryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionSongEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry($36.SessionSongEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionSongEntry ensureEntry() => $_ensure(0);
}

class DeleteSongEntryRequest extends $pb.GeneratedMessage {
  factory DeleteSongEntryRequest() => create();
  DeleteSongEntryRequest._() : super();
  factory DeleteSongEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSongEntryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongEntryRequest clone() => DeleteSongEntryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongEntryRequest copyWith(void Function(DeleteSongEntryRequest) updates) => super.copyWith((message) => updates(message as DeleteSongEntryRequest)) as DeleteSongEntryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongEntryRequest create() => DeleteSongEntryRequest._();
  DeleteSongEntryRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSongEntryRequest> createRepeated() => $pb.PbList<DeleteSongEntryRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongEntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongEntryRequest>(create);
  static DeleteSongEntryRequest? _defaultInstance;
}

class DeleteSongEntryResponse extends $pb.GeneratedMessage {
  factory DeleteSongEntryResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSongEntryResponse._() : super();
  factory DeleteSongEntryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongEntryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSongEntryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongEntryResponse clone() => DeleteSongEntryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongEntryResponse copyWith(void Function(DeleteSongEntryResponse) updates) => super.copyWith((message) => updates(message as DeleteSongEntryResponse)) as DeleteSongEntryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongEntryResponse create() => DeleteSongEntryResponse._();
  DeleteSongEntryResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSongEntryResponse> createRepeated() => $pb.PbList<DeleteSongEntryResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongEntryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongEntryResponse>(create);
  static DeleteSongEntryResponse? _defaultInstance;

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
