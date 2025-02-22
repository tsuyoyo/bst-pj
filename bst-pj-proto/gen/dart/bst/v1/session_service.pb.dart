//
//  Generated code. Do not modify.
//  source: bst/v1/session_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $27;
import 'communication.pb.dart' as $3;
import 'content.pb.dart' as $25;
import 'location.pb.dart' as $29;
import 'session.pb.dart' as $31;
import 'session.pbenum.dart' as $31;

/// Session Management
class CreateSessionRequest extends $pb.GeneratedMessage {
  factory CreateSessionRequest({
    $core.String? title,
    $core.String? description,
    $27.Timestamp? eventDate,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (eventDate != null) {
      $result.eventDate = eventDate;
    }
    return $result;
  }
  CreateSessionRequest._() : super();
  factory CreateSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOM<$27.Timestamp>(3, _omitFieldNames ? '' : 'eventDate', subBuilder: $27.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionRequest clone() => CreateSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionRequest copyWith(void Function(CreateSessionRequest) updates) => super.copyWith((message) => updates(message as CreateSessionRequest)) as CreateSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest create() => CreateSessionRequest._();
  CreateSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSessionRequest> createRepeated() => $pb.PbList<CreateSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionRequest>(create);
  static CreateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $27.Timestamp get eventDate => $_getN(2);
  @$pb.TagNumber(3)
  set eventDate($27.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventDate() => clearField(3);
  @$pb.TagNumber(3)
  $27.Timestamp ensureEventDate() => $_ensure(2);
}

class CreateSessionResponse extends $pb.GeneratedMessage {
  factory CreateSessionResponse({
    $31.Session? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  CreateSessionResponse._() : super();
  factory CreateSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Session>(1, _omitFieldNames ? '' : 'session', subBuilder: $31.Session.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionResponse clone() => CreateSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionResponse copyWith(void Function(CreateSessionResponse) updates) => super.copyWith((message) => updates(message as CreateSessionResponse)) as CreateSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse create() => CreateSessionResponse._();
  CreateSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSessionResponse> createRepeated() => $pb.PbList<CreateSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionResponse>(create);
  static CreateSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($31.Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $31.Session ensureSession() => $_ensure(0);
}

class GetSessionRequest extends $pb.GeneratedMessage {
  factory GetSessionRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  GetSessionRequest._() : super();
  factory GetSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionRequest clone() => GetSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionRequest copyWith(void Function(GetSessionRequest) updates) => super.copyWith((message) => updates(message as GetSessionRequest)) as GetSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionRequest create() => GetSessionRequest._();
  GetSessionRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionRequest> createRepeated() => $pb.PbList<GetSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionRequest>(create);
  static GetSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class GetSessionResponse extends $pb.GeneratedMessage {
  factory GetSessionResponse({
    $31.SessionDetail? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  GetSessionResponse._() : super();
  factory GetSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $31.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionResponse clone() => GetSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionResponse copyWith(void Function(GetSessionResponse) updates) => super.copyWith((message) => updates(message as GetSessionResponse)) as GetSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionResponse create() => GetSessionResponse._();
  GetSessionResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionResponse> createRepeated() => $pb.PbList<GetSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionResponse>(create);
  static GetSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($31.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionDetail ensureSession() => $_ensure(0);
}

class UpdateSessionRequest extends $pb.GeneratedMessage {
  factory UpdateSessionRequest({
    $core.int? sessionId,
    $core.String? title,
    $core.String? description,
    $27.Timestamp? eventDate,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (eventDate != null) {
      $result.eventDate = eventDate;
    }
    return $result;
  }
  UpdateSessionRequest._() : super();
  factory UpdateSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$27.Timestamp>(4, _omitFieldNames ? '' : 'eventDate', subBuilder: $27.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionRequest clone() => UpdateSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionRequest copyWith(void Function(UpdateSessionRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionRequest)) as UpdateSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionRequest create() => UpdateSessionRequest._();
  UpdateSessionRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionRequest> createRepeated() => $pb.PbList<UpdateSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionRequest>(create);
  static UpdateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $27.Timestamp get eventDate => $_getN(3);
  @$pb.TagNumber(4)
  set eventDate($27.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEventDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearEventDate() => clearField(4);
  @$pb.TagNumber(4)
  $27.Timestamp ensureEventDate() => $_ensure(3);
}

class UpdateSessionResponse extends $pb.GeneratedMessage {
  factory UpdateSessionResponse({
    $31.SessionDetail? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  UpdateSessionResponse._() : super();
  factory UpdateSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $31.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionResponse clone() => UpdateSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionResponse copyWith(void Function(UpdateSessionResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionResponse)) as UpdateSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionResponse create() => UpdateSessionResponse._();
  UpdateSessionResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionResponse> createRepeated() => $pb.PbList<UpdateSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionResponse>(create);
  static UpdateSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($31.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionDetail ensureSession() => $_ensure(0);
}

class UpdateSessionStatusRequest extends $pb.GeneratedMessage {
  factory UpdateSessionStatusRequest({
    $core.int? sessionId,
    $31.SessionStatus? status,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateSessionStatusRequest._() : super();
  factory UpdateSessionStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..e<$31.SessionStatus>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $31.SessionStatus.SESSION_STATUS_UNSPECIFIED, valueOf: $31.SessionStatus.valueOf, enumValues: $31.SessionStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionStatusRequest clone() => UpdateSessionStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionStatusRequest copyWith(void Function(UpdateSessionStatusRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionStatusRequest)) as UpdateSessionStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionStatusRequest create() => UpdateSessionStatusRequest._();
  UpdateSessionStatusRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionStatusRequest> createRepeated() => $pb.PbList<UpdateSessionStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionStatusRequest>(create);
  static UpdateSessionStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $31.SessionStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($31.SessionStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class UpdateSessionStatusResponse extends $pb.GeneratedMessage {
  factory UpdateSessionStatusResponse({
    $31.SessionDetail? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  UpdateSessionStatusResponse._() : super();
  factory UpdateSessionStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $31.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionStatusResponse clone() => UpdateSessionStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionStatusResponse copyWith(void Function(UpdateSessionStatusResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionStatusResponse)) as UpdateSessionStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionStatusResponse create() => UpdateSessionStatusResponse._();
  UpdateSessionStatusResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionStatusResponse> createRepeated() => $pb.PbList<UpdateSessionStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionStatusResponse>(create);
  static UpdateSessionStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($31.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionDetail ensureSession() => $_ensure(0);
}

class CancelSessionRequest extends $pb.GeneratedMessage {
  factory CancelSessionRequest({
    $core.int? sessionId,
    $core.String? reason,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  CancelSessionRequest._() : super();
  factory CancelSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelSessionRequest clone() => CancelSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelSessionRequest copyWith(void Function(CancelSessionRequest) updates) => super.copyWith((message) => updates(message as CancelSessionRequest)) as CancelSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelSessionRequest create() => CancelSessionRequest._();
  CancelSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CancelSessionRequest> createRepeated() => $pb.PbList<CancelSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelSessionRequest>(create);
  static CancelSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
}

class CancelSessionResponse extends $pb.GeneratedMessage {
  factory CancelSessionResponse({
    $31.SessionDetail? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  CancelSessionResponse._() : super();
  factory CancelSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $31.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelSessionResponse clone() => CancelSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelSessionResponse copyWith(void Function(CancelSessionResponse) updates) => super.copyWith((message) => updates(message as CancelSessionResponse)) as CancelSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelSessionResponse create() => CancelSessionResponse._();
  CancelSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CancelSessionResponse> createRepeated() => $pb.PbList<CancelSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelSessionResponse>(create);
  static CancelSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($31.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionDetail ensureSession() => $_ensure(0);
}

class DuplicateSessionRequest extends $pb.GeneratedMessage {
  factory DuplicateSessionRequest({
    $core.int? sessionId,
    $27.Timestamp? newEventDate,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (newEventDate != null) {
      $result.newEventDate = newEventDate;
    }
    return $result;
  }
  DuplicateSessionRequest._() : super();
  factory DuplicateSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DuplicateSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DuplicateSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$27.Timestamp>(2, _omitFieldNames ? '' : 'newEventDate', subBuilder: $27.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DuplicateSessionRequest clone() => DuplicateSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DuplicateSessionRequest copyWith(void Function(DuplicateSessionRequest) updates) => super.copyWith((message) => updates(message as DuplicateSessionRequest)) as DuplicateSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DuplicateSessionRequest create() => DuplicateSessionRequest._();
  DuplicateSessionRequest createEmptyInstance() => create();
  static $pb.PbList<DuplicateSessionRequest> createRepeated() => $pb.PbList<DuplicateSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static DuplicateSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DuplicateSessionRequest>(create);
  static DuplicateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $27.Timestamp get newEventDate => $_getN(1);
  @$pb.TagNumber(2)
  set newEventDate($27.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewEventDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewEventDate() => clearField(2);
  @$pb.TagNumber(2)
  $27.Timestamp ensureNewEventDate() => $_ensure(1);
}

class DuplicateSessionResponse extends $pb.GeneratedMessage {
  factory DuplicateSessionResponse({
    $31.SessionDetail? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  DuplicateSessionResponse._() : super();
  factory DuplicateSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DuplicateSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DuplicateSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $31.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DuplicateSessionResponse clone() => DuplicateSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DuplicateSessionResponse copyWith(void Function(DuplicateSessionResponse) updates) => super.copyWith((message) => updates(message as DuplicateSessionResponse)) as DuplicateSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DuplicateSessionResponse create() => DuplicateSessionResponse._();
  DuplicateSessionResponse createEmptyInstance() => create();
  static $pb.PbList<DuplicateSessionResponse> createRepeated() => $pb.PbList<DuplicateSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static DuplicateSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DuplicateSessionResponse>(create);
  static DuplicateSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($31.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionDetail ensureSession() => $_ensure(0);
}

/// Schedule & Location
class UpdateSessionScheduleRequest extends $pb.GeneratedMessage {
  factory UpdateSessionScheduleRequest({
    $core.int? sessionId,
    $31.Timetable? timetable,
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
  UpdateSessionScheduleRequest._() : super();
  factory UpdateSessionScheduleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionScheduleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionScheduleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$31.Timetable>(2, _omitFieldNames ? '' : 'timetable', subBuilder: $31.Timetable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionScheduleRequest clone() => UpdateSessionScheduleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionScheduleRequest copyWith(void Function(UpdateSessionScheduleRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionScheduleRequest)) as UpdateSessionScheduleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionScheduleRequest create() => UpdateSessionScheduleRequest._();
  UpdateSessionScheduleRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionScheduleRequest> createRepeated() => $pb.PbList<UpdateSessionScheduleRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionScheduleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionScheduleRequest>(create);
  static UpdateSessionScheduleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $31.Timetable get timetable => $_getN(1);
  @$pb.TagNumber(2)
  set timetable($31.Timetable v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimetable() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimetable() => clearField(2);
  @$pb.TagNumber(2)
  $31.Timetable ensureTimetable() => $_ensure(1);
}

class UpdateSessionScheduleResponse extends $pb.GeneratedMessage {
  factory UpdateSessionScheduleResponse({
    $31.Timetable? timetable,
  }) {
    final $result = create();
    if (timetable != null) {
      $result.timetable = timetable;
    }
    return $result;
  }
  UpdateSessionScheduleResponse._() : super();
  factory UpdateSessionScheduleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionScheduleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionScheduleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $31.Timetable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionScheduleResponse clone() => UpdateSessionScheduleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionScheduleResponse copyWith(void Function(UpdateSessionScheduleResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionScheduleResponse)) as UpdateSessionScheduleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionScheduleResponse create() => UpdateSessionScheduleResponse._();
  UpdateSessionScheduleResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionScheduleResponse> createRepeated() => $pb.PbList<UpdateSessionScheduleResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionScheduleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionScheduleResponse>(create);
  static UpdateSessionScheduleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($31.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $31.Timetable ensureTimetable() => $_ensure(0);
}

class UpdateSessionLocationRequest extends $pb.GeneratedMessage {
  factory UpdateSessionLocationRequest({
    $core.int? sessionId,
    $29.Location? location,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  UpdateSessionLocationRequest._() : super();
  factory UpdateSessionLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$29.Location>(2, _omitFieldNames ? '' : 'location', subBuilder: $29.Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionLocationRequest clone() => UpdateSessionLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionLocationRequest copyWith(void Function(UpdateSessionLocationRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionLocationRequest)) as UpdateSessionLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionLocationRequest create() => UpdateSessionLocationRequest._();
  UpdateSessionLocationRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionLocationRequest> createRepeated() => $pb.PbList<UpdateSessionLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionLocationRequest>(create);
  static UpdateSessionLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $29.Location get location => $_getN(1);
  @$pb.TagNumber(2)
  set location($29.Location v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);
  @$pb.TagNumber(2)
  $29.Location ensureLocation() => $_ensure(1);
}

class UpdateSessionLocationResponse extends $pb.GeneratedMessage {
  factory UpdateSessionLocationResponse({
    $29.Location? location,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  UpdateSessionLocationResponse._() : super();
  factory UpdateSessionLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionLocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$29.Location>(1, _omitFieldNames ? '' : 'location', subBuilder: $29.Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionLocationResponse clone() => UpdateSessionLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionLocationResponse copyWith(void Function(UpdateSessionLocationResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionLocationResponse)) as UpdateSessionLocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionLocationResponse create() => UpdateSessionLocationResponse._();
  UpdateSessionLocationResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionLocationResponse> createRepeated() => $pb.PbList<UpdateSessionLocationResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionLocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionLocationResponse>(create);
  static UpdateSessionLocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $29.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($29.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $29.Location ensureLocation() => $_ensure(0);
}

/// Participants
class ListSessionParticipantsRequest extends $pb.GeneratedMessage {
  factory ListSessionParticipantsRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  ListSessionParticipantsRequest._() : super();
  factory ListSessionParticipantsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionParticipantsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionParticipantsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionParticipantsRequest clone() => ListSessionParticipantsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionParticipantsRequest copyWith(void Function(ListSessionParticipantsRequest) updates) => super.copyWith((message) => updates(message as ListSessionParticipantsRequest)) as ListSessionParticipantsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionParticipantsRequest create() => ListSessionParticipantsRequest._();
  ListSessionParticipantsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionParticipantsRequest> createRepeated() => $pb.PbList<ListSessionParticipantsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionParticipantsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionParticipantsRequest>(create);
  static ListSessionParticipantsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class ListSessionParticipantsResponse extends $pb.GeneratedMessage {
  factory ListSessionParticipantsResponse({
    $core.Iterable<$31.SessionParticipant>? participants,
  }) {
    final $result = create();
    if (participants != null) {
      $result.participants.addAll(participants);
    }
    return $result;
  }
  ListSessionParticipantsResponse._() : super();
  factory ListSessionParticipantsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionParticipantsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionParticipantsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.SessionParticipant>(1, _omitFieldNames ? '' : 'participants', $pb.PbFieldType.PM, subBuilder: $31.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionParticipantsResponse clone() => ListSessionParticipantsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionParticipantsResponse copyWith(void Function(ListSessionParticipantsResponse) updates) => super.copyWith((message) => updates(message as ListSessionParticipantsResponse)) as ListSessionParticipantsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionParticipantsResponse create() => ListSessionParticipantsResponse._();
  ListSessionParticipantsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionParticipantsResponse> createRepeated() => $pb.PbList<ListSessionParticipantsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionParticipantsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionParticipantsResponse>(create);
  static ListSessionParticipantsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.SessionParticipant> get participants => $_getList(0);
}

class AddSessionParticipantRequest extends $pb.GeneratedMessage {
  factory AddSessionParticipantRequest({
    $core.int? sessionId,
    $31.SessionParticipant? participant,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (participant != null) {
      $result.participant = participant;
    }
    return $result;
  }
  AddSessionParticipantRequest._() : super();
  factory AddSessionParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$31.SessionParticipant>(2, _omitFieldNames ? '' : 'participant', subBuilder: $31.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionParticipantRequest clone() => AddSessionParticipantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionParticipantRequest copyWith(void Function(AddSessionParticipantRequest) updates) => super.copyWith((message) => updates(message as AddSessionParticipantRequest)) as AddSessionParticipantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantRequest create() => AddSessionParticipantRequest._();
  AddSessionParticipantRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionParticipantRequest> createRepeated() => $pb.PbList<AddSessionParticipantRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionParticipantRequest>(create);
  static AddSessionParticipantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $31.SessionParticipant get participant => $_getN(1);
  @$pb.TagNumber(2)
  set participant($31.SessionParticipant v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParticipant() => $_has(1);
  @$pb.TagNumber(2)
  void clearParticipant() => clearField(2);
  @$pb.TagNumber(2)
  $31.SessionParticipant ensureParticipant() => $_ensure(1);
}

class AddSessionParticipantResponse extends $pb.GeneratedMessage {
  factory AddSessionParticipantResponse({
    $31.SessionParticipant? participant,
  }) {
    final $result = create();
    if (participant != null) {
      $result.participant = participant;
    }
    return $result;
  }
  AddSessionParticipantResponse._() : super();
  factory AddSessionParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionParticipant>(1, _omitFieldNames ? '' : 'participant', subBuilder: $31.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionParticipantResponse clone() => AddSessionParticipantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionParticipantResponse copyWith(void Function(AddSessionParticipantResponse) updates) => super.copyWith((message) => updates(message as AddSessionParticipantResponse)) as AddSessionParticipantResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantResponse create() => AddSessionParticipantResponse._();
  AddSessionParticipantResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionParticipantResponse> createRepeated() => $pb.PbList<AddSessionParticipantResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionParticipantResponse>(create);
  static AddSessionParticipantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionParticipant get participant => $_getN(0);
  @$pb.TagNumber(1)
  set participant($31.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearParticipant() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionParticipant ensureParticipant() => $_ensure(0);
}

class UpdateSessionParticipantRequest extends $pb.GeneratedMessage {
  factory UpdateSessionParticipantRequest({
    $core.int? sessionId,
    $core.int? participantId,
    $31.SessionParticipant? participant,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (participantId != null) {
      $result.participantId = participantId;
    }
    if (participant != null) {
      $result.participant = participant;
    }
    return $result;
  }
  UpdateSessionParticipantRequest._() : super();
  factory UpdateSessionParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'participantId', $pb.PbFieldType.O3)
    ..aOM<$31.SessionParticipant>(3, _omitFieldNames ? '' : 'participant', subBuilder: $31.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantRequest clone() => UpdateSessionParticipantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantRequest copyWith(void Function(UpdateSessionParticipantRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionParticipantRequest)) as UpdateSessionParticipantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantRequest create() => UpdateSessionParticipantRequest._();
  UpdateSessionParticipantRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionParticipantRequest> createRepeated() => $pb.PbList<UpdateSessionParticipantRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionParticipantRequest>(create);
  static UpdateSessionParticipantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get participantId => $_getIZ(1);
  @$pb.TagNumber(2)
  set participantId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParticipantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParticipantId() => clearField(2);

  @$pb.TagNumber(3)
  $31.SessionParticipant get participant => $_getN(2);
  @$pb.TagNumber(3)
  set participant($31.SessionParticipant v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasParticipant() => $_has(2);
  @$pb.TagNumber(3)
  void clearParticipant() => clearField(3);
  @$pb.TagNumber(3)
  $31.SessionParticipant ensureParticipant() => $_ensure(2);
}

class UpdateSessionParticipantResponse extends $pb.GeneratedMessage {
  factory UpdateSessionParticipantResponse({
    $31.SessionParticipant? participant,
  }) {
    final $result = create();
    if (participant != null) {
      $result.participant = participant;
    }
    return $result;
  }
  UpdateSessionParticipantResponse._() : super();
  factory UpdateSessionParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionParticipant>(1, _omitFieldNames ? '' : 'participant', subBuilder: $31.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantResponse clone() => UpdateSessionParticipantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantResponse copyWith(void Function(UpdateSessionParticipantResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionParticipantResponse)) as UpdateSessionParticipantResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantResponse create() => UpdateSessionParticipantResponse._();
  UpdateSessionParticipantResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionParticipantResponse> createRepeated() => $pb.PbList<UpdateSessionParticipantResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionParticipantResponse>(create);
  static UpdateSessionParticipantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionParticipant get participant => $_getN(0);
  @$pb.TagNumber(1)
  set participant($31.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearParticipant() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionParticipant ensureParticipant() => $_ensure(0);
}

/// Song Entries
class AddSongEntryRequest extends $pb.GeneratedMessage {
  factory AddSongEntryRequest({
    $core.int? sessionId,
    $core.int? songId,
    $31.SessionSongEntry? entry,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (songId != null) {
      $result.songId = songId;
    }
    if (entry != null) {
      $result.entry = entry;
    }
    return $result;
  }
  AddSongEntryRequest._() : super();
  factory AddSongEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSongEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSongEntryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..aOM<$31.SessionSongEntry>(3, _omitFieldNames ? '' : 'entry', subBuilder: $31.SessionSongEntry.create)
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
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get songId => $_getIZ(1);
  @$pb.TagNumber(2)
  set songId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);

  @$pb.TagNumber(3)
  $31.SessionSongEntry get entry => $_getN(2);
  @$pb.TagNumber(3)
  set entry($31.SessionSongEntry v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEntry() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntry() => clearField(3);
  @$pb.TagNumber(3)
  $31.SessionSongEntry ensureEntry() => $_ensure(2);
}

class AddSongEntryResponse extends $pb.GeneratedMessage {
  factory AddSongEntryResponse({
    $31.SessionSongEntry? entry,
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
    ..aOM<$31.SessionSongEntry>(1, _omitFieldNames ? '' : 'entry', subBuilder: $31.SessionSongEntry.create)
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
  $31.SessionSongEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry($31.SessionSongEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionSongEntry ensureEntry() => $_ensure(0);
}

class DeleteSongEntryRequest extends $pb.GeneratedMessage {
  factory DeleteSongEntryRequest({
    $core.int? sessionId,
    $core.int? songId,
    $core.int? entryId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (songId != null) {
      $result.songId = songId;
    }
    if (entryId != null) {
      $result.entryId = entryId;
    }
    return $result;
  }
  DeleteSongEntryRequest._() : super();
  factory DeleteSongEntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongEntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSongEntryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'entryId', $pb.PbFieldType.O3)
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

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get songId => $_getIZ(1);
  @$pb.TagNumber(2)
  set songId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get entryId => $_getIZ(2);
  @$pb.TagNumber(3)
  set entryId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEntryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntryId() => clearField(3);
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

/// Song Resources
class AddSessionSongResourceRequest extends $pb.GeneratedMessage {
  factory AddSessionSongResourceRequest({
    $core.int? sessionId,
    $core.int? songId,
    $25.Resource? resource,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (songId != null) {
      $result.songId = songId;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  AddSessionSongResourceRequest._() : super();
  factory AddSessionSongResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionSongResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionSongResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..aOM<$25.Resource>(3, _omitFieldNames ? '' : 'resource', subBuilder: $25.Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionSongResourceRequest clone() => AddSessionSongResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionSongResourceRequest copyWith(void Function(AddSessionSongResourceRequest) updates) => super.copyWith((message) => updates(message as AddSessionSongResourceRequest)) as AddSessionSongResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionSongResourceRequest create() => AddSessionSongResourceRequest._();
  AddSessionSongResourceRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionSongResourceRequest> createRepeated() => $pb.PbList<AddSessionSongResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionSongResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionSongResourceRequest>(create);
  static AddSessionSongResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get songId => $_getIZ(1);
  @$pb.TagNumber(2)
  set songId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);

  @$pb.TagNumber(3)
  $25.Resource get resource => $_getN(2);
  @$pb.TagNumber(3)
  set resource($25.Resource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
  @$pb.TagNumber(3)
  $25.Resource ensureResource() => $_ensure(2);
}

class AddSessionSongResourceResponse extends $pb.GeneratedMessage {
  factory AddSessionSongResourceResponse({
    $25.Resource? resource,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  AddSessionSongResourceResponse._() : super();
  factory AddSessionSongResourceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionSongResourceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionSongResourceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$25.Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: $25.Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionSongResourceResponse clone() => AddSessionSongResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionSongResourceResponse copyWith(void Function(AddSessionSongResourceResponse) updates) => super.copyWith((message) => updates(message as AddSessionSongResourceResponse)) as AddSessionSongResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionSongResourceResponse create() => AddSessionSongResourceResponse._();
  AddSessionSongResourceResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionSongResourceResponse> createRepeated() => $pb.PbList<AddSessionSongResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionSongResourceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionSongResourceResponse>(create);
  static AddSessionSongResourceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $25.Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource($25.Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  $25.Resource ensureResource() => $_ensure(0);
}

class ListSessionSongResourcesRequest extends $pb.GeneratedMessage {
  factory ListSessionSongResourcesRequest({
    $core.int? sessionId,
    $core.int? songId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (songId != null) {
      $result.songId = songId;
    }
    return $result;
  }
  ListSessionSongResourcesRequest._() : super();
  factory ListSessionSongResourcesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionSongResourcesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionSongResourcesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionSongResourcesRequest clone() => ListSessionSongResourcesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionSongResourcesRequest copyWith(void Function(ListSessionSongResourcesRequest) updates) => super.copyWith((message) => updates(message as ListSessionSongResourcesRequest)) as ListSessionSongResourcesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionSongResourcesRequest create() => ListSessionSongResourcesRequest._();
  ListSessionSongResourcesRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionSongResourcesRequest> createRepeated() => $pb.PbList<ListSessionSongResourcesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionSongResourcesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionSongResourcesRequest>(create);
  static ListSessionSongResourcesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get songId => $_getIZ(1);
  @$pb.TagNumber(2)
  set songId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);
}

class ListSessionSongResourcesResponse extends $pb.GeneratedMessage {
  factory ListSessionSongResourcesResponse({
    $core.Iterable<$25.Resource>? resources,
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
  ListSessionSongResourcesResponse._() : super();
  factory ListSessionSongResourcesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionSongResourcesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionSongResourcesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$25.Resource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $25.Resource.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionSongResourcesResponse clone() => ListSessionSongResourcesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionSongResourcesResponse copyWith(void Function(ListSessionSongResourcesResponse) updates) => super.copyWith((message) => updates(message as ListSessionSongResourcesResponse)) as ListSessionSongResourcesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionSongResourcesResponse create() => ListSessionSongResourcesResponse._();
  ListSessionSongResourcesResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionSongResourcesResponse> createRepeated() => $pb.PbList<ListSessionSongResourcesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionSongResourcesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionSongResourcesResponse>(create);
  static ListSessionSongResourcesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$25.Resource> get resources => $_getList(0);

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

class DeleteSessionSongResourceRequest extends $pb.GeneratedMessage {
  factory DeleteSessionSongResourceRequest({
    $core.int? sessionId,
    $core.int? songId,
    $core.int? resourceId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (songId != null) {
      $result.songId = songId;
    }
    if (resourceId != null) {
      $result.resourceId = resourceId;
    }
    return $result;
  }
  DeleteSessionSongResourceRequest._() : super();
  factory DeleteSessionSongResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionSongResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionSongResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'resourceId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionSongResourceRequest clone() => DeleteSessionSongResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionSongResourceRequest copyWith(void Function(DeleteSessionSongResourceRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionSongResourceRequest)) as DeleteSessionSongResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongResourceRequest create() => DeleteSessionSongResourceRequest._();
  DeleteSessionSongResourceRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionSongResourceRequest> createRepeated() => $pb.PbList<DeleteSessionSongResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionSongResourceRequest>(create);
  static DeleteSessionSongResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get songId => $_getIZ(1);
  @$pb.TagNumber(2)
  set songId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get resourceId => $_getIZ(2);
  @$pb.TagNumber(3)
  set resourceId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResourceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearResourceId() => clearField(3);
}

class DeleteSessionSongResourceResponse extends $pb.GeneratedMessage {
  factory DeleteSessionSongResourceResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionSongResourceResponse._() : super();
  factory DeleteSessionSongResourceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionSongResourceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionSongResourceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionSongResourceResponse clone() => DeleteSessionSongResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionSongResourceResponse copyWith(void Function(DeleteSessionSongResourceResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionSongResourceResponse)) as DeleteSessionSongResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongResourceResponse create() => DeleteSessionSongResourceResponse._();
  DeleteSessionSongResourceResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionSongResourceResponse> createRepeated() => $pb.PbList<DeleteSessionSongResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionSongResourceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionSongResourceResponse>(create);
  static DeleteSessionSongResourceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

/// Organizers
class ListSessionOrganizersRequest extends $pb.GeneratedMessage {
  factory ListSessionOrganizersRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  ListSessionOrganizersRequest._() : super();
  factory ListSessionOrganizersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionOrganizersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionOrganizersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersRequest clone() => ListSessionOrganizersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersRequest copyWith(void Function(ListSessionOrganizersRequest) updates) => super.copyWith((message) => updates(message as ListSessionOrganizersRequest)) as ListSessionOrganizersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersRequest create() => ListSessionOrganizersRequest._();
  ListSessionOrganizersRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionOrganizersRequest> createRepeated() => $pb.PbList<ListSessionOrganizersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionOrganizersRequest>(create);
  static ListSessionOrganizersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class ListSessionOrganizersResponse extends $pb.GeneratedMessage {
  factory ListSessionOrganizersResponse({
    $core.Iterable<$31.SessionParticipant>? organizers,
  }) {
    final $result = create();
    if (organizers != null) {
      $result.organizers.addAll(organizers);
    }
    return $result;
  }
  ListSessionOrganizersResponse._() : super();
  factory ListSessionOrganizersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionOrganizersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionOrganizersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.SessionParticipant>(1, _omitFieldNames ? '' : 'organizers', $pb.PbFieldType.PM, subBuilder: $31.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersResponse clone() => ListSessionOrganizersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersResponse copyWith(void Function(ListSessionOrganizersResponse) updates) => super.copyWith((message) => updates(message as ListSessionOrganizersResponse)) as ListSessionOrganizersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersResponse create() => ListSessionOrganizersResponse._();
  ListSessionOrganizersResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionOrganizersResponse> createRepeated() => $pb.PbList<ListSessionOrganizersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionOrganizersResponse>(create);
  static ListSessionOrganizersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.SessionParticipant> get organizers => $_getList(0);
}

class AddSessionOrganizerRequest extends $pb.GeneratedMessage {
  factory AddSessionOrganizerRequest({
    $core.int? sessionId,
    $core.int? userId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  AddSessionOrganizerRequest._() : super();
  factory AddSessionOrganizerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionOrganizerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionOrganizerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerRequest clone() => AddSessionOrganizerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerRequest copyWith(void Function(AddSessionOrganizerRequest) updates) => super.copyWith((message) => updates(message as AddSessionOrganizerRequest)) as AddSessionOrganizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerRequest create() => AddSessionOrganizerRequest._();
  AddSessionOrganizerRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionOrganizerRequest> createRepeated() => $pb.PbList<AddSessionOrganizerRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionOrganizerRequest>(create);
  static AddSessionOrganizerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class AddSessionOrganizerResponse extends $pb.GeneratedMessage {
  factory AddSessionOrganizerResponse({
    $31.SessionParticipant? organizer,
  }) {
    final $result = create();
    if (organizer != null) {
      $result.organizer = organizer;
    }
    return $result;
  }
  AddSessionOrganizerResponse._() : super();
  factory AddSessionOrganizerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionOrganizerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionOrganizerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$31.SessionParticipant>(1, _omitFieldNames ? '' : 'organizer', subBuilder: $31.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerResponse clone() => AddSessionOrganizerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerResponse copyWith(void Function(AddSessionOrganizerResponse) updates) => super.copyWith((message) => updates(message as AddSessionOrganizerResponse)) as AddSessionOrganizerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerResponse create() => AddSessionOrganizerResponse._();
  AddSessionOrganizerResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionOrganizerResponse> createRepeated() => $pb.PbList<AddSessionOrganizerResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionOrganizerResponse>(create);
  static AddSessionOrganizerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SessionParticipant get organizer => $_getN(0);
  @$pb.TagNumber(1)
  set organizer($31.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizer() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizer() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionParticipant ensureOrganizer() => $_ensure(0);
}

class DeleteSessionOrganizerRequest extends $pb.GeneratedMessage {
  factory DeleteSessionOrganizerRequest({
    $core.int? sessionId,
    $core.int? userId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  DeleteSessionOrganizerRequest._() : super();
  factory DeleteSessionOrganizerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionOrganizerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionOrganizerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerRequest clone() => DeleteSessionOrganizerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerRequest copyWith(void Function(DeleteSessionOrganizerRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionOrganizerRequest)) as DeleteSessionOrganizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerRequest create() => DeleteSessionOrganizerRequest._();
  DeleteSessionOrganizerRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionOrganizerRequest> createRepeated() => $pb.PbList<DeleteSessionOrganizerRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionOrganizerRequest>(create);
  static DeleteSessionOrganizerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class DeleteSessionOrganizerResponse extends $pb.GeneratedMessage {
  factory DeleteSessionOrganizerResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionOrganizerResponse._() : super();
  factory DeleteSessionOrganizerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionOrganizerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionOrganizerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerResponse clone() => DeleteSessionOrganizerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerResponse copyWith(void Function(DeleteSessionOrganizerResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionOrganizerResponse)) as DeleteSessionOrganizerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerResponse create() => DeleteSessionOrganizerResponse._();
  DeleteSessionOrganizerResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionOrganizerResponse> createRepeated() => $pb.PbList<DeleteSessionOrganizerResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionOrganizerResponse>(create);
  static DeleteSessionOrganizerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

/// Communication
class CreateSessionThreadRequest extends $pb.GeneratedMessage {
  factory CreateSessionThreadRequest({
    $core.int? sessionId,
    $3.Thread? thread,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (thread != null) {
      $result.thread = thread;
    }
    return $result;
  }
  CreateSessionThreadRequest._() : super();
  factory CreateSessionThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSessionThreadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$3.Thread>(2, _omitFieldNames ? '' : 'thread', subBuilder: $3.Thread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionThreadRequest clone() => CreateSessionThreadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionThreadRequest copyWith(void Function(CreateSessionThreadRequest) updates) => super.copyWith((message) => updates(message as CreateSessionThreadRequest)) as CreateSessionThreadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionThreadRequest create() => CreateSessionThreadRequest._();
  CreateSessionThreadRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSessionThreadRequest> createRepeated() => $pb.PbList<CreateSessionThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionThreadRequest>(create);
  static CreateSessionThreadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Thread get thread => $_getN(1);
  @$pb.TagNumber(2)
  set thread($3.Thread v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasThread() => $_has(1);
  @$pb.TagNumber(2)
  void clearThread() => clearField(2);
  @$pb.TagNumber(2)
  $3.Thread ensureThread() => $_ensure(1);
}

class CreateSessionThreadResponse extends $pb.GeneratedMessage {
  factory CreateSessionThreadResponse({
    $3.Thread? thread,
  }) {
    final $result = create();
    if (thread != null) {
      $result.thread = thread;
    }
    return $result;
  }
  CreateSessionThreadResponse._() : super();
  factory CreateSessionThreadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionThreadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSessionThreadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$3.Thread>(1, _omitFieldNames ? '' : 'thread', subBuilder: $3.Thread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionThreadResponse clone() => CreateSessionThreadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionThreadResponse copyWith(void Function(CreateSessionThreadResponse) updates) => super.copyWith((message) => updates(message as CreateSessionThreadResponse)) as CreateSessionThreadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionThreadResponse create() => CreateSessionThreadResponse._();
  CreateSessionThreadResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSessionThreadResponse> createRepeated() => $pb.PbList<CreateSessionThreadResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionThreadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionThreadResponse>(create);
  static CreateSessionThreadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Thread get thread => $_getN(0);
  @$pb.TagNumber(1)
  set thread($3.Thread v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasThread() => $_has(0);
  @$pb.TagNumber(1)
  void clearThread() => clearField(1);
  @$pb.TagNumber(1)
  $3.Thread ensureThread() => $_ensure(0);
}

class ListSessionThreadsRequest extends $pb.GeneratedMessage {
  factory ListSessionThreadsRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  ListSessionThreadsRequest._() : super();
  factory ListSessionThreadsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionThreadsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionThreadsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionThreadsRequest clone() => ListSessionThreadsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionThreadsRequest copyWith(void Function(ListSessionThreadsRequest) updates) => super.copyWith((message) => updates(message as ListSessionThreadsRequest)) as ListSessionThreadsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionThreadsRequest create() => ListSessionThreadsRequest._();
  ListSessionThreadsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionThreadsRequest> createRepeated() => $pb.PbList<ListSessionThreadsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionThreadsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionThreadsRequest>(create);
  static ListSessionThreadsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class ListSessionThreadsResponse extends $pb.GeneratedMessage {
  factory ListSessionThreadsResponse({
    $core.Iterable<$3.Thread>? threads,
  }) {
    final $result = create();
    if (threads != null) {
      $result.threads.addAll(threads);
    }
    return $result;
  }
  ListSessionThreadsResponse._() : super();
  factory ListSessionThreadsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionThreadsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionThreadsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$3.Thread>(1, _omitFieldNames ? '' : 'threads', $pb.PbFieldType.PM, subBuilder: $3.Thread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionThreadsResponse clone() => ListSessionThreadsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionThreadsResponse copyWith(void Function(ListSessionThreadsResponse) updates) => super.copyWith((message) => updates(message as ListSessionThreadsResponse)) as ListSessionThreadsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionThreadsResponse create() => ListSessionThreadsResponse._();
  ListSessionThreadsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionThreadsResponse> createRepeated() => $pb.PbList<ListSessionThreadsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionThreadsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionThreadsResponse>(create);
  static ListSessionThreadsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.Thread> get threads => $_getList(0);
}

class CreateSongThreadRequest extends $pb.GeneratedMessage {
  factory CreateSongThreadRequest({
    $core.int? sessionId,
    $core.int? songId,
    $3.Thread? thread,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (songId != null) {
      $result.songId = songId;
    }
    if (thread != null) {
      $result.thread = thread;
    }
    return $result;
  }
  CreateSongThreadRequest._() : super();
  factory CreateSongThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSongThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSongThreadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'songId', $pb.PbFieldType.O3)
    ..aOM<$3.Thread>(3, _omitFieldNames ? '' : 'thread', subBuilder: $3.Thread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSongThreadRequest clone() => CreateSongThreadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSongThreadRequest copyWith(void Function(CreateSongThreadRequest) updates) => super.copyWith((message) => updates(message as CreateSongThreadRequest)) as CreateSongThreadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSongThreadRequest create() => CreateSongThreadRequest._();
  CreateSongThreadRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSongThreadRequest> createRepeated() => $pb.PbList<CreateSongThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSongThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSongThreadRequest>(create);
  static CreateSongThreadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get songId => $_getIZ(1);
  @$pb.TagNumber(2)
  set songId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);

  @$pb.TagNumber(3)
  $3.Thread get thread => $_getN(2);
  @$pb.TagNumber(3)
  set thread($3.Thread v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasThread() => $_has(2);
  @$pb.TagNumber(3)
  void clearThread() => clearField(3);
  @$pb.TagNumber(3)
  $3.Thread ensureThread() => $_ensure(2);
}

class CreateSongThreadResponse extends $pb.GeneratedMessage {
  factory CreateSongThreadResponse({
    $3.Thread? thread,
  }) {
    final $result = create();
    if (thread != null) {
      $result.thread = thread;
    }
    return $result;
  }
  CreateSongThreadResponse._() : super();
  factory CreateSongThreadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSongThreadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSongThreadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$3.Thread>(1, _omitFieldNames ? '' : 'thread', subBuilder: $3.Thread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSongThreadResponse clone() => CreateSongThreadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSongThreadResponse copyWith(void Function(CreateSongThreadResponse) updates) => super.copyWith((message) => updates(message as CreateSongThreadResponse)) as CreateSongThreadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSongThreadResponse create() => CreateSongThreadResponse._();
  CreateSongThreadResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSongThreadResponse> createRepeated() => $pb.PbList<CreateSongThreadResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSongThreadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSongThreadResponse>(create);
  static CreateSongThreadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Thread get thread => $_getN(0);
  @$pb.TagNumber(1)
  set thread($3.Thread v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasThread() => $_has(0);
  @$pb.TagNumber(1)
  void clearThread() => clearField(1);
  @$pb.TagNumber(1)
  $3.Thread ensureThread() => $_ensure(0);
}

class GetSessionThreadRequest extends $pb.GeneratedMessage {
  factory GetSessionThreadRequest({
    $core.int? sessionId,
    $core.int? threadId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (threadId != null) {
      $result.threadId = threadId;
    }
    return $result;
  }
  GetSessionThreadRequest._() : super();
  factory GetSessionThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionThreadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionThreadRequest clone() => GetSessionThreadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionThreadRequest copyWith(void Function(GetSessionThreadRequest) updates) => super.copyWith((message) => updates(message as GetSessionThreadRequest)) as GetSessionThreadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionThreadRequest create() => GetSessionThreadRequest._();
  GetSessionThreadRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionThreadRequest> createRepeated() => $pb.PbList<GetSessionThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionThreadRequest>(create);
  static GetSessionThreadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get threadId => $_getIZ(1);
  @$pb.TagNumber(2)
  set threadId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => clearField(2);
}

class GetSessionThreadResponse extends $pb.GeneratedMessage {
  factory GetSessionThreadResponse({
    $3.Thread? thread,
  }) {
    final $result = create();
    if (thread != null) {
      $result.thread = thread;
    }
    return $result;
  }
  GetSessionThreadResponse._() : super();
  factory GetSessionThreadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionThreadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionThreadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$3.Thread>(1, _omitFieldNames ? '' : 'thread', subBuilder: $3.Thread.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionThreadResponse clone() => GetSessionThreadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionThreadResponse copyWith(void Function(GetSessionThreadResponse) updates) => super.copyWith((message) => updates(message as GetSessionThreadResponse)) as GetSessionThreadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionThreadResponse create() => GetSessionThreadResponse._();
  GetSessionThreadResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionThreadResponse> createRepeated() => $pb.PbList<GetSessionThreadResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionThreadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionThreadResponse>(create);
  static GetSessionThreadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Thread get thread => $_getN(0);
  @$pb.TagNumber(1)
  set thread($3.Thread v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasThread() => $_has(0);
  @$pb.TagNumber(1)
  void clearThread() => clearField(1);
  @$pb.TagNumber(1)
  $3.Thread ensureThread() => $_ensure(0);
}

class DeleteSessionThreadRequest extends $pb.GeneratedMessage {
  factory DeleteSessionThreadRequest({
    $core.int? sessionId,
    $core.int? threadId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (threadId != null) {
      $result.threadId = threadId;
    }
    return $result;
  }
  DeleteSessionThreadRequest._() : super();
  factory DeleteSessionThreadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionThreadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionThreadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionThreadRequest clone() => DeleteSessionThreadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionThreadRequest copyWith(void Function(DeleteSessionThreadRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionThreadRequest)) as DeleteSessionThreadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionThreadRequest create() => DeleteSessionThreadRequest._();
  DeleteSessionThreadRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionThreadRequest> createRepeated() => $pb.PbList<DeleteSessionThreadRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionThreadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionThreadRequest>(create);
  static DeleteSessionThreadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get threadId => $_getIZ(1);
  @$pb.TagNumber(2)
  set threadId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => clearField(2);
}

class DeleteSessionThreadResponse extends $pb.GeneratedMessage {
  factory DeleteSessionThreadResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionThreadResponse._() : super();
  factory DeleteSessionThreadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionThreadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionThreadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionThreadResponse clone() => DeleteSessionThreadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionThreadResponse copyWith(void Function(DeleteSessionThreadResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionThreadResponse)) as DeleteSessionThreadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionThreadResponse create() => DeleteSessionThreadResponse._();
  DeleteSessionThreadResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionThreadResponse> createRepeated() => $pb.PbList<DeleteSessionThreadResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionThreadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionThreadResponse>(create);
  static DeleteSessionThreadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class CreateSessionNotificationRequest extends $pb.GeneratedMessage {
  factory CreateSessionNotificationRequest({
    $core.int? sessionId,
    $core.String? content,
    $core.Iterable<$core.int>? userIds,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (content != null) {
      $result.content = content;
    }
    if (userIds != null) {
      $result.userIds.addAll(userIds);
    }
    return $result;
  }
  CreateSessionNotificationRequest._() : super();
  factory CreateSessionNotificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionNotificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSessionNotificationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'userIds', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionNotificationRequest clone() => CreateSessionNotificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionNotificationRequest copyWith(void Function(CreateSessionNotificationRequest) updates) => super.copyWith((message) => updates(message as CreateSessionNotificationRequest)) as CreateSessionNotificationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionNotificationRequest create() => CreateSessionNotificationRequest._();
  CreateSessionNotificationRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSessionNotificationRequest> createRepeated() => $pb.PbList<CreateSessionNotificationRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionNotificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionNotificationRequest>(create);
  static CreateSessionNotificationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get userIds => $_getList(2);
}

class CreateSessionNotificationResponse extends $pb.GeneratedMessage {
  factory CreateSessionNotificationResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  CreateSessionNotificationResponse._() : super();
  factory CreateSessionNotificationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionNotificationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSessionNotificationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionNotificationResponse clone() => CreateSessionNotificationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionNotificationResponse copyWith(void Function(CreateSessionNotificationResponse) updates) => super.copyWith((message) => updates(message as CreateSessionNotificationResponse)) as CreateSessionNotificationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionNotificationResponse create() => CreateSessionNotificationResponse._();
  CreateSessionNotificationResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSessionNotificationResponse> createRepeated() => $pb.PbList<CreateSessionNotificationResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionNotificationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionNotificationResponse>(create);
  static CreateSessionNotificationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

/// Timetable
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
    $31.Timetable? timetable,
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
    ..aOM<$31.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $31.Timetable.create)
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
  $31.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($31.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $31.Timetable ensureTimetable() => $_ensure(0);
}

class UpdateSessionTimetableRequest extends $pb.GeneratedMessage {
  factory UpdateSessionTimetableRequest({
    $core.int? sessionId,
    $31.Timetable? timetable,
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
    ..aOM<$31.Timetable>(2, _omitFieldNames ? '' : 'timetable', subBuilder: $31.Timetable.create)
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
  $31.Timetable get timetable => $_getN(1);
  @$pb.TagNumber(2)
  set timetable($31.Timetable v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimetable() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimetable() => clearField(2);
  @$pb.TagNumber(2)
  $31.Timetable ensureTimetable() => $_ensure(1);
}

class UpdateSessionTimetableResponse extends $pb.GeneratedMessage {
  factory UpdateSessionTimetableResponse({
    $31.Timetable? timetable,
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
    ..aOM<$31.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $31.Timetable.create)
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
  $31.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($31.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $31.Timetable ensureTimetable() => $_ensure(0);
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
    $31.Timetable? timetable,
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
    ..aOM<$31.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $31.Timetable.create)
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
  $31.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($31.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $31.Timetable ensureTimetable() => $_ensure(0);
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
    $core.Iterable<$31.TimetableEntry>? completedEntries,
    $31.TimetableEntry? currentEntry,
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
    ..pc<$31.TimetableEntry>(1, _omitFieldNames ? '' : 'completedEntries', $pb.PbFieldType.PM, subBuilder: $31.TimetableEntry.create)
    ..aOM<$31.TimetableEntry>(2, _omitFieldNames ? '' : 'currentEntry', subBuilder: $31.TimetableEntry.create)
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
  $core.List<$31.TimetableEntry> get completedEntries => $_getList(0);

  @$pb.TagNumber(2)
  $31.TimetableEntry get currentEntry => $_getN(1);
  @$pb.TagNumber(2)
  set currentEntry($31.TimetableEntry v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentEntry() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentEntry() => clearField(2);
  @$pb.TagNumber(2)
  $31.TimetableEntry ensureCurrentEntry() => $_ensure(1);
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

/// Session Resources
class AddSessionResourceRequest extends $pb.GeneratedMessage {
  factory AddSessionResourceRequest({
    $core.int? sessionId,
    $25.Resource? resource,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  AddSessionResourceRequest._() : super();
  factory AddSessionResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$25.Resource>(2, _omitFieldNames ? '' : 'resource', subBuilder: $25.Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionResourceRequest clone() => AddSessionResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionResourceRequest copyWith(void Function(AddSessionResourceRequest) updates) => super.copyWith((message) => updates(message as AddSessionResourceRequest)) as AddSessionResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionResourceRequest create() => AddSessionResourceRequest._();
  AddSessionResourceRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionResourceRequest> createRepeated() => $pb.PbList<AddSessionResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionResourceRequest>(create);
  static AddSessionResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $25.Resource get resource => $_getN(1);
  @$pb.TagNumber(2)
  set resource($25.Resource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResource() => $_has(1);
  @$pb.TagNumber(2)
  void clearResource() => clearField(2);
  @$pb.TagNumber(2)
  $25.Resource ensureResource() => $_ensure(1);
}

class AddSessionResourceResponse extends $pb.GeneratedMessage {
  factory AddSessionResourceResponse({
    $25.Resource? resource,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  AddSessionResourceResponse._() : super();
  factory AddSessionResourceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionResourceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionResourceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$25.Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: $25.Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionResourceResponse clone() => AddSessionResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionResourceResponse copyWith(void Function(AddSessionResourceResponse) updates) => super.copyWith((message) => updates(message as AddSessionResourceResponse)) as AddSessionResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionResourceResponse create() => AddSessionResourceResponse._();
  AddSessionResourceResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionResourceResponse> createRepeated() => $pb.PbList<AddSessionResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionResourceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionResourceResponse>(create);
  static AddSessionResourceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $25.Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource($25.Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  $25.Resource ensureResource() => $_ensure(0);
}

class ListSessionResourcesRequest extends $pb.GeneratedMessage {
  factory ListSessionResourcesRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  ListSessionResourcesRequest._() : super();
  factory ListSessionResourcesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionResourcesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionResourcesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionResourcesRequest clone() => ListSessionResourcesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionResourcesRequest copyWith(void Function(ListSessionResourcesRequest) updates) => super.copyWith((message) => updates(message as ListSessionResourcesRequest)) as ListSessionResourcesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionResourcesRequest create() => ListSessionResourcesRequest._();
  ListSessionResourcesRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionResourcesRequest> createRepeated() => $pb.PbList<ListSessionResourcesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionResourcesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionResourcesRequest>(create);
  static ListSessionResourcesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class ListSessionResourcesResponse extends $pb.GeneratedMessage {
  factory ListSessionResourcesResponse({
    $core.Iterable<$25.Resource>? resources,
  }) {
    final $result = create();
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    return $result;
  }
  ListSessionResourcesResponse._() : super();
  factory ListSessionResourcesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionResourcesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionResourcesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$25.Resource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $25.Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionResourcesResponse clone() => ListSessionResourcesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionResourcesResponse copyWith(void Function(ListSessionResourcesResponse) updates) => super.copyWith((message) => updates(message as ListSessionResourcesResponse)) as ListSessionResourcesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionResourcesResponse create() => ListSessionResourcesResponse._();
  ListSessionResourcesResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionResourcesResponse> createRepeated() => $pb.PbList<ListSessionResourcesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionResourcesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionResourcesResponse>(create);
  static ListSessionResourcesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$25.Resource> get resources => $_getList(0);
}

class DeleteSessionResourceRequest extends $pb.GeneratedMessage {
  factory DeleteSessionResourceRequest({
    $core.int? sessionId,
    $core.int? resourceId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (resourceId != null) {
      $result.resourceId = resourceId;
    }
    return $result;
  }
  DeleteSessionResourceRequest._() : super();
  factory DeleteSessionResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'resourceId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionResourceRequest clone() => DeleteSessionResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionResourceRequest copyWith(void Function(DeleteSessionResourceRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionResourceRequest)) as DeleteSessionResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionResourceRequest create() => DeleteSessionResourceRequest._();
  DeleteSessionResourceRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionResourceRequest> createRepeated() => $pb.PbList<DeleteSessionResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionResourceRequest>(create);
  static DeleteSessionResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get resourceId => $_getIZ(1);
  @$pb.TagNumber(2)
  set resourceId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceId() => clearField(2);
}

class DeleteSessionResourceResponse extends $pb.GeneratedMessage {
  factory DeleteSessionResourceResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionResourceResponse._() : super();
  factory DeleteSessionResourceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionResourceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionResourceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionResourceResponse clone() => DeleteSessionResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionResourceResponse copyWith(void Function(DeleteSessionResourceResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionResourceResponse)) as DeleteSessionResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionResourceResponse create() => DeleteSessionResourceResponse._();
  DeleteSessionResourceResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionResourceResponse> createRepeated() => $pb.PbList<DeleteSessionResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionResourceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionResourceResponse>(create);
  static DeleteSessionResourceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

/// Ratings
class AddSessionFeedbackRequest extends $pb.GeneratedMessage {
  factory AddSessionFeedbackRequest({
    $31.SessionFeedback? feedback,
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
    ..aOM<$31.SessionFeedback>(1, _omitFieldNames ? '' : 'feedback', subBuilder: $31.SessionFeedback.create)
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
  $31.SessionFeedback get feedback => $_getN(0);
  @$pb.TagNumber(1)
  set feedback($31.SessionFeedback v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeedback() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeedback() => clearField(1);
  @$pb.TagNumber(1)
  $31.SessionFeedback ensureFeedback() => $_ensure(0);
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
    $core.Iterable<$31.SessionFeedback>? feedbacks,
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
    ..pc<$31.SessionFeedback>(1, _omitFieldNames ? '' : 'feedbacks', $pb.PbFieldType.PM, subBuilder: $31.SessionFeedback.create)
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
  $core.List<$31.SessionFeedback> get feedbacks => $_getList(0);
}

/// Related Sessions
class ListRelatedSessionsRequest extends $pb.GeneratedMessage {
  factory ListRelatedSessionsRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  ListRelatedSessionsRequest._() : super();
  factory ListRelatedSessionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRelatedSessionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRelatedSessionsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRelatedSessionsRequest clone() => ListRelatedSessionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRelatedSessionsRequest copyWith(void Function(ListRelatedSessionsRequest) updates) => super.copyWith((message) => updates(message as ListRelatedSessionsRequest)) as ListRelatedSessionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRelatedSessionsRequest create() => ListRelatedSessionsRequest._();
  ListRelatedSessionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListRelatedSessionsRequest> createRepeated() => $pb.PbList<ListRelatedSessionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRelatedSessionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRelatedSessionsRequest>(create);
  static ListRelatedSessionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class ListRelatedSessionsResponse extends $pb.GeneratedMessage {
  factory ListRelatedSessionsResponse({
    $core.Iterable<$31.Session>? sessions,
  }) {
    final $result = create();
    if (sessions != null) {
      $result.sessions.addAll(sessions);
    }
    return $result;
  }
  ListRelatedSessionsResponse._() : super();
  factory ListRelatedSessionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRelatedSessionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRelatedSessionsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$31.Session>(1, _omitFieldNames ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: $31.Session.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRelatedSessionsResponse clone() => ListRelatedSessionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRelatedSessionsResponse copyWith(void Function(ListRelatedSessionsResponse) updates) => super.copyWith((message) => updates(message as ListRelatedSessionsResponse)) as ListRelatedSessionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRelatedSessionsResponse create() => ListRelatedSessionsResponse._();
  ListRelatedSessionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListRelatedSessionsResponse> createRepeated() => $pb.PbList<ListRelatedSessionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRelatedSessionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRelatedSessionsResponse>(create);
  static ListRelatedSessionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.Session> get sessions => $_getList(0);
}

class AddRelatedSessionRequest extends $pb.GeneratedMessage {
  factory AddRelatedSessionRequest({
    $core.int? sessionId,
    $core.int? relatedSessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (relatedSessionId != null) {
      $result.relatedSessionId = relatedSessionId;
    }
    return $result;
  }
  AddRelatedSessionRequest._() : super();
  factory AddRelatedSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRelatedSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddRelatedSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'relatedSessionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRelatedSessionRequest clone() => AddRelatedSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRelatedSessionRequest copyWith(void Function(AddRelatedSessionRequest) updates) => super.copyWith((message) => updates(message as AddRelatedSessionRequest)) as AddRelatedSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddRelatedSessionRequest create() => AddRelatedSessionRequest._();
  AddRelatedSessionRequest createEmptyInstance() => create();
  static $pb.PbList<AddRelatedSessionRequest> createRepeated() => $pb.PbList<AddRelatedSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static AddRelatedSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRelatedSessionRequest>(create);
  static AddRelatedSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get relatedSessionId => $_getIZ(1);
  @$pb.TagNumber(2)
  set relatedSessionId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRelatedSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRelatedSessionId() => clearField(2);
}

class AddRelatedSessionResponse extends $pb.GeneratedMessage {
  factory AddRelatedSessionResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  AddRelatedSessionResponse._() : super();
  factory AddRelatedSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRelatedSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddRelatedSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRelatedSessionResponse clone() => AddRelatedSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRelatedSessionResponse copyWith(void Function(AddRelatedSessionResponse) updates) => super.copyWith((message) => updates(message as AddRelatedSessionResponse)) as AddRelatedSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddRelatedSessionResponse create() => AddRelatedSessionResponse._();
  AddRelatedSessionResponse createEmptyInstance() => create();
  static $pb.PbList<AddRelatedSessionResponse> createRepeated() => $pb.PbList<AddRelatedSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static AddRelatedSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRelatedSessionResponse>(create);
  static AddRelatedSessionResponse? _defaultInstance;

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
