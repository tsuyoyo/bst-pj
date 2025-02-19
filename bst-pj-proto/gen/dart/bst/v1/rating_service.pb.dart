//
//  Generated code. Do not modify.
//  source: bst/v1/rating_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'rating.pb.dart' as $10;
import 'rating.pbenum.dart' as $10;

class CreateRatingRequest extends $pb.GeneratedMessage {
  factory CreateRatingRequest({
    $core.int? userId,
    $10.RatingTargetType? targetType,
    $core.int? targetId,
    $core.int? rating,
    $core.String? comment,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (targetType != null) {
      $result.targetType = targetType;
    }
    if (targetId != null) {
      $result.targetId = targetId;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  CreateRatingRequest._() : super();
  factory CreateRatingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRatingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRatingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..e<$10.RatingTargetType>(2, _omitFieldNames ? '' : 'targetType', $pb.PbFieldType.OE, protoName: 'targetType', defaultOrMaker: $10.RatingTargetType.RATING_TARGET_TYPE_UNSPECIFIED, valueOf: $10.RatingTargetType.valueOf, enumValues: $10.RatingTargetType.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'targetId', $pb.PbFieldType.O3, protoName: 'targetId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRatingRequest clone() => CreateRatingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRatingRequest copyWith(void Function(CreateRatingRequest) updates) => super.copyWith((message) => updates(message as CreateRatingRequest)) as CreateRatingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRatingRequest create() => CreateRatingRequest._();
  CreateRatingRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRatingRequest> createRepeated() => $pb.PbList<CreateRatingRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRatingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRatingRequest>(create);
  static CreateRatingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $10.RatingTargetType get targetType => $_getN(1);
  @$pb.TagNumber(2)
  set targetType($10.RatingTargetType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get targetId => $_getIZ(2);
  @$pb.TagNumber(3)
  set targetId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get rating => $_getIZ(3);
  @$pb.TagNumber(4)
  set rating($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRating() => $_has(3);
  @$pb.TagNumber(4)
  void clearRating() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get comment => $_getSZ(4);
  @$pb.TagNumber(5)
  set comment($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearComment() => clearField(5);
}

class ListRatingsRequest extends $pb.GeneratedMessage {
  factory ListRatingsRequest({
    $10.RatingTargetType? targetType,
    $core.int? targetId,
    $core.int? userId,
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (targetType != null) {
      $result.targetType = targetType;
    }
    if (targetId != null) {
      $result.targetId = targetId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  ListRatingsRequest._() : super();
  factory ListRatingsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRatingsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRatingsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..e<$10.RatingTargetType>(1, _omitFieldNames ? '' : 'targetType', $pb.PbFieldType.OE, protoName: 'targetType', defaultOrMaker: $10.RatingTargetType.RATING_TARGET_TYPE_UNSPECIFIED, valueOf: $10.RatingTargetType.valueOf, enumValues: $10.RatingTargetType.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'targetId', $pb.PbFieldType.O3, protoName: 'targetId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRatingsRequest clone() => ListRatingsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRatingsRequest copyWith(void Function(ListRatingsRequest) updates) => super.copyWith((message) => updates(message as ListRatingsRequest)) as ListRatingsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRatingsRequest create() => ListRatingsRequest._();
  ListRatingsRequest createEmptyInstance() => create();
  static $pb.PbList<ListRatingsRequest> createRepeated() => $pb.PbList<ListRatingsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRatingsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRatingsRequest>(create);
  static ListRatingsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $10.RatingTargetType get targetType => $_getN(0);
  @$pb.TagNumber(1)
  set targetType($10.RatingTargetType v) { setField(1, v); }
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
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pageSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageSize($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPageSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageSize() => clearField(5);
}

class ListRatingsResponse extends $pb.GeneratedMessage {
  factory ListRatingsResponse({
    $core.Iterable<$10.Rating>? ratings,
    $core.int? totalCount,
    $core.int? currentPage,
    $core.int? totalPages,
  }) {
    final $result = create();
    if (ratings != null) {
      $result.ratings.addAll(ratings);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (currentPage != null) {
      $result.currentPage = currentPage;
    }
    if (totalPages != null) {
      $result.totalPages = totalPages;
    }
    return $result;
  }
  ListRatingsResponse._() : super();
  factory ListRatingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRatingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRatingsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$10.Rating>(1, _omitFieldNames ? '' : 'ratings', $pb.PbFieldType.PM, subBuilder: $10.Rating.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3, protoName: 'totalCount')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'currentPage', $pb.PbFieldType.O3, protoName: 'currentPage')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'totalPages', $pb.PbFieldType.O3, protoName: 'totalPages')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRatingsResponse clone() => ListRatingsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRatingsResponse copyWith(void Function(ListRatingsResponse) updates) => super.copyWith((message) => updates(message as ListRatingsResponse)) as ListRatingsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRatingsResponse create() => ListRatingsResponse._();
  ListRatingsResponse createEmptyInstance() => create();
  static $pb.PbList<ListRatingsResponse> createRepeated() => $pb.PbList<ListRatingsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRatingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRatingsResponse>(create);
  static ListRatingsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$10.Rating> get ratings => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get totalCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentPage($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentPage() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalPages => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalPages($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalPages() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalPages() => clearField(4);
}

class UpdateRatingRequest extends $pb.GeneratedMessage {
  factory UpdateRatingRequest({
    $core.int? id,
    $core.int? rating,
    $core.String? comment,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  UpdateRatingRequest._() : super();
  factory UpdateRatingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRatingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRatingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRatingRequest clone() => UpdateRatingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRatingRequest copyWith(void Function(UpdateRatingRequest) updates) => super.copyWith((message) => updates(message as UpdateRatingRequest)) as UpdateRatingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRatingRequest create() => UpdateRatingRequest._();
  UpdateRatingRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRatingRequest> createRepeated() => $pb.PbList<UpdateRatingRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRatingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRatingRequest>(create);
  static UpdateRatingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get rating => $_getIZ(1);
  @$pb.TagNumber(2)
  set rating($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRating() => $_has(1);
  @$pb.TagNumber(2)
  void clearRating() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get comment => $_getSZ(2);
  @$pb.TagNumber(3)
  set comment($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(2);
  @$pb.TagNumber(3)
  void clearComment() => clearField(3);
}

class DeleteRatingRequest extends $pb.GeneratedMessage {
  factory DeleteRatingRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteRatingRequest._() : super();
  factory DeleteRatingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRatingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRatingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRatingRequest clone() => DeleteRatingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRatingRequest copyWith(void Function(DeleteRatingRequest) updates) => super.copyWith((message) => updates(message as DeleteRatingRequest)) as DeleteRatingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRatingRequest create() => DeleteRatingRequest._();
  DeleteRatingRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRatingRequest> createRepeated() => $pb.PbList<DeleteRatingRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRatingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRatingRequest>(create);
  static DeleteRatingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
