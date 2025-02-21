//
//  Generated code. Do not modify.
//  source: bst/v1/studio_review_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'location.pb.dart' as $28;

class CreateStudioReviewRequest extends $pb.GeneratedMessage {
  factory CreateStudioReviewRequest({
    $core.int? studioId,
    $core.String? comment,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  CreateStudioReviewRequest._() : super();
  factory CreateStudioReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioReviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioReviewRequest clone() => CreateStudioReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioReviewRequest copyWith(void Function(CreateStudioReviewRequest) updates) => super.copyWith((message) => updates(message as CreateStudioReviewRequest)) as CreateStudioReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewRequest create() => CreateStudioReviewRequest._();
  CreateStudioReviewRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStudioReviewRequest> createRepeated() => $pb.PbList<CreateStudioReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioReviewRequest>(create);
  static CreateStudioReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => clearField(2);
}

class CreateStudioReviewResponse extends $pb.GeneratedMessage {
  factory CreateStudioReviewResponse({
    $28.StudioReview? review,
  }) {
    final $result = create();
    if (review != null) {
      $result.review = review;
    }
    return $result;
  }
  CreateStudioReviewResponse._() : super();
  factory CreateStudioReviewResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioReviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioReviewResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$28.StudioReview>(1, _omitFieldNames ? '' : 'review', subBuilder: $28.StudioReview.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioReviewResponse clone() => CreateStudioReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioReviewResponse copyWith(void Function(CreateStudioReviewResponse) updates) => super.copyWith((message) => updates(message as CreateStudioReviewResponse)) as CreateStudioReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewResponse create() => CreateStudioReviewResponse._();
  CreateStudioReviewResponse createEmptyInstance() => create();
  static $pb.PbList<CreateStudioReviewResponse> createRepeated() => $pb.PbList<CreateStudioReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioReviewResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioReviewResponse>(create);
  static CreateStudioReviewResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $28.StudioReview get review => $_getN(0);
  @$pb.TagNumber(1)
  set review($28.StudioReview v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReview() => $_has(0);
  @$pb.TagNumber(1)
  void clearReview() => clearField(1);
  @$pb.TagNumber(1)
  $28.StudioReview ensureReview() => $_ensure(0);
}

class ListStudioReviewsRequest extends $pb.GeneratedMessage {
  factory ListStudioReviewsRequest({
    $core.int? studioId,
    $core.int? pageSize,
    $core.int? pageToken,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    return $result;
  }
  ListStudioReviewsRequest._() : super();
  factory ListStudioReviewsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioReviewsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioReviewsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pageToken', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioReviewsRequest clone() => ListStudioReviewsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioReviewsRequest copyWith(void Function(ListStudioReviewsRequest) updates) => super.copyWith((message) => updates(message as ListStudioReviewsRequest)) as ListStudioReviewsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsRequest create() => ListStudioReviewsRequest._();
  ListStudioReviewsRequest createEmptyInstance() => create();
  static $pb.PbList<ListStudioReviewsRequest> createRepeated() => $pb.PbList<ListStudioReviewsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioReviewsRequest>(create);
  static ListStudioReviewsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

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

class ListStudioReviewsResponse extends $pb.GeneratedMessage {
  factory ListStudioReviewsResponse({
    $core.Iterable<$28.StudioReview>? reviews,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (reviews != null) {
      $result.reviews.addAll(reviews);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListStudioReviewsResponse._() : super();
  factory ListStudioReviewsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioReviewsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioReviewsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$28.StudioReview>(1, _omitFieldNames ? '' : 'reviews', $pb.PbFieldType.PM, subBuilder: $28.StudioReview.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioReviewsResponse clone() => ListStudioReviewsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioReviewsResponse copyWith(void Function(ListStudioReviewsResponse) updates) => super.copyWith((message) => updates(message as ListStudioReviewsResponse)) as ListStudioReviewsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsResponse create() => ListStudioReviewsResponse._();
  ListStudioReviewsResponse createEmptyInstance() => create();
  static $pb.PbList<ListStudioReviewsResponse> createRepeated() => $pb.PbList<ListStudioReviewsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStudioReviewsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioReviewsResponse>(create);
  static ListStudioReviewsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$28.StudioReview> get reviews => $_getList(0);

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

class DeleteStudioReviewRequest extends $pb.GeneratedMessage {
  factory DeleteStudioReviewRequest({
    $core.int? studioId,
    $core.int? reviewId,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (reviewId != null) {
      $result.reviewId = reviewId;
    }
    return $result;
  }
  DeleteStudioReviewRequest._() : super();
  factory DeleteStudioReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioReviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'reviewId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewRequest clone() => DeleteStudioReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewRequest copyWith(void Function(DeleteStudioReviewRequest) updates) => super.copyWith((message) => updates(message as DeleteStudioReviewRequest)) as DeleteStudioReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewRequest create() => DeleteStudioReviewRequest._();
  DeleteStudioReviewRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioReviewRequest> createRepeated() => $pb.PbList<DeleteStudioReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioReviewRequest>(create);
  static DeleteStudioReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get reviewId => $_getIZ(1);
  @$pb.TagNumber(2)
  set reviewId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReviewId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReviewId() => clearField(2);
}

class DeleteStudioReviewResponse extends $pb.GeneratedMessage {
  factory DeleteStudioReviewResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteStudioReviewResponse._() : super();
  factory DeleteStudioReviewResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioReviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioReviewResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewResponse clone() => DeleteStudioReviewResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioReviewResponse copyWith(void Function(DeleteStudioReviewResponse) updates) => super.copyWith((message) => updates(message as DeleteStudioReviewResponse)) as DeleteStudioReviewResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewResponse create() => DeleteStudioReviewResponse._();
  DeleteStudioReviewResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioReviewResponse> createRepeated() => $pb.PbList<DeleteStudioReviewResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioReviewResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioReviewResponse>(create);
  static DeleteStudioReviewResponse? _defaultInstance;

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
