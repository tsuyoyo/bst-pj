//
//  Generated code. Do not modify.
//  source: bst/v1/session_feedback_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session.pb.dart' as $36;

class AddSessionFeedbackRequest extends $pb.GeneratedMessage {
  factory AddSessionFeedbackRequest({
    $36.SessionFeedback? feedback,
  }) {
    final $result = create();
    if (feedback != null) {
      $result.feedback = feedback;
    }
    return $result;
  }
  AddSessionFeedbackRequest._() : super();
  factory AddSessionFeedbackRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionFeedbackRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionFeedbackRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionFeedback>(1, _omitFieldNames ? '' : 'feedback', subBuilder: $36.SessionFeedback.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionFeedbackRequest clone() => AddSessionFeedbackRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionFeedbackRequest copyWith(void Function(AddSessionFeedbackRequest) updates) => super.copyWith((message) => updates(message as AddSessionFeedbackRequest)) as AddSessionFeedbackRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionFeedbackRequest create() => AddSessionFeedbackRequest._();
  AddSessionFeedbackRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionFeedbackRequest> createRepeated() => $pb.PbList<AddSessionFeedbackRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionFeedbackRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionFeedbackRequest>(create);
  static AddSessionFeedbackRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionFeedback get feedback => $_getN(0);
  @$pb.TagNumber(1)
  set feedback($36.SessionFeedback v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeedback() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeedback() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionFeedback ensureFeedback() => $_ensure(0);
}

class AddSessionFeedbackResponse extends $pb.GeneratedMessage {
  factory AddSessionFeedbackResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  AddSessionFeedbackResponse._() : super();
  factory AddSessionFeedbackResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionFeedbackResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionFeedbackResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionFeedbackResponse clone() => AddSessionFeedbackResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionFeedbackResponse copyWith(void Function(AddSessionFeedbackResponse) updates) => super.copyWith((message) => updates(message as AddSessionFeedbackResponse)) as AddSessionFeedbackResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionFeedbackResponse create() => AddSessionFeedbackResponse._();
  AddSessionFeedbackResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionFeedbackResponse> createRepeated() => $pb.PbList<AddSessionFeedbackResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionFeedbackResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionFeedbackResponse>(create);
  static AddSessionFeedbackResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class ListSessionFeedbacksRequest extends $pb.GeneratedMessage {
  factory ListSessionFeedbacksRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  ListSessionFeedbacksRequest._() : super();
  factory ListSessionFeedbacksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionFeedbacksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionFeedbacksRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionFeedbacksRequest clone() => ListSessionFeedbacksRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionFeedbacksRequest copyWith(void Function(ListSessionFeedbacksRequest) updates) => super.copyWith((message) => updates(message as ListSessionFeedbacksRequest)) as ListSessionFeedbacksRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionFeedbacksRequest create() => ListSessionFeedbacksRequest._();
  ListSessionFeedbacksRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionFeedbacksRequest> createRepeated() => $pb.PbList<ListSessionFeedbacksRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionFeedbacksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionFeedbacksRequest>(create);
  static ListSessionFeedbacksRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class ListSessionFeedbacksResponse extends $pb.GeneratedMessage {
  factory ListSessionFeedbacksResponse({
    $core.Iterable<$36.SessionFeedback>? feedbacks,
  }) {
    final $result = create();
    if (feedbacks != null) {
      $result.feedbacks.addAll(feedbacks);
    }
    return $result;
  }
  ListSessionFeedbacksResponse._() : super();
  factory ListSessionFeedbacksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionFeedbacksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionFeedbacksResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$36.SessionFeedback>(1, _omitFieldNames ? '' : 'feedbacks', $pb.PbFieldType.PM, subBuilder: $36.SessionFeedback.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionFeedbacksResponse clone() => ListSessionFeedbacksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionFeedbacksResponse copyWith(void Function(ListSessionFeedbacksResponse) updates) => super.copyWith((message) => updates(message as ListSessionFeedbacksResponse)) as ListSessionFeedbacksResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionFeedbacksResponse create() => ListSessionFeedbacksResponse._();
  ListSessionFeedbacksResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionFeedbacksResponse> createRepeated() => $pb.PbList<ListSessionFeedbacksResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionFeedbacksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionFeedbacksResponse>(create);
  static ListSessionFeedbacksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$36.SessionFeedback> get feedbacks => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
