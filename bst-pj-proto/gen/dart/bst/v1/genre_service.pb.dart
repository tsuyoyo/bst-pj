//
//  Generated code. Do not modify.
//  source: bst/v1/genre_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'content.pb.dart' as $31;

class GetGenreRequest extends $pb.GeneratedMessage {
  factory GetGenreRequest() => create();
  GetGenreRequest._() : super();
  factory GetGenreRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGenreRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGenreRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGenreRequest clone() => GetGenreRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGenreRequest copyWith(void Function(GetGenreRequest) updates) => super.copyWith((message) => updates(message as GetGenreRequest)) as GetGenreRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGenreRequest create() => GetGenreRequest._();
  GetGenreRequest createEmptyInstance() => create();
  static $pb.PbList<GetGenreRequest> createRepeated() => $pb.PbList<GetGenreRequest>();
  @$core.pragma('dart2js:noInline')
  static GetGenreRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGenreRequest>(create);
  static GetGenreRequest? _defaultInstance;
}

class GetGenreResponse extends $pb.GeneratedMessage {
  factory GetGenreResponse({
    $31.Genre? genre,
  }) {
    final $result = create();
    if (genre != null) {
      $result.genre = genre;
    }
    return $result;
  }
  GetGenreResponse._() : super();
  factory GetGenreResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGenreResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGenreResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Genre>(1, _omitFieldNames ? '' : 'genre', subBuilder: $31.Genre.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGenreResponse clone() => GetGenreResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGenreResponse copyWith(void Function(GetGenreResponse) updates) => super.copyWith((message) => updates(message as GetGenreResponse)) as GetGenreResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGenreResponse create() => GetGenreResponse._();
  GetGenreResponse createEmptyInstance() => create();
  static $pb.PbList<GetGenreResponse> createRepeated() => $pb.PbList<GetGenreResponse>();
  @$core.pragma('dart2js:noInline')
  static GetGenreResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGenreResponse>(create);
  static GetGenreResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Genre get genre => $_getN(0);
  @$pb.TagNumber(1)
  set genre($31.Genre v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGenre() => $_has(0);
  @$pb.TagNumber(1)
  void clearGenre() => clearField(1);
  @$pb.TagNumber(1)
  $31.Genre ensureGenre() => $_ensure(0);
}

class CreateGenreRequest extends $pb.GeneratedMessage {
  factory CreateGenreRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateGenreRequest._() : super();
  factory CreateGenreRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGenreRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGenreRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGenreRequest clone() => CreateGenreRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGenreRequest copyWith(void Function(CreateGenreRequest) updates) => super.copyWith((message) => updates(message as CreateGenreRequest)) as CreateGenreRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGenreRequest create() => CreateGenreRequest._();
  CreateGenreRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGenreRequest> createRepeated() => $pb.PbList<CreateGenreRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGenreRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGenreRequest>(create);
  static CreateGenreRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class CreateGenreResponse extends $pb.GeneratedMessage {
  factory CreateGenreResponse({
    $31.Genre? genre,
  }) {
    final $result = create();
    if (genre != null) {
      $result.genre = genre;
    }
    return $result;
  }
  CreateGenreResponse._() : super();
  factory CreateGenreResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGenreResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGenreResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Genre>(1, _omitFieldNames ? '' : 'genre', subBuilder: $31.Genre.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGenreResponse clone() => CreateGenreResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGenreResponse copyWith(void Function(CreateGenreResponse) updates) => super.copyWith((message) => updates(message as CreateGenreResponse)) as CreateGenreResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGenreResponse create() => CreateGenreResponse._();
  CreateGenreResponse createEmptyInstance() => create();
  static $pb.PbList<CreateGenreResponse> createRepeated() => $pb.PbList<CreateGenreResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateGenreResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGenreResponse>(create);
  static CreateGenreResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Genre get genre => $_getN(0);
  @$pb.TagNumber(1)
  set genre($31.Genre v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGenre() => $_has(0);
  @$pb.TagNumber(1)
  void clearGenre() => clearField(1);
  @$pb.TagNumber(1)
  $31.Genre ensureGenre() => $_ensure(0);
}

class ListGenresRequest extends $pb.GeneratedMessage {
  factory ListGenresRequest() => create();
  ListGenresRequest._() : super();
  factory ListGenresRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGenresRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGenresRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGenresRequest clone() => ListGenresRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGenresRequest copyWith(void Function(ListGenresRequest) updates) => super.copyWith((message) => updates(message as ListGenresRequest)) as ListGenresRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGenresRequest create() => ListGenresRequest._();
  ListGenresRequest createEmptyInstance() => create();
  static $pb.PbList<ListGenresRequest> createRepeated() => $pb.PbList<ListGenresRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGenresRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGenresRequest>(create);
  static ListGenresRequest? _defaultInstance;
}

class ListGenresResponse extends $pb.GeneratedMessage {
  factory ListGenresResponse({
    $core.Iterable<$31.Genre>? genres,
  }) {
    final $result = create();
    if (genres != null) {
      $result.genres.addAll(genres);
    }
    return $result;
  }
  ListGenresResponse._() : super();
  factory ListGenresResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGenresResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGenresResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.Genre>(1, _omitFieldNames ? '' : 'genres', $pb.PbFieldType.PM, subBuilder: $31.Genre.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGenresResponse clone() => ListGenresResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGenresResponse copyWith(void Function(ListGenresResponse) updates) => super.copyWith((message) => updates(message as ListGenresResponse)) as ListGenresResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGenresResponse create() => ListGenresResponse._();
  ListGenresResponse createEmptyInstance() => create();
  static $pb.PbList<ListGenresResponse> createRepeated() => $pb.PbList<ListGenresResponse>();
  @$core.pragma('dart2js:noInline')
  static ListGenresResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGenresResponse>(create);
  static ListGenresResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.Genre> get genres => $_getList(0);
}

class UpdateGenreRequest extends $pb.GeneratedMessage {
  factory UpdateGenreRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  UpdateGenreRequest._() : super();
  factory UpdateGenreRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGenreRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateGenreRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGenreRequest clone() => UpdateGenreRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGenreRequest copyWith(void Function(UpdateGenreRequest) updates) => super.copyWith((message) => updates(message as UpdateGenreRequest)) as UpdateGenreRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateGenreRequest create() => UpdateGenreRequest._();
  UpdateGenreRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateGenreRequest> createRepeated() => $pb.PbList<UpdateGenreRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateGenreRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGenreRequest>(create);
  static UpdateGenreRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class UpdateGenreResponse extends $pb.GeneratedMessage {
  factory UpdateGenreResponse({
    $31.Genre? genre,
  }) {
    final $result = create();
    if (genre != null) {
      $result.genre = genre;
    }
    return $result;
  }
  UpdateGenreResponse._() : super();
  factory UpdateGenreResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGenreResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateGenreResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Genre>(1, _omitFieldNames ? '' : 'genre', subBuilder: $31.Genre.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGenreResponse clone() => UpdateGenreResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGenreResponse copyWith(void Function(UpdateGenreResponse) updates) => super.copyWith((message) => updates(message as UpdateGenreResponse)) as UpdateGenreResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateGenreResponse create() => UpdateGenreResponse._();
  UpdateGenreResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateGenreResponse> createRepeated() => $pb.PbList<UpdateGenreResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateGenreResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGenreResponse>(create);
  static UpdateGenreResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Genre get genre => $_getN(0);
  @$pb.TagNumber(1)
  set genre($31.Genre v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGenre() => $_has(0);
  @$pb.TagNumber(1)
  void clearGenre() => clearField(1);
  @$pb.TagNumber(1)
  $31.Genre ensureGenre() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
