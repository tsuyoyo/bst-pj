//
//  Generated code. Do not modify.
//  source: bst/v1/session_song_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session.pb.dart' as $31;

/// List Session Songs
class ListSessionSongsRequest extends $pb.GeneratedMessage {
  factory ListSessionSongsRequest() => create();
  ListSessionSongsRequest._() : super();
  factory ListSessionSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionSongsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionSongsRequest clone() => ListSessionSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionSongsRequest copyWith(void Function(ListSessionSongsRequest) updates) => super.copyWith((message) => updates(message as ListSessionSongsRequest)) as ListSessionSongsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionSongsRequest create() => ListSessionSongsRequest._();
  ListSessionSongsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionSongsRequest> createRepeated() => $pb.PbList<ListSessionSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionSongsRequest>(create);
  static ListSessionSongsRequest? _defaultInstance;
}

class ListSessionSongsResponse extends $pb.GeneratedMessage {
  factory ListSessionSongsResponse({
    $core.Iterable<$31.SongPerformance>? songs,
  }) {
    final $result = create();
    if (songs != null) {
      $result.songs.addAll(songs);
    }
    return $result;
  }
  ListSessionSongsResponse._() : super();
  factory ListSessionSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionSongsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.SongPerformance>(1, _omitFieldNames ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: $31.SongPerformance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionSongsResponse clone() => ListSessionSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionSongsResponse copyWith(void Function(ListSessionSongsResponse) updates) => super.copyWith((message) => updates(message as ListSessionSongsResponse)) as ListSessionSongsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionSongsResponse create() => ListSessionSongsResponse._();
  ListSessionSongsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionSongsResponse> createRepeated() => $pb.PbList<ListSessionSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionSongsResponse>(create);
  static ListSessionSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.SongPerformance> get songs => $_getList(0);
}

/// Add Session Song
class AddSessionSongRequest extends $pb.GeneratedMessage {
  factory AddSessionSongRequest({
    $core.int? songId,
    $core.Iterable<$core.int>? mandatoryPartIds,
  }) {
    final $result = create();
    if (songId != null) {
      $result.songId = songId;
    }
    if (mandatoryPartIds != null) {
      $result.mandatoryPartIds.addAll(mandatoryPartIds);
    }
    return $result;
  }
  AddSessionSongRequest._() : super();
  factory AddSessionSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'mandatoryPartIds', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionSongRequest clone() => AddSessionSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionSongRequest copyWith(void Function(AddSessionSongRequest) updates) => super.copyWith((message) => updates(message as AddSessionSongRequest)) as AddSessionSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionSongRequest create() => AddSessionSongRequest._();
  AddSessionSongRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionSongRequest> createRepeated() => $pb.PbList<AddSessionSongRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionSongRequest>(create);
  static AddSessionSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get songId => $_getIZ(0);
  @$pb.TagNumber(1)
  set songId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get mandatoryPartIds => $_getList(1);
}

class AddSessionSongResponse extends $pb.GeneratedMessage {
  factory AddSessionSongResponse({
    $31.SongPerformance? song,
  }) {
    final $result = create();
    if (song != null) {
      $result.song = song;
    }
    return $result;
  }
  AddSessionSongResponse._() : super();
  factory AddSessionSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SongPerformance>(1, _omitFieldNames ? '' : 'song', subBuilder: $31.SongPerformance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionSongResponse clone() => AddSessionSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionSongResponse copyWith(void Function(AddSessionSongResponse) updates) => super.copyWith((message) => updates(message as AddSessionSongResponse)) as AddSessionSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionSongResponse create() => AddSessionSongResponse._();
  AddSessionSongResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionSongResponse> createRepeated() => $pb.PbList<AddSessionSongResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionSongResponse>(create);
  static AddSessionSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SongPerformance get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($31.SongPerformance v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $31.SongPerformance ensureSong() => $_ensure(0);
}

/// Get Session Song
class GetSessionSongRequest extends $pb.GeneratedMessage {
  factory GetSessionSongRequest() => create();
  GetSessionSongRequest._() : super();
  factory GetSessionSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionSongRequest clone() => GetSessionSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionSongRequest copyWith(void Function(GetSessionSongRequest) updates) => super.copyWith((message) => updates(message as GetSessionSongRequest)) as GetSessionSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionSongRequest create() => GetSessionSongRequest._();
  GetSessionSongRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionSongRequest> createRepeated() => $pb.PbList<GetSessionSongRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionSongRequest>(create);
  static GetSessionSongRequest? _defaultInstance;
}

class GetSessionSongResponse extends $pb.GeneratedMessage {
  factory GetSessionSongResponse({
    $31.SongPerformance? song,
  }) {
    final $result = create();
    if (song != null) {
      $result.song = song;
    }
    return $result;
  }
  GetSessionSongResponse._() : super();
  factory GetSessionSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SongPerformance>(1, _omitFieldNames ? '' : 'song', subBuilder: $31.SongPerformance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionSongResponse clone() => GetSessionSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionSongResponse copyWith(void Function(GetSessionSongResponse) updates) => super.copyWith((message) => updates(message as GetSessionSongResponse)) as GetSessionSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionSongResponse create() => GetSessionSongResponse._();
  GetSessionSongResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionSongResponse> createRepeated() => $pb.PbList<GetSessionSongResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionSongResponse>(create);
  static GetSessionSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SongPerformance get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($31.SongPerformance v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $31.SongPerformance ensureSong() => $_ensure(0);
}

/// Update Session Song
class UpdateSessionSongRequest extends $pb.GeneratedMessage {
  factory UpdateSessionSongRequest({
    $31.SongPerformance? song,
  }) {
    final $result = create();
    if (song != null) {
      $result.song = song;
    }
    return $result;
  }
  UpdateSessionSongRequest._() : super();
  factory UpdateSessionSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SongPerformance>(1, _omitFieldNames ? '' : 'song', subBuilder: $31.SongPerformance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionSongRequest clone() => UpdateSessionSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionSongRequest copyWith(void Function(UpdateSessionSongRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionSongRequest)) as UpdateSessionSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionSongRequest create() => UpdateSessionSongRequest._();
  UpdateSessionSongRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionSongRequest> createRepeated() => $pb.PbList<UpdateSessionSongRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionSongRequest>(create);
  static UpdateSessionSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SongPerformance get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($31.SongPerformance v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $31.SongPerformance ensureSong() => $_ensure(0);
}

class UpdateSessionSongResponse extends $pb.GeneratedMessage {
  factory UpdateSessionSongResponse({
    $31.SongPerformance? song,
  }) {
    final $result = create();
    if (song != null) {
      $result.song = song;
    }
    return $result;
  }
  UpdateSessionSongResponse._() : super();
  factory UpdateSessionSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SongPerformance>(1, _omitFieldNames ? '' : 'song', subBuilder: $31.SongPerformance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionSongResponse clone() => UpdateSessionSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionSongResponse copyWith(void Function(UpdateSessionSongResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionSongResponse)) as UpdateSessionSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionSongResponse create() => UpdateSessionSongResponse._();
  UpdateSessionSongResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionSongResponse> createRepeated() => $pb.PbList<UpdateSessionSongResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionSongResponse>(create);
  static UpdateSessionSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SongPerformance get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($31.SongPerformance v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $31.SongPerformance ensureSong() => $_ensure(0);
}

/// Delete Session Song
class DeleteSessionSongRequest extends $pb.GeneratedMessage {
  factory DeleteSessionSongRequest() => create();
  DeleteSessionSongRequest._() : super();
  factory DeleteSessionSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionSongRequest clone() => DeleteSessionSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionSongRequest copyWith(void Function(DeleteSessionSongRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionSongRequest)) as DeleteSessionSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongRequest create() => DeleteSessionSongRequest._();
  DeleteSessionSongRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionSongRequest> createRepeated() => $pb.PbList<DeleteSessionSongRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionSongRequest>(create);
  static DeleteSessionSongRequest? _defaultInstance;
}

class DeleteSessionSongResponse extends $pb.GeneratedMessage {
  factory DeleteSessionSongResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionSongResponse._() : super();
  factory DeleteSessionSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionSongResponse clone() => DeleteSessionSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionSongResponse copyWith(void Function(DeleteSessionSongResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionSongResponse)) as DeleteSessionSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongResponse create() => DeleteSessionSongResponse._();
  DeleteSessionSongResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionSongResponse> createRepeated() => $pb.PbList<DeleteSessionSongResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionSongResponse>(create);
  static DeleteSessionSongResponse? _defaultInstance;

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
