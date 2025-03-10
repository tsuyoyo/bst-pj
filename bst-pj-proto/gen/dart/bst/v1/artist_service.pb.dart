//
//  Generated code. Do not modify.
//  source: bst/v1/artist_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'content.pb.dart' as $31;

class CreateArtistRequest extends $pb.GeneratedMessage {
  factory CreateArtistRequest({
    $core.String? name,
    $core.Iterable<$core.int>? genreIds,
    $core.String? website,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (genreIds != null) {
      $result.genreIds.addAll(genreIds);
    }
    if (website != null) {
      $result.website = website;
    }
    return $result;
  }
  CreateArtistRequest._() : super();
  factory CreateArtistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateArtistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateArtistRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'genreIds', $pb.PbFieldType.K3)
    ..aOS(3, _omitFieldNames ? '' : 'website')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateArtistRequest clone() => CreateArtistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateArtistRequest copyWith(void Function(CreateArtistRequest) updates) => super.copyWith((message) => updates(message as CreateArtistRequest)) as CreateArtistRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateArtistRequest create() => CreateArtistRequest._();
  CreateArtistRequest createEmptyInstance() => create();
  static $pb.PbList<CreateArtistRequest> createRepeated() => $pb.PbList<CreateArtistRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateArtistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateArtistRequest>(create);
  static CreateArtistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get genreIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get website => $_getSZ(2);
  @$pb.TagNumber(3)
  set website($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWebsite() => $_has(2);
  @$pb.TagNumber(3)
  void clearWebsite() => clearField(3);
}

class CreateArtistResponse extends $pb.GeneratedMessage {
  factory CreateArtistResponse({
    $31.Artist? artist,
  }) {
    final $result = create();
    if (artist != null) {
      $result.artist = artist;
    }
    return $result;
  }
  CreateArtistResponse._() : super();
  factory CreateArtistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateArtistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateArtistResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Artist>(1, _omitFieldNames ? '' : 'artist', subBuilder: $31.Artist.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateArtistResponse clone() => CreateArtistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateArtistResponse copyWith(void Function(CreateArtistResponse) updates) => super.copyWith((message) => updates(message as CreateArtistResponse)) as CreateArtistResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateArtistResponse create() => CreateArtistResponse._();
  CreateArtistResponse createEmptyInstance() => create();
  static $pb.PbList<CreateArtistResponse> createRepeated() => $pb.PbList<CreateArtistResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateArtistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateArtistResponse>(create);
  static CreateArtistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Artist get artist => $_getN(0);
  @$pb.TagNumber(1)
  set artist($31.Artist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtist() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtist() => clearField(1);
  @$pb.TagNumber(1)
  $31.Artist ensureArtist() => $_ensure(0);
}

class ListArtistsRequest extends $pb.GeneratedMessage {
  factory ListArtistsRequest({
    $core.int? pageSize,
    $core.int? pageToken,
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
  ListArtistsRequest._() : super();
  factory ListArtistsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListArtistsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListArtistsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageToken', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListArtistsRequest clone() => ListArtistsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListArtistsRequest copyWith(void Function(ListArtistsRequest) updates) => super.copyWith((message) => updates(message as ListArtistsRequest)) as ListArtistsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListArtistsRequest create() => ListArtistsRequest._();
  ListArtistsRequest createEmptyInstance() => create();
  static $pb.PbList<ListArtistsRequest> createRepeated() => $pb.PbList<ListArtistsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListArtistsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListArtistsRequest>(create);
  static ListArtistsRequest? _defaultInstance;

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
}

class ListArtistsResponse extends $pb.GeneratedMessage {
  factory ListArtistsResponse({
    $core.Iterable<$31.Artist>? artists,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (artists != null) {
      $result.artists.addAll(artists);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListArtistsResponse._() : super();
  factory ListArtistsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListArtistsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListArtistsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.Artist>(1, _omitFieldNames ? '' : 'artists', $pb.PbFieldType.PM, subBuilder: $31.Artist.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListArtistsResponse clone() => ListArtistsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListArtistsResponse copyWith(void Function(ListArtistsResponse) updates) => super.copyWith((message) => updates(message as ListArtistsResponse)) as ListArtistsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListArtistsResponse create() => ListArtistsResponse._();
  ListArtistsResponse createEmptyInstance() => create();
  static $pb.PbList<ListArtistsResponse> createRepeated() => $pb.PbList<ListArtistsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListArtistsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListArtistsResponse>(create);
  static ListArtistsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.Artist> get artists => $_getList(0);

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

class GetArtistRequest extends $pb.GeneratedMessage {
  factory GetArtistRequest({
    $core.int? artistId,
  }) {
    final $result = create();
    if (artistId != null) {
      $result.artistId = artistId;
    }
    return $result;
  }
  GetArtistRequest._() : super();
  factory GetArtistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArtistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArtistRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'artistId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArtistRequest clone() => GetArtistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArtistRequest copyWith(void Function(GetArtistRequest) updates) => super.copyWith((message) => updates(message as GetArtistRequest)) as GetArtistRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArtistRequest create() => GetArtistRequest._();
  GetArtistRequest createEmptyInstance() => create();
  static $pb.PbList<GetArtistRequest> createRepeated() => $pb.PbList<GetArtistRequest>();
  @$core.pragma('dart2js:noInline')
  static GetArtistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArtistRequest>(create);
  static GetArtistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get artistId => $_getIZ(0);
  @$pb.TagNumber(1)
  set artistId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtistId() => clearField(1);
}

class GetArtistResponse extends $pb.GeneratedMessage {
  factory GetArtistResponse({
    $31.Artist? artist,
  }) {
    final $result = create();
    if (artist != null) {
      $result.artist = artist;
    }
    return $result;
  }
  GetArtistResponse._() : super();
  factory GetArtistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArtistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArtistResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Artist>(1, _omitFieldNames ? '' : 'artist', subBuilder: $31.Artist.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArtistResponse clone() => GetArtistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArtistResponse copyWith(void Function(GetArtistResponse) updates) => super.copyWith((message) => updates(message as GetArtistResponse)) as GetArtistResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArtistResponse create() => GetArtistResponse._();
  GetArtistResponse createEmptyInstance() => create();
  static $pb.PbList<GetArtistResponse> createRepeated() => $pb.PbList<GetArtistResponse>();
  @$core.pragma('dart2js:noInline')
  static GetArtistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArtistResponse>(create);
  static GetArtistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Artist get artist => $_getN(0);
  @$pb.TagNumber(1)
  set artist($31.Artist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtist() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtist() => clearField(1);
  @$pb.TagNumber(1)
  $31.Artist ensureArtist() => $_ensure(0);
}

class GetArtistsRequest extends $pb.GeneratedMessage {
  factory GetArtistsRequest({
    $core.Iterable<$core.int>? artistIds,
  }) {
    final $result = create();
    if (artistIds != null) {
      $result.artistIds.addAll(artistIds);
    }
    return $result;
  }
  GetArtistsRequest._() : super();
  factory GetArtistsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArtistsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArtistsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'artistIds', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArtistsRequest clone() => GetArtistsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArtistsRequest copyWith(void Function(GetArtistsRequest) updates) => super.copyWith((message) => updates(message as GetArtistsRequest)) as GetArtistsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArtistsRequest create() => GetArtistsRequest._();
  GetArtistsRequest createEmptyInstance() => create();
  static $pb.PbList<GetArtistsRequest> createRepeated() => $pb.PbList<GetArtistsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetArtistsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArtistsRequest>(create);
  static GetArtistsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get artistIds => $_getList(0);
}

class GetArtistsResponse extends $pb.GeneratedMessage {
  factory GetArtistsResponse({
    $core.Iterable<$31.Artist>? artists,
  }) {
    final $result = create();
    if (artists != null) {
      $result.artists.addAll(artists);
    }
    return $result;
  }
  GetArtistsResponse._() : super();
  factory GetArtistsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArtistsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArtistsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.Artist>(1, _omitFieldNames ? '' : 'artists', $pb.PbFieldType.PM, subBuilder: $31.Artist.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArtistsResponse clone() => GetArtistsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArtistsResponse copyWith(void Function(GetArtistsResponse) updates) => super.copyWith((message) => updates(message as GetArtistsResponse)) as GetArtistsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArtistsResponse create() => GetArtistsResponse._();
  GetArtistsResponse createEmptyInstance() => create();
  static $pb.PbList<GetArtistsResponse> createRepeated() => $pb.PbList<GetArtistsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetArtistsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArtistsResponse>(create);
  static GetArtistsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.Artist> get artists => $_getList(0);
}

class UpdateArtistRequest extends $pb.GeneratedMessage {
  factory UpdateArtistRequest({
    $core.int? artistId,
    $core.String? name,
    $core.Iterable<$core.int>? genreIds,
    $core.String? website,
  }) {
    final $result = create();
    if (artistId != null) {
      $result.artistId = artistId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (genreIds != null) {
      $result.genreIds.addAll(genreIds);
    }
    if (website != null) {
      $result.website = website;
    }
    return $result;
  }
  UpdateArtistRequest._() : super();
  factory UpdateArtistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateArtistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateArtistRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'artistId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'genreIds', $pb.PbFieldType.K3)
    ..aOS(4, _omitFieldNames ? '' : 'website')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateArtistRequest clone() => UpdateArtistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateArtistRequest copyWith(void Function(UpdateArtistRequest) updates) => super.copyWith((message) => updates(message as UpdateArtistRequest)) as UpdateArtistRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateArtistRequest create() => UpdateArtistRequest._();
  UpdateArtistRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateArtistRequest> createRepeated() => $pb.PbList<UpdateArtistRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateArtistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateArtistRequest>(create);
  static UpdateArtistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get artistId => $_getIZ(0);
  @$pb.TagNumber(1)
  set artistId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtistId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get genreIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get website => $_getSZ(3);
  @$pb.TagNumber(4)
  set website($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWebsite() => $_has(3);
  @$pb.TagNumber(4)
  void clearWebsite() => clearField(4);
}

class UpdateArtistResponse extends $pb.GeneratedMessage {
  factory UpdateArtistResponse({
    $31.Artist? artist,
  }) {
    final $result = create();
    if (artist != null) {
      $result.artist = artist;
    }
    return $result;
  }
  UpdateArtistResponse._() : super();
  factory UpdateArtistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateArtistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateArtistResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Artist>(1, _omitFieldNames ? '' : 'artist', subBuilder: $31.Artist.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateArtistResponse clone() => UpdateArtistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateArtistResponse copyWith(void Function(UpdateArtistResponse) updates) => super.copyWith((message) => updates(message as UpdateArtistResponse)) as UpdateArtistResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateArtistResponse create() => UpdateArtistResponse._();
  UpdateArtistResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateArtistResponse> createRepeated() => $pb.PbList<UpdateArtistResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateArtistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateArtistResponse>(create);
  static UpdateArtistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Artist get artist => $_getN(0);
  @$pb.TagNumber(1)
  set artist($31.Artist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtist() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtist() => clearField(1);
  @$pb.TagNumber(1)
  $31.Artist ensureArtist() => $_ensure(0);
}

class DeleteArtistRequest extends $pb.GeneratedMessage {
  factory DeleteArtistRequest({
    $core.int? artistId,
  }) {
    final $result = create();
    if (artistId != null) {
      $result.artistId = artistId;
    }
    return $result;
  }
  DeleteArtistRequest._() : super();
  factory DeleteArtistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteArtistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteArtistRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'artistId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteArtistRequest clone() => DeleteArtistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteArtistRequest copyWith(void Function(DeleteArtistRequest) updates) => super.copyWith((message) => updates(message as DeleteArtistRequest)) as DeleteArtistRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteArtistRequest create() => DeleteArtistRequest._();
  DeleteArtistRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteArtistRequest> createRepeated() => $pb.PbList<DeleteArtistRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteArtistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteArtistRequest>(create);
  static DeleteArtistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get artistId => $_getIZ(0);
  @$pb.TagNumber(1)
  set artistId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtistId() => clearField(1);
}

class DeleteArtistResponse extends $pb.GeneratedMessage {
  factory DeleteArtistResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteArtistResponse._() : super();
  factory DeleteArtistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteArtistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteArtistResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteArtistResponse clone() => DeleteArtistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteArtistResponse copyWith(void Function(DeleteArtistResponse) updates) => super.copyWith((message) => updates(message as DeleteArtistResponse)) as DeleteArtistResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteArtistResponse create() => DeleteArtistResponse._();
  DeleteArtistResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteArtistResponse> createRepeated() => $pb.PbList<DeleteArtistResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteArtistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteArtistResponse>(create);
  static DeleteArtistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class ListArtistSongsRequest extends $pb.GeneratedMessage {
  factory ListArtistSongsRequest({
    $core.int? artistId,
    $core.int? pageSize,
    $core.int? pageToken,
  }) {
    final $result = create();
    if (artistId != null) {
      $result.artistId = artistId;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    return $result;
  }
  ListArtistSongsRequest._() : super();
  factory ListArtistSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListArtistSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListArtistSongsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'artistId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pageToken', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListArtistSongsRequest clone() => ListArtistSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListArtistSongsRequest copyWith(void Function(ListArtistSongsRequest) updates) => super.copyWith((message) => updates(message as ListArtistSongsRequest)) as ListArtistSongsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListArtistSongsRequest create() => ListArtistSongsRequest._();
  ListArtistSongsRequest createEmptyInstance() => create();
  static $pb.PbList<ListArtistSongsRequest> createRepeated() => $pb.PbList<ListArtistSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListArtistSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListArtistSongsRequest>(create);
  static ListArtistSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get artistId => $_getIZ(0);
  @$pb.TagNumber(1)
  set artistId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArtistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtistId() => clearField(1);

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

class ListArtistSongsResponse extends $pb.GeneratedMessage {
  factory ListArtistSongsResponse({
    $core.Iterable<$31.Song>? songs,
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
  ListArtistSongsResponse._() : super();
  factory ListArtistSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListArtistSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListArtistSongsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.Song>(1, _omitFieldNames ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: $31.Song.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListArtistSongsResponse clone() => ListArtistSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListArtistSongsResponse copyWith(void Function(ListArtistSongsResponse) updates) => super.copyWith((message) => updates(message as ListArtistSongsResponse)) as ListArtistSongsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListArtistSongsResponse create() => ListArtistSongsResponse._();
  ListArtistSongsResponse createEmptyInstance() => create();
  static $pb.PbList<ListArtistSongsResponse> createRepeated() => $pb.PbList<ListArtistSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListArtistSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListArtistSongsResponse>(create);
  static ListArtistSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.Song> get songs => $_getList(0);

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
