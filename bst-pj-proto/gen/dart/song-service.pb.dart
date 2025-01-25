//
//  Generated code. Do not modify.
//  source: song-service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'content.pb.dart' as $7;

class CreateSongRequest extends $pb.GeneratedMessage {
  factory CreateSongRequest({
    $core.String? title,
    $7.Artist? artist,
    $7.Genre? genre,
    $core.String? description,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (artist != null) {
      $result.artist = artist;
    }
    if (genre != null) {
      $result.genre = genre;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  CreateSongRequest._() : super();
  factory CreateSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOM<$7.Artist>(2, _omitFieldNames ? '' : 'artist', subBuilder: $7.Artist.create)
    ..aOM<$7.Genre>(3, _omitFieldNames ? '' : 'genre', subBuilder: $7.Genre.create)
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSongRequest clone() => CreateSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSongRequest copyWith(void Function(CreateSongRequest) updates) => super.copyWith((message) => updates(message as CreateSongRequest)) as CreateSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSongRequest create() => CreateSongRequest._();
  CreateSongRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSongRequest> createRepeated() => $pb.PbList<CreateSongRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSongRequest>(create);
  static CreateSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $7.Artist get artist => $_getN(1);
  @$pb.TagNumber(2)
  set artist($7.Artist v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasArtist() => $_has(1);
  @$pb.TagNumber(2)
  void clearArtist() => clearField(2);
  @$pb.TagNumber(2)
  $7.Artist ensureArtist() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.Genre get genre => $_getN(2);
  @$pb.TagNumber(3)
  set genre($7.Genre v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGenre() => $_has(2);
  @$pb.TagNumber(3)
  void clearGenre() => clearField(3);
  @$pb.TagNumber(3)
  $7.Genre ensureGenre() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
}

class CreateSongResponse extends $pb.GeneratedMessage {
  factory CreateSongResponse({
    $7.Song? song,
  }) {
    final $result = create();
    if (song != null) {
      $result.song = song;
    }
    return $result;
  }
  CreateSongResponse._() : super();
  factory CreateSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$7.Song>(1, _omitFieldNames ? '' : 'song', subBuilder: $7.Song.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSongResponse clone() => CreateSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSongResponse copyWith(void Function(CreateSongResponse) updates) => super.copyWith((message) => updates(message as CreateSongResponse)) as CreateSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSongResponse create() => CreateSongResponse._();
  CreateSongResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSongResponse> createRepeated() => $pb.PbList<CreateSongResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSongResponse>(create);
  static CreateSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($7.Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $7.Song ensureSong() => $_ensure(0);
}

class ListSongsRequest extends $pb.GeneratedMessage {
  factory ListSongsRequest({
    $core.int? pageSize,
    $core.int? pageToken,
    $core.String? query,
    $7.Genre? genre,
    $core.int? artistId,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (query != null) {
      $result.query = query;
    }
    if (genre != null) {
      $result.genre = genre;
    }
    if (artistId != null) {
      $result.artistId = artistId;
    }
    return $result;
  }
  ListSongsRequest._() : super();
  factory ListSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSongsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageToken', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'query')
    ..aOM<$7.Genre>(4, _omitFieldNames ? '' : 'genre', subBuilder: $7.Genre.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'artistId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSongsRequest clone() => ListSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSongsRequest copyWith(void Function(ListSongsRequest) updates) => super.copyWith((message) => updates(message as ListSongsRequest)) as ListSongsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSongsRequest create() => ListSongsRequest._();
  ListSongsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSongsRequest> createRepeated() => $pb.PbList<ListSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSongsRequest>(create);
  static ListSongsRequest? _defaultInstance;

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
  $core.String get query => $_getSZ(2);
  @$pb.TagNumber(3)
  set query($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuery() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuery() => clearField(3);

  @$pb.TagNumber(4)
  $7.Genre get genre => $_getN(3);
  @$pb.TagNumber(4)
  set genre($7.Genre v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGenre() => $_has(3);
  @$pb.TagNumber(4)
  void clearGenre() => clearField(4);
  @$pb.TagNumber(4)
  $7.Genre ensureGenre() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get artistId => $_getIZ(4);
  @$pb.TagNumber(5)
  set artistId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasArtistId() => $_has(4);
  @$pb.TagNumber(5)
  void clearArtistId() => clearField(5);
}

class ListSongsResponse extends $pb.GeneratedMessage {
  factory ListSongsResponse({
    $core.Iterable<$7.Song>? songs,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (songs != null) {
      $result.songs.addAll(songs);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListSongsResponse._() : super();
  factory ListSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSongsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$7.Song>(1, _omitFieldNames ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: $7.Song.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSongsResponse clone() => ListSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSongsResponse copyWith(void Function(ListSongsResponse) updates) => super.copyWith((message) => updates(message as ListSongsResponse)) as ListSongsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSongsResponse create() => ListSongsResponse._();
  ListSongsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSongsResponse> createRepeated() => $pb.PbList<ListSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSongsResponse>(create);
  static ListSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$7.Song> get songs => $_getList(0);

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

class GetSongRequest extends $pb.GeneratedMessage {
  factory GetSongRequest({
    $core.int? songId,
  }) {
    final $result = create();
    if (songId != null) {
      $result.songId = songId;
    }
    return $result;
  }
  GetSongRequest._() : super();
  factory GetSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSongRequest clone() => GetSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSongRequest copyWith(void Function(GetSongRequest) updates) => super.copyWith((message) => updates(message as GetSongRequest)) as GetSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSongRequest create() => GetSongRequest._();
  GetSongRequest createEmptyInstance() => create();
  static $pb.PbList<GetSongRequest> createRepeated() => $pb.PbList<GetSongRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSongRequest>(create);
  static GetSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get songId => $_getIZ(0);
  @$pb.TagNumber(1)
  set songId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);
}

class GetSongResponse extends $pb.GeneratedMessage {
  factory GetSongResponse({
    $7.Song? song,
  }) {
    final $result = create();
    if (song != null) {
      $result.song = song;
    }
    return $result;
  }
  GetSongResponse._() : super();
  factory GetSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$7.Song>(1, _omitFieldNames ? '' : 'song', subBuilder: $7.Song.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSongResponse clone() => GetSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSongResponse copyWith(void Function(GetSongResponse) updates) => super.copyWith((message) => updates(message as GetSongResponse)) as GetSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSongResponse create() => GetSongResponse._();
  GetSongResponse createEmptyInstance() => create();
  static $pb.PbList<GetSongResponse> createRepeated() => $pb.PbList<GetSongResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSongResponse>(create);
  static GetSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($7.Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $7.Song ensureSong() => $_ensure(0);
}

class UpdateSongRequest extends $pb.GeneratedMessage {
  factory UpdateSongRequest({
    $core.int? songId,
    $core.String? title,
    $7.Artist? artist,
    $7.Genre? genre,
    $core.String? description,
  }) {
    final $result = create();
    if (songId != null) {
      $result.songId = songId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (artist != null) {
      $result.artist = artist;
    }
    if (genre != null) {
      $result.genre = genre;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  UpdateSongRequest._() : super();
  factory UpdateSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOM<$7.Artist>(3, _omitFieldNames ? '' : 'artist', subBuilder: $7.Artist.create)
    ..aOM<$7.Genre>(4, _omitFieldNames ? '' : 'genre', subBuilder: $7.Genre.create)
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSongRequest clone() => UpdateSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSongRequest copyWith(void Function(UpdateSongRequest) updates) => super.copyWith((message) => updates(message as UpdateSongRequest)) as UpdateSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSongRequest create() => UpdateSongRequest._();
  UpdateSongRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSongRequest> createRepeated() => $pb.PbList<UpdateSongRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSongRequest>(create);
  static UpdateSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get songId => $_getIZ(0);
  @$pb.TagNumber(1)
  set songId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $7.Artist get artist => $_getN(2);
  @$pb.TagNumber(3)
  set artist($7.Artist v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => clearField(3);
  @$pb.TagNumber(3)
  $7.Artist ensureArtist() => $_ensure(2);

  @$pb.TagNumber(4)
  $7.Genre get genre => $_getN(3);
  @$pb.TagNumber(4)
  set genre($7.Genre v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGenre() => $_has(3);
  @$pb.TagNumber(4)
  void clearGenre() => clearField(4);
  @$pb.TagNumber(4)
  $7.Genre ensureGenre() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

class UpdateSongResponse extends $pb.GeneratedMessage {
  factory UpdateSongResponse({
    $7.Song? song,
  }) {
    final $result = create();
    if (song != null) {
      $result.song = song;
    }
    return $result;
  }
  UpdateSongResponse._() : super();
  factory UpdateSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$7.Song>(1, _omitFieldNames ? '' : 'song', subBuilder: $7.Song.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSongResponse clone() => UpdateSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSongResponse copyWith(void Function(UpdateSongResponse) updates) => super.copyWith((message) => updates(message as UpdateSongResponse)) as UpdateSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSongResponse create() => UpdateSongResponse._();
  UpdateSongResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSongResponse> createRepeated() => $pb.PbList<UpdateSongResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSongResponse>(create);
  static UpdateSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($7.Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $7.Song ensureSong() => $_ensure(0);
}

class DeleteSongRequest extends $pb.GeneratedMessage {
  factory DeleteSongRequest({
    $core.int? songId,
  }) {
    final $result = create();
    if (songId != null) {
      $result.songId = songId;
    }
    return $result;
  }
  DeleteSongRequest._() : super();
  factory DeleteSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSongRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongRequest clone() => DeleteSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongRequest copyWith(void Function(DeleteSongRequest) updates) => super.copyWith((message) => updates(message as DeleteSongRequest)) as DeleteSongRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongRequest create() => DeleteSongRequest._();
  DeleteSongRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSongRequest> createRepeated() => $pb.PbList<DeleteSongRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongRequest>(create);
  static DeleteSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get songId => $_getIZ(0);
  @$pb.TagNumber(1)
  set songId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);
}

class DeleteSongResponse extends $pb.GeneratedMessage {
  factory DeleteSongResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSongResponse._() : super();
  factory DeleteSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSongResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongResponse clone() => DeleteSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongResponse copyWith(void Function(DeleteSongResponse) updates) => super.copyWith((message) => updates(message as DeleteSongResponse)) as DeleteSongResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongResponse create() => DeleteSongResponse._();
  DeleteSongResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSongResponse> createRepeated() => $pb.PbList<DeleteSongResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongResponse>(create);
  static DeleteSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class AddSongResourceRequest extends $pb.GeneratedMessage {
  factory AddSongResourceRequest({
    $core.int? songId,
    $7.Resource? resource,
  }) {
    final $result = create();
    if (songId != null) {
      $result.songId = songId;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  AddSongResourceRequest._() : super();
  factory AddSongResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSongResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSongResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..aOM<$7.Resource>(2, _omitFieldNames ? '' : 'resource', subBuilder: $7.Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSongResourceRequest clone() => AddSongResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSongResourceRequest copyWith(void Function(AddSongResourceRequest) updates) => super.copyWith((message) => updates(message as AddSongResourceRequest)) as AddSongResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSongResourceRequest create() => AddSongResourceRequest._();
  AddSongResourceRequest createEmptyInstance() => create();
  static $pb.PbList<AddSongResourceRequest> createRepeated() => $pb.PbList<AddSongResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSongResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSongResourceRequest>(create);
  static AddSongResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get songId => $_getIZ(0);
  @$pb.TagNumber(1)
  set songId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $7.Resource get resource => $_getN(1);
  @$pb.TagNumber(2)
  set resource($7.Resource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResource() => $_has(1);
  @$pb.TagNumber(2)
  void clearResource() => clearField(2);
  @$pb.TagNumber(2)
  $7.Resource ensureResource() => $_ensure(1);
}

class AddSongResourceResponse extends $pb.GeneratedMessage {
  factory AddSongResourceResponse({
    $7.Resource? resource,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  AddSongResourceResponse._() : super();
  factory AddSongResourceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSongResourceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSongResourceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$7.Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: $7.Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSongResourceResponse clone() => AddSongResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSongResourceResponse copyWith(void Function(AddSongResourceResponse) updates) => super.copyWith((message) => updates(message as AddSongResourceResponse)) as AddSongResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSongResourceResponse create() => AddSongResourceResponse._();
  AddSongResourceResponse createEmptyInstance() => create();
  static $pb.PbList<AddSongResourceResponse> createRepeated() => $pb.PbList<AddSongResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSongResourceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSongResourceResponse>(create);
  static AddSongResourceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource($7.Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  $7.Resource ensureResource() => $_ensure(0);
}

class ListSongResourcesRequest extends $pb.GeneratedMessage {
  factory ListSongResourcesRequest({
    $core.int? songId,
    $core.int? pageSize,
    $core.int? pageToken,
  }) {
    final $result = create();
    if (songId != null) {
      $result.songId = songId;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    return $result;
  }
  ListSongResourcesRequest._() : super();
  factory ListSongResourcesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSongResourcesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSongResourcesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pageToken', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSongResourcesRequest clone() => ListSongResourcesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSongResourcesRequest copyWith(void Function(ListSongResourcesRequest) updates) => super.copyWith((message) => updates(message as ListSongResourcesRequest)) as ListSongResourcesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSongResourcesRequest create() => ListSongResourcesRequest._();
  ListSongResourcesRequest createEmptyInstance() => create();
  static $pb.PbList<ListSongResourcesRequest> createRepeated() => $pb.PbList<ListSongResourcesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSongResourcesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSongResourcesRequest>(create);
  static ListSongResourcesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get songId => $_getIZ(0);
  @$pb.TagNumber(1)
  set songId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

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

class ListSongResourcesResponse extends $pb.GeneratedMessage {
  factory ListSongResourcesResponse({
    $core.Iterable<$7.Resource>? resources,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListSongResourcesResponse._() : super();
  factory ListSongResourcesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSongResourcesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSongResourcesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$7.Resource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $7.Resource.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSongResourcesResponse clone() => ListSongResourcesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSongResourcesResponse copyWith(void Function(ListSongResourcesResponse) updates) => super.copyWith((message) => updates(message as ListSongResourcesResponse)) as ListSongResourcesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSongResourcesResponse create() => ListSongResourcesResponse._();
  ListSongResourcesResponse createEmptyInstance() => create();
  static $pb.PbList<ListSongResourcesResponse> createRepeated() => $pb.PbList<ListSongResourcesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSongResourcesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSongResourcesResponse>(create);
  static ListSongResourcesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$7.Resource> get resources => $_getList(0);

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

class DeleteSongResourceRequest extends $pb.GeneratedMessage {
  factory DeleteSongResourceRequest({
    $core.int? songId,
    $core.int? resourceId,
  }) {
    final $result = create();
    if (songId != null) {
      $result.songId = songId;
    }
    if (resourceId != null) {
      $result.resourceId = resourceId;
    }
    return $result;
  }
  DeleteSongResourceRequest._() : super();
  factory DeleteSongResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSongResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'resourceId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongResourceRequest clone() => DeleteSongResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongResourceRequest copyWith(void Function(DeleteSongResourceRequest) updates) => super.copyWith((message) => updates(message as DeleteSongResourceRequest)) as DeleteSongResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongResourceRequest create() => DeleteSongResourceRequest._();
  DeleteSongResourceRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSongResourceRequest> createRepeated() => $pb.PbList<DeleteSongResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongResourceRequest>(create);
  static DeleteSongResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get songId => $_getIZ(0);
  @$pb.TagNumber(1)
  set songId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get resourceId => $_getIZ(1);
  @$pb.TagNumber(2)
  set resourceId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceId() => clearField(2);
}

class DeleteSongResourceResponse extends $pb.GeneratedMessage {
  factory DeleteSongResourceResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSongResourceResponse._() : super();
  factory DeleteSongResourceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongResourceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSongResourceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongResourceResponse clone() => DeleteSongResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongResourceResponse copyWith(void Function(DeleteSongResourceResponse) updates) => super.copyWith((message) => updates(message as DeleteSongResourceResponse)) as DeleteSongResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongResourceResponse create() => DeleteSongResourceResponse._();
  DeleteSongResourceResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSongResourceResponse> createRepeated() => $pb.PbList<DeleteSongResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongResourceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongResourceResponse>(create);
  static DeleteSongResourceResponse? _defaultInstance;

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
