//
//  Generated code. Do not modify.
//  source: bst/v1/dashboard.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $11;

/// Dashboard data model
class DashboardData extends $pb.GeneratedMessage {
  factory DashboardData({
    $core.int? id,
    $core.String? content,
    $core.int? userId,
    $11.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (content != null) {
      $result.content = content;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  DashboardData._() : super();
  factory DashboardData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DashboardData', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..aOM<$11.Timestamp>(4, _omitFieldNames ? '' : 'updatedAt', subBuilder: $11.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardData clone() => DashboardData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardData copyWith(void Function(DashboardData) updates) => super.copyWith((message) => updates(message as DashboardData)) as DashboardData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DashboardData create() => DashboardData._();
  DashboardData createEmptyInstance() => create();
  static $pb.PbList<DashboardData> createRepeated() => $pb.PbList<DashboardData>();
  @$core.pragma('dart2js:noInline')
  static DashboardData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardData>(create);
  static DashboardData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $11.Timestamp get updatedAt => $_getN(3);
  @$pb.TagNumber(4)
  set updatedAt($11.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $11.Timestamp ensureUpdatedAt() => $_ensure(3);
}

/// Search index model
class SearchIndex extends $pb.GeneratedMessage {
  factory SearchIndex({
    $core.int? id,
    $core.String? keywords,
    $core.String? targetType,
    $core.int? targetId,
    $11.Timestamp? indexedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (keywords != null) {
      $result.keywords = keywords;
    }
    if (targetType != null) {
      $result.targetType = targetType;
    }
    if (targetId != null) {
      $result.targetId = targetId;
    }
    if (indexedAt != null) {
      $result.indexedAt = indexedAt;
    }
    return $result;
  }
  SearchIndex._() : super();
  factory SearchIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchIndex', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'keywords')
    ..aOS(3, _omitFieldNames ? '' : 'targetType')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'targetId', $pb.PbFieldType.O3)
    ..aOM<$11.Timestamp>(5, _omitFieldNames ? '' : 'indexedAt', subBuilder: $11.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchIndex clone() => SearchIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchIndex copyWith(void Function(SearchIndex) updates) => super.copyWith((message) => updates(message as SearchIndex)) as SearchIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchIndex create() => SearchIndex._();
  SearchIndex createEmptyInstance() => create();
  static $pb.PbList<SearchIndex> createRepeated() => $pb.PbList<SearchIndex>();
  @$core.pragma('dart2js:noInline')
  static SearchIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchIndex>(create);
  static SearchIndex? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get keywords => $_getSZ(1);
  @$pb.TagNumber(2)
  set keywords($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeywords() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeywords() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get targetType => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get targetId => $_getIZ(3);
  @$pb.TagNumber(4)
  set targetId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTargetId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetId() => clearField(4);

  @$pb.TagNumber(5)
  $11.Timestamp get indexedAt => $_getN(4);
  @$pb.TagNumber(5)
  set indexedAt($11.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasIndexedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearIndexedAt() => clearField(5);
  @$pb.TagNumber(5)
  $11.Timestamp ensureIndexedAt() => $_ensure(4);
}

/// Search result model
class SearchResult extends $pb.GeneratedMessage {
  factory SearchResult({
    $core.String? targetType,
    $core.int? targetId,
    $core.String? title,
    $core.String? description,
    $core.double? relevanceScore,
  }) {
    final $result = create();
    if (targetType != null) {
      $result.targetType = targetType;
    }
    if (targetId != null) {
      $result.targetId = targetId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (relevanceScore != null) {
      $result.relevanceScore = relevanceScore;
    }
    return $result;
  }
  SearchResult._() : super();
  factory SearchResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'targetType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'targetId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'relevanceScore', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchResult clone() => SearchResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchResult copyWith(void Function(SearchResult) updates) => super.copyWith((message) => updates(message as SearchResult)) as SearchResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchResult create() => SearchResult._();
  SearchResult createEmptyInstance() => create();
  static $pb.PbList<SearchResult> createRepeated() => $pb.PbList<SearchResult>();
  @$core.pragma('dart2js:noInline')
  static SearchResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResult>(create);
  static SearchResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetType => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get targetId => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get relevanceScore => $_getN(4);
  @$pb.TagNumber(5)
  set relevanceScore($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRelevanceScore() => $_has(4);
  @$pb.TagNumber(5)
  void clearRelevanceScore() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
