//
//  Generated code. Do not modify.
//  source: bst/v1/session_participant_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session.pb.dart' as $36;
import 'session.pbenum.dart' as $36;

class ListSessionParticipantsRequest extends $pb.GeneratedMessage {
  factory ListSessionParticipantsRequest() => create();
  ListSessionParticipantsRequest._() : super();
  factory ListSessionParticipantsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionParticipantsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionParticipantsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
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
}

class ListSessionParticipantsResponse extends $pb.GeneratedMessage {
  factory ListSessionParticipantsResponse({
    $core.Iterable<$36.SessionParticipant>? participants,
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
    ..pc<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'participants', $pb.PbFieldType.PM, subBuilder: $36.SessionParticipant.create)
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
  $core.List<$36.SessionParticipant> get participants => $_getList(0);
}

class AddSessionParticipantRequest_SessionParticipantPart extends $pb.GeneratedMessage {
  factory AddSessionParticipantRequest_SessionParticipantPart({
    $core.int? sessionPartId,
    $core.bool? isPrimary,
  }) {
    final $result = create();
    if (sessionPartId != null) {
      $result.sessionPartId = sessionPartId;
    }
    if (isPrimary != null) {
      $result.isPrimary = isPrimary;
    }
    return $result;
  }
  AddSessionParticipantRequest_SessionParticipantPart._() : super();
  factory AddSessionParticipantRequest_SessionParticipantPart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionParticipantRequest_SessionParticipantPart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionParticipantRequest.SessionParticipantPart', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionPartId', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'isPrimary')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionParticipantRequest_SessionParticipantPart clone() => AddSessionParticipantRequest_SessionParticipantPart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionParticipantRequest_SessionParticipantPart copyWith(void Function(AddSessionParticipantRequest_SessionParticipantPart) updates) => super.copyWith((message) => updates(message as AddSessionParticipantRequest_SessionParticipantPart)) as AddSessionParticipantRequest_SessionParticipantPart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantRequest_SessionParticipantPart create() => AddSessionParticipantRequest_SessionParticipantPart._();
  AddSessionParticipantRequest_SessionParticipantPart createEmptyInstance() => create();
  static $pb.PbList<AddSessionParticipantRequest_SessionParticipantPart> createRepeated() => $pb.PbList<AddSessionParticipantRequest_SessionParticipantPart>();
  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantRequest_SessionParticipantPart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionParticipantRequest_SessionParticipantPart>(create);
  static AddSessionParticipantRequest_SessionParticipantPart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionPartId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionPartId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionPartId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isPrimary => $_getBF(1);
  @$pb.TagNumber(2)
  set isPrimary($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsPrimary() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsPrimary() => clearField(2);
}

class AddSessionParticipantRequest extends $pb.GeneratedMessage {
  factory AddSessionParticipantRequest({
    $core.int? userId,
    $core.Iterable<AddSessionParticipantRequest_SessionParticipantPart>? parts,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    return $result;
  }
  AddSessionParticipantRequest._() : super();
  factory AddSessionParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..pc<AddSessionParticipantRequest_SessionParticipantPart>(2, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: AddSessionParticipantRequest_SessionParticipantPart.create)
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
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  /// When it's empty, the participant is NOT player (organizer or observer)
  @$pb.TagNumber(2)
  $core.List<AddSessionParticipantRequest_SessionParticipantPart> get parts => $_getList(1);
}

class AddSessionParticipantResponse extends $pb.GeneratedMessage {
  factory AddSessionParticipantResponse({
    $36.SessionParticipant? sessionParticipant,
  }) {
    final $result = create();
    if (sessionParticipant != null) {
      $result.sessionParticipant = sessionParticipant;
    }
    return $result;
  }
  AddSessionParticipantResponse._() : super();
  factory AddSessionParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'sessionParticipant', protoName: 'sessionParticipant', subBuilder: $36.SessionParticipant.create)
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
  $36.SessionParticipant get sessionParticipant => $_getN(0);
  @$pb.TagNumber(1)
  set sessionParticipant($36.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionParticipant() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionParticipant ensureSessionParticipant() => $_ensure(0);
}

class UpdateSessionParticipantRequest extends $pb.GeneratedMessage {
  factory UpdateSessionParticipantRequest({
    $core.String? comment,
  }) {
    final $result = create();
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  UpdateSessionParticipantRequest._() : super();
  factory UpdateSessionParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'comment')
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
  $core.String get comment => $_getSZ(0);
  @$pb.TagNumber(1)
  set comment($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComment() => $_has(0);
  @$pb.TagNumber(1)
  void clearComment() => clearField(1);
}

class UpdateSessionParticipantResponse extends $pb.GeneratedMessage {
  factory UpdateSessionParticipantResponse({
    $36.SessionParticipant? sessionParticipant,
  }) {
    final $result = create();
    if (sessionParticipant != null) {
      $result.sessionParticipant = sessionParticipant;
    }
    return $result;
  }
  UpdateSessionParticipantResponse._() : super();
  factory UpdateSessionParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'sessionParticipant', protoName: 'sessionParticipant', subBuilder: $36.SessionParticipant.create)
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
  $36.SessionParticipant get sessionParticipant => $_getN(0);
  @$pb.TagNumber(1)
  set sessionParticipant($36.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionParticipant() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionParticipant ensureSessionParticipant() => $_ensure(0);
}

class SetSessionParticipantIsOrganizerRequest extends $pb.GeneratedMessage {
  factory SetSessionParticipantIsOrganizerRequest({
    $core.bool? isOrganizer,
  }) {
    final $result = create();
    if (isOrganizer != null) {
      $result.isOrganizer = isOrganizer;
    }
    return $result;
  }
  SetSessionParticipantIsOrganizerRequest._() : super();
  factory SetSessionParticipantIsOrganizerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSessionParticipantIsOrganizerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSessionParticipantIsOrganizerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOrganizer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSessionParticipantIsOrganizerRequest clone() => SetSessionParticipantIsOrganizerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSessionParticipantIsOrganizerRequest copyWith(void Function(SetSessionParticipantIsOrganizerRequest) updates) => super.copyWith((message) => updates(message as SetSessionParticipantIsOrganizerRequest)) as SetSessionParticipantIsOrganizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSessionParticipantIsOrganizerRequest create() => SetSessionParticipantIsOrganizerRequest._();
  SetSessionParticipantIsOrganizerRequest createEmptyInstance() => create();
  static $pb.PbList<SetSessionParticipantIsOrganizerRequest> createRepeated() => $pb.PbList<SetSessionParticipantIsOrganizerRequest>();
  @$core.pragma('dart2js:noInline')
  static SetSessionParticipantIsOrganizerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSessionParticipantIsOrganizerRequest>(create);
  static SetSessionParticipantIsOrganizerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOrganizer => $_getBF(0);
  @$pb.TagNumber(1)
  set isOrganizer($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOrganizer() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOrganizer() => clearField(1);
}

class SetSessionParticipantIsOrganizerResponse extends $pb.GeneratedMessage {
  factory SetSessionParticipantIsOrganizerResponse({
    $36.SessionParticipant? sessionParticipant,
  }) {
    final $result = create();
    if (sessionParticipant != null) {
      $result.sessionParticipant = sessionParticipant;
    }
    return $result;
  }
  SetSessionParticipantIsOrganizerResponse._() : super();
  factory SetSessionParticipantIsOrganizerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSessionParticipantIsOrganizerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetSessionParticipantIsOrganizerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'sessionParticipant', protoName: 'sessionParticipant', subBuilder: $36.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSessionParticipantIsOrganizerResponse clone() => SetSessionParticipantIsOrganizerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSessionParticipantIsOrganizerResponse copyWith(void Function(SetSessionParticipantIsOrganizerResponse) updates) => super.copyWith((message) => updates(message as SetSessionParticipantIsOrganizerResponse)) as SetSessionParticipantIsOrganizerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetSessionParticipantIsOrganizerResponse create() => SetSessionParticipantIsOrganizerResponse._();
  SetSessionParticipantIsOrganizerResponse createEmptyInstance() => create();
  static $pb.PbList<SetSessionParticipantIsOrganizerResponse> createRepeated() => $pb.PbList<SetSessionParticipantIsOrganizerResponse>();
  @$core.pragma('dart2js:noInline')
  static SetSessionParticipantIsOrganizerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSessionParticipantIsOrganizerResponse>(create);
  static SetSessionParticipantIsOrganizerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionParticipant get sessionParticipant => $_getN(0);
  @$pb.TagNumber(1)
  set sessionParticipant($36.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionParticipant() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionParticipant ensureSessionParticipant() => $_ensure(0);
}

class AddSessionParticipantPartsRequest extends $pb.GeneratedMessage {
  factory AddSessionParticipantPartsRequest({
    $core.int? sessionPartId,
  }) {
    final $result = create();
    if (sessionPartId != null) {
      $result.sessionPartId = sessionPartId;
    }
    return $result;
  }
  AddSessionParticipantPartsRequest._() : super();
  factory AddSessionParticipantPartsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionParticipantPartsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionParticipantPartsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionPartId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionParticipantPartsRequest clone() => AddSessionParticipantPartsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionParticipantPartsRequest copyWith(void Function(AddSessionParticipantPartsRequest) updates) => super.copyWith((message) => updates(message as AddSessionParticipantPartsRequest)) as AddSessionParticipantPartsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantPartsRequest create() => AddSessionParticipantPartsRequest._();
  AddSessionParticipantPartsRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionParticipantPartsRequest> createRepeated() => $pb.PbList<AddSessionParticipantPartsRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantPartsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionParticipantPartsRequest>(create);
  static AddSessionParticipantPartsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionPartId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionPartId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionPartId() => clearField(1);
}

class AddSessionParticipantPartsResponse extends $pb.GeneratedMessage {
  factory AddSessionParticipantPartsResponse({
    $36.SessionParticipant? sessionParticipant,
  }) {
    final $result = create();
    if (sessionParticipant != null) {
      $result.sessionParticipant = sessionParticipant;
    }
    return $result;
  }
  AddSessionParticipantPartsResponse._() : super();
  factory AddSessionParticipantPartsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionParticipantPartsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionParticipantPartsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'sessionParticipant', protoName: 'sessionParticipant', subBuilder: $36.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionParticipantPartsResponse clone() => AddSessionParticipantPartsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionParticipantPartsResponse copyWith(void Function(AddSessionParticipantPartsResponse) updates) => super.copyWith((message) => updates(message as AddSessionParticipantPartsResponse)) as AddSessionParticipantPartsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantPartsResponse create() => AddSessionParticipantPartsResponse._();
  AddSessionParticipantPartsResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionParticipantPartsResponse> createRepeated() => $pb.PbList<AddSessionParticipantPartsResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionParticipantPartsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionParticipantPartsResponse>(create);
  static AddSessionParticipantPartsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionParticipant get sessionParticipant => $_getN(0);
  @$pb.TagNumber(1)
  set sessionParticipant($36.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionParticipant() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionParticipant ensureSessionParticipant() => $_ensure(0);
}

class UpdateSessionParticipantStatusRequest extends $pb.GeneratedMessage {
  factory UpdateSessionParticipantStatusRequest({
    $36.SessionParticipantStatus? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateSessionParticipantStatusRequest._() : super();
  factory UpdateSessionParticipantStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionParticipantStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionParticipantStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..e<$36.SessionParticipantStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $36.SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_UNSPECIFIED, valueOf: $36.SessionParticipantStatus.valueOf, enumValues: $36.SessionParticipantStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantStatusRequest clone() => UpdateSessionParticipantStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantStatusRequest copyWith(void Function(UpdateSessionParticipantStatusRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionParticipantStatusRequest)) as UpdateSessionParticipantStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantStatusRequest create() => UpdateSessionParticipantStatusRequest._();
  UpdateSessionParticipantStatusRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionParticipantStatusRequest> createRepeated() => $pb.PbList<UpdateSessionParticipantStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionParticipantStatusRequest>(create);
  static UpdateSessionParticipantStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionParticipantStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($36.SessionParticipantStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class UpdateSessionParticipantStatusResponse extends $pb.GeneratedMessage {
  factory UpdateSessionParticipantStatusResponse({
    $36.SessionParticipant? sessionParticipant,
  }) {
    final $result = create();
    if (sessionParticipant != null) {
      $result.sessionParticipant = sessionParticipant;
    }
    return $result;
  }
  UpdateSessionParticipantStatusResponse._() : super();
  factory UpdateSessionParticipantStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionParticipantStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSessionParticipantStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'sessionParticipant', protoName: 'sessionParticipant', subBuilder: $36.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantStatusResponse clone() => UpdateSessionParticipantStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionParticipantStatusResponse copyWith(void Function(UpdateSessionParticipantStatusResponse) updates) => super.copyWith((message) => updates(message as UpdateSessionParticipantStatusResponse)) as UpdateSessionParticipantStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantStatusResponse create() => UpdateSessionParticipantStatusResponse._();
  UpdateSessionParticipantStatusResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionParticipantStatusResponse> createRepeated() => $pb.PbList<UpdateSessionParticipantStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionParticipantStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionParticipantStatusResponse>(create);
  static UpdateSessionParticipantStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionParticipant get sessionParticipant => $_getN(0);
  @$pb.TagNumber(1)
  set sessionParticipant($36.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionParticipant() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionParticipant ensureSessionParticipant() => $_ensure(0);
}

class DeleteSessionParticipantRequest extends $pb.GeneratedMessage {
  factory DeleteSessionParticipantRequest({
    $core.int? participantId,
  }) {
    final $result = create();
    if (participantId != null) {
      $result.participantId = participantId;
    }
    return $result;
  }
  DeleteSessionParticipantRequest._() : super();
  factory DeleteSessionParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'participantId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionParticipantRequest clone() => DeleteSessionParticipantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionParticipantRequest copyWith(void Function(DeleteSessionParticipantRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionParticipantRequest)) as DeleteSessionParticipantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionParticipantRequest create() => DeleteSessionParticipantRequest._();
  DeleteSessionParticipantRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionParticipantRequest> createRepeated() => $pb.PbList<DeleteSessionParticipantRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionParticipantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionParticipantRequest>(create);
  static DeleteSessionParticipantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get participantId => $_getIZ(0);
  @$pb.TagNumber(1)
  set participantId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParticipantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParticipantId() => clearField(1);
}

class DeleteSessionParticipantResponse extends $pb.GeneratedMessage {
  factory DeleteSessionParticipantResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionParticipantResponse._() : super();
  factory DeleteSessionParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionParticipantResponse clone() => DeleteSessionParticipantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionParticipantResponse copyWith(void Function(DeleteSessionParticipantResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionParticipantResponse)) as DeleteSessionParticipantResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionParticipantResponse create() => DeleteSessionParticipantResponse._();
  DeleteSessionParticipantResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionParticipantResponse> createRepeated() => $pb.PbList<DeleteSessionParticipantResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionParticipantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionParticipantResponse>(create);
  static DeleteSessionParticipantResponse? _defaultInstance;

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
