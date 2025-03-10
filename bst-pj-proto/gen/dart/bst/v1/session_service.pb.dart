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

import '../../google/protobuf/timestamp.pb.dart' as $33;
import 'content.pb.dart' as $31;
import 'location.pb.dart' as $35;
import 'session.pb.dart' as $37;
import 'session.pbenum.dart' as $37;

/// Session Management
class CreateSessionRequest extends $pb.GeneratedMessage {
  factory CreateSessionRequest({
    $core.String? title,
    $core.String? description,
    $33.Timestamp? eventDate,
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
    ..aOM<$33.Timestamp>(3, _omitFieldNames ? '' : 'eventDate', subBuilder: $33.Timestamp.create)
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
  $33.Timestamp get eventDate => $_getN(2);
  @$pb.TagNumber(3)
  set eventDate($33.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventDate() => clearField(3);
  @$pb.TagNumber(3)
  $33.Timestamp ensureEventDate() => $_ensure(2);
}

class CreateSessionResponse extends $pb.GeneratedMessage {
  factory CreateSessionResponse({
    $37.Session? session,
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
    ..aOM<$37.Session>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.Session.create)
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
  $37.Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.Session ensureSession() => $_ensure(0);
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
    $37.Session? session,
    $37.SessionDetail? detail,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (detail != null) {
      $result.detail = detail;
    }
    return $result;
  }
  GetSessionResponse._() : super();
  factory GetSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Session>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.Session.create)
    ..aOM<$37.SessionDetail>(2, _omitFieldNames ? '' : 'detail', subBuilder: $37.SessionDetail.create)
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
  $37.Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.Session ensureSession() => $_ensure(0);

  @$pb.TagNumber(2)
  $37.SessionDetail get detail => $_getN(1);
  @$pb.TagNumber(2)
  set detail($37.SessionDetail v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetail() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetail() => clearField(2);
  @$pb.TagNumber(2)
  $37.SessionDetail ensureDetail() => $_ensure(1);
}

class UpdateSessionRequest extends $pb.GeneratedMessage {
  factory UpdateSessionRequest({
    $core.String? title,
    $core.String? description,
    $33.Timestamp? eventDate,
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
  UpdateSessionRequest._() : super();
  factory UpdateSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOM<$33.Timestamp>(3, _omitFieldNames ? '' : 'eventDate', subBuilder: $33.Timestamp.create)
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
  $33.Timestamp get eventDate => $_getN(2);
  @$pb.TagNumber(3)
  set eventDate($33.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventDate() => clearField(3);
  @$pb.TagNumber(3)
  $33.Timestamp ensureEventDate() => $_ensure(2);
}

class UpdateSessionResponse extends $pb.GeneratedMessage {
  factory UpdateSessionResponse({
    $37.Session? session,
    $37.SessionDetail? detail,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (detail != null) {
      $result.detail = detail;
    }
    return $result;
  }
  UpdateSessionResponse._() : super();
  factory UpdateSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Session>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.Session.create)
    ..aOM<$37.SessionDetail>(2, _omitFieldNames ? '' : 'detail', subBuilder: $37.SessionDetail.create)
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
  $37.Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.Session ensureSession() => $_ensure(0);

  @$pb.TagNumber(2)
  $37.SessionDetail get detail => $_getN(1);
  @$pb.TagNumber(2)
  set detail($37.SessionDetail v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetail() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetail() => clearField(2);
  @$pb.TagNumber(2)
  $37.SessionDetail ensureDetail() => $_ensure(1);
}

class UpdateSessionStudioRequest extends $pb.GeneratedMessage {
  factory UpdateSessionStudioRequest({
    $core.int? studioId,
    $core.int? studioRoomId,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    if (studioRoomId != null) {
      $result.studioRoomId = studioRoomId;
    }
    return $result;
  }
  UpdateSessionStudioRequest._() : super();
  factory UpdateSessionStudioRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionStudioRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionStudioRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'studioRoomId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionStudioRequest clone() => UpdateSessionStudioRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionStudioRequest copyWith(void Function(UpdateSessionStudioRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionStudioRequest)) as UpdateSessionStudioRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionStudioRequest create() => UpdateSessionStudioRequest._();
  UpdateSessionStudioRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionStudioRequest> createRepeated() => $pb.PbList<UpdateSessionStudioRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionStudioRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionStudioRequest>(create);
  static UpdateSessionStudioRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get studioRoomId => $_getIZ(1);
  @$pb.TagNumber(2)
  set studioRoomId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudioRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudioRoomId() => clearField(2);
}

class UpdateSessionStudioResponse extends $pb.GeneratedMessage {
  factory UpdateSessionStudioResponse({
    $37.Session? session,
    $37.SessionDetail? detail,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (detail != null) {
      $result.detail = detail;
    }
    return $result;
  }
  UpdateSessionStudioResponse._() : super();
  factory UpdateSessionStudioResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionStudioResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionStudioResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Session>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.Session.create)
    ..aOM<$37.SessionDetail>(2, _omitFieldNames ? '' : 'detail', subBuilder: $37.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionStudioResponse clone() => UpdateSessionStudioResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionStudioResponse copyWith(void Function(UpdateSessionStudioResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionStudioResponse)) as UpdateSessionStudioResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionStudioResponse create() => UpdateSessionStudioResponse._();
  UpdateSessionStudioResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionStudioResponse> createRepeated() => $pb.PbList<UpdateSessionStudioResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionStudioResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionStudioResponse>(create);
  static UpdateSessionStudioResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.Session ensureSession() => $_ensure(0);

  @$pb.TagNumber(2)
  $37.SessionDetail get detail => $_getN(1);
  @$pb.TagNumber(2)
  set detail($37.SessionDetail v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetail() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetail() => clearField(2);
  @$pb.TagNumber(2)
  $37.SessionDetail ensureDetail() => $_ensure(1);
}

class UpdateSessionStatusRequest extends $pb.GeneratedMessage {
  factory UpdateSessionStatusRequest({
    $37.SessionStatus? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateSessionStatusRequest._() : super();
  factory UpdateSessionStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..e<$37.SessionStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $37.SessionStatus.SESSION_STATUS_UNSPECIFIED, valueOf: $37.SessionStatus.valueOf, enumValues: $37.SessionStatus.values)
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
  $37.SessionStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($37.SessionStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UpdateSessionStatusResponse extends $pb.GeneratedMessage {
  factory UpdateSessionStatusResponse({
    $37.Session? session,
    $37.SessionDetail? detail,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (detail != null) {
      $result.detail = detail;
    }
    return $result;
  }
  UpdateSessionStatusResponse._() : super();
  factory UpdateSessionStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Session>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.Session.create)
    ..aOM<$37.SessionDetail>(2, _omitFieldNames ? '' : 'detail', subBuilder: $37.SessionDetail.create)
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
  $37.Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.Session ensureSession() => $_ensure(0);

  @$pb.TagNumber(2)
  $37.SessionDetail get detail => $_getN(1);
  @$pb.TagNumber(2)
  set detail($37.SessionDetail v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetail() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetail() => clearField(2);
  @$pb.TagNumber(2)
  $37.SessionDetail ensureDetail() => $_ensure(1);
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
    $37.Session? session,
    $37.SessionDetail? detail,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (detail != null) {
      $result.detail = detail;
    }
    return $result;
  }
  CancelSessionResponse._() : super();
  factory CancelSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelSessionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.Session>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.Session.create)
    ..aOM<$37.SessionDetail>(2, _omitFieldNames ? '' : 'detail', subBuilder: $37.SessionDetail.create)
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
  $37.Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.Session ensureSession() => $_ensure(0);

  @$pb.TagNumber(2)
  $37.SessionDetail get detail => $_getN(1);
  @$pb.TagNumber(2)
  set detail($37.SessionDetail v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetail() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetail() => clearField(2);
  @$pb.TagNumber(2)
  $37.SessionDetail ensureDetail() => $_ensure(1);
}

class DuplicateSessionRequest extends $pb.GeneratedMessage {
  factory DuplicateSessionRequest({
    $core.int? sessionId,
    $33.Timestamp? newEventDate,
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
    ..aOM<$33.Timestamp>(2, _omitFieldNames ? '' : 'newEventDate', subBuilder: $33.Timestamp.create)
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
  $33.Timestamp get newEventDate => $_getN(1);
  @$pb.TagNumber(2)
  set newEventDate($33.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewEventDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewEventDate() => clearField(2);
  @$pb.TagNumber(2)
  $33.Timestamp ensureNewEventDate() => $_ensure(1);
}

class DuplicateSessionResponse extends $pb.GeneratedMessage {
  factory DuplicateSessionResponse({
    $37.SessionDetail? session,
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
    ..aOM<$37.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.SessionDetail.create)
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
  $37.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.SessionDetail ensureSession() => $_ensure(0);
}

/// Schedule & Location
class UpdateSessionEntryStartDateRequest extends $pb.GeneratedMessage {
  factory UpdateSessionEntryStartDateRequest({
    $core.int? sessionId,
    $33.Timestamp? date,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  UpdateSessionEntryStartDateRequest._() : super();
  factory UpdateSessionEntryStartDateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionEntryStartDateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionEntryStartDateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$33.Timestamp>(2, _omitFieldNames ? '' : 'date', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryStartDateRequest clone() => UpdateSessionEntryStartDateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryStartDateRequest copyWith(void Function(UpdateSessionEntryStartDateRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionEntryStartDateRequest)) as UpdateSessionEntryStartDateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryStartDateRequest create() => UpdateSessionEntryStartDateRequest._();
  UpdateSessionEntryStartDateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionEntryStartDateRequest> createRepeated() => $pb.PbList<UpdateSessionEntryStartDateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryStartDateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionEntryStartDateRequest>(create);
  static UpdateSessionEntryStartDateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $33.Timestamp get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($33.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $33.Timestamp ensureDate() => $_ensure(1);
}

class UpdateSessionEntryStartDateResponse extends $pb.GeneratedMessage {
  factory UpdateSessionEntryStartDateResponse({
    $37.SessionDetail? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  UpdateSessionEntryStartDateResponse._() : super();
  factory UpdateSessionEntryStartDateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionEntryStartDateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionEntryStartDateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryStartDateResponse clone() => UpdateSessionEntryStartDateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryStartDateResponse copyWith(void Function(UpdateSessionEntryStartDateResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionEntryStartDateResponse)) as UpdateSessionEntryStartDateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryStartDateResponse create() => UpdateSessionEntryStartDateResponse._();
  UpdateSessionEntryStartDateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionEntryStartDateResponse> createRepeated() => $pb.PbList<UpdateSessionEntryStartDateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryStartDateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionEntryStartDateResponse>(create);
  static UpdateSessionEntryStartDateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.SessionDetail ensureSession() => $_ensure(0);
}

class UpdateSessionEntryEndDateRequest extends $pb.GeneratedMessage {
  factory UpdateSessionEntryEndDateRequest({
    $core.int? sessionId,
    $33.Timestamp? date,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  UpdateSessionEntryEndDateRequest._() : super();
  factory UpdateSessionEntryEndDateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionEntryEndDateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionEntryEndDateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..aOM<$33.Timestamp>(2, _omitFieldNames ? '' : 'date', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryEndDateRequest clone() => UpdateSessionEntryEndDateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryEndDateRequest copyWith(void Function(UpdateSessionEntryEndDateRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionEntryEndDateRequest)) as UpdateSessionEntryEndDateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryEndDateRequest create() => UpdateSessionEntryEndDateRequest._();
  UpdateSessionEntryEndDateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionEntryEndDateRequest> createRepeated() => $pb.PbList<UpdateSessionEntryEndDateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryEndDateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionEntryEndDateRequest>(create);
  static UpdateSessionEntryEndDateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $33.Timestamp get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($33.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $33.Timestamp ensureDate() => $_ensure(1);
}

class UpdateSessionEntryEndDateResponse extends $pb.GeneratedMessage {
  factory UpdateSessionEntryEndDateResponse({
    $37.SessionDetail? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  UpdateSessionEntryEndDateResponse._() : super();
  factory UpdateSessionEntryEndDateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionEntryEndDateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionEntryEndDateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$37.SessionDetail>(1, _omitFieldNames ? '' : 'session', subBuilder: $37.SessionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryEndDateResponse clone() => UpdateSessionEntryEndDateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionEntryEndDateResponse copyWith(void Function(UpdateSessionEntryEndDateResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionEntryEndDateResponse)) as UpdateSessionEntryEndDateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryEndDateResponse create() => UpdateSessionEntryEndDateResponse._();
  UpdateSessionEntryEndDateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionEntryEndDateResponse> createRepeated() => $pb.PbList<UpdateSessionEntryEndDateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionEntryEndDateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionEntryEndDateResponse>(create);
  static UpdateSessionEntryEndDateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $37.SessionDetail get session => $_getN(0);
  @$pb.TagNumber(1)
  set session($37.SessionDetail v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  $37.SessionDetail ensureSession() => $_ensure(0);
}

class UpdateSessionScheduleRequest extends $pb.GeneratedMessage {
  factory UpdateSessionScheduleRequest({
    $core.int? sessionId,
    $37.Timetable? timetable,
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
    ..aOM<$37.Timetable>(2, _omitFieldNames ? '' : 'timetable', subBuilder: $37.Timetable.create)
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
  $37.Timetable get timetable => $_getN(1);
  @$pb.TagNumber(2)
  set timetable($37.Timetable v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimetable() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimetable() => clearField(2);
  @$pb.TagNumber(2)
  $37.Timetable ensureTimetable() => $_ensure(1);
}

class UpdateSessionScheduleResponse extends $pb.GeneratedMessage {
  factory UpdateSessionScheduleResponse({
    $37.Timetable? timetable,
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
    ..aOM<$37.Timetable>(1, _omitFieldNames ? '' : 'timetable', subBuilder: $37.Timetable.create)
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
  $37.Timetable get timetable => $_getN(0);
  @$pb.TagNumber(1)
  set timetable($37.Timetable v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimetable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimetable() => clearField(1);
  @$pb.TagNumber(1)
  $37.Timetable ensureTimetable() => $_ensure(0);
}

class UpdateSessionLocationRequest extends $pb.GeneratedMessage {
  factory UpdateSessionLocationRequest({
    $core.int? sessionId,
    $35.Location? location,
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
    ..aOM<$35.Location>(2, _omitFieldNames ? '' : 'location', subBuilder: $35.Location.create)
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
  $35.Location get location => $_getN(1);
  @$pb.TagNumber(2)
  set location($35.Location v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);
  @$pb.TagNumber(2)
  $35.Location ensureLocation() => $_ensure(1);
}

class UpdateSessionLocationResponse extends $pb.GeneratedMessage {
  factory UpdateSessionLocationResponse({
    $35.Location? location,
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
    ..aOM<$35.Location>(1, _omitFieldNames ? '' : 'location', subBuilder: $35.Location.create)
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
  $35.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($35.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $35.Location ensureLocation() => $_ensure(0);
}

/// Song Resources
class AddSessionSongResourceRequest extends $pb.GeneratedMessage {
  factory AddSessionSongResourceRequest({
    $core.int? sessionId,
    $core.int? songId,
    $31.Resource? resource,
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
    ..aOM<$31.Resource>(3, _omitFieldNames ? '' : 'resource', subBuilder: $31.Resource.create)
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
  $31.Resource get resource => $_getN(2);
  @$pb.TagNumber(3)
  set resource($31.Resource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
  @$pb.TagNumber(3)
  $31.Resource ensureResource() => $_ensure(2);
}

class AddSessionSongResourceResponse extends $pb.GeneratedMessage {
  factory AddSessionSongResourceResponse({
    $31.Resource? resource,
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
    ..aOM<$31.Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: $31.Resource.create)
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
  $31.Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource($31.Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  $31.Resource ensureResource() => $_ensure(0);
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
    $core.Iterable<$31.Resource>? resources,
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
    ..pc<$31.Resource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $31.Resource.create)
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
  $core.List<$31.Resource> get resources => $_getList(0);

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

/// Communication
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

/// Session Resources
class AddSessionResourceRequest extends $pb.GeneratedMessage {
  factory AddSessionResourceRequest({
    $core.int? sessionId,
    $31.Resource? resource,
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
    ..aOM<$31.Resource>(2, _omitFieldNames ? '' : 'resource', subBuilder: $31.Resource.create)
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
  $31.Resource get resource => $_getN(1);
  @$pb.TagNumber(2)
  set resource($31.Resource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResource() => $_has(1);
  @$pb.TagNumber(2)
  void clearResource() => clearField(2);
  @$pb.TagNumber(2)
  $31.Resource ensureResource() => $_ensure(1);
}

class AddSessionResourceResponse extends $pb.GeneratedMessage {
  factory AddSessionResourceResponse({
    $31.Resource? resource,
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
    ..aOM<$31.Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: $31.Resource.create)
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
  $31.Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource($31.Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  $31.Resource ensureResource() => $_ensure(0);
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
    $core.Iterable<$31.Resource>? resources,
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
    ..pc<$31.Resource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $31.Resource.create)
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
  $core.List<$31.Resource> get resources => $_getList(0);
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
    $core.Iterable<$37.Session>? sessions,
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
    ..pc<$37.Session>(1, _omitFieldNames ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: $37.Session.create)
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
  $core.List<$37.Session> get sessions => $_getList(0);
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
