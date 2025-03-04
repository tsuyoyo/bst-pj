//
//  Generated code. Do not modify.
//  source: bst/v1/party_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $33;
import 'party.pb.dart' as $36;
import 'party.pbenum.dart' as $36;

class CreatePartyRequest extends $pb.GeneratedMessage {
  factory CreatePartyRequest({
    $core.int? locationId,
    $core.int? fee,
    $33.Timestamp? startAt,
    $33.Timestamp? endAt,
  }) {
    final $result = create();
    if (locationId != null) {
      $result.locationId = locationId;
    }
    if (fee != null) {
      $result.fee = fee;
    }
    if (startAt != null) {
      $result.startAt = startAt;
    }
    if (endAt != null) {
      $result.endAt = endAt;
    }
    return $result;
  }
  CreatePartyRequest._() : super();
  factory CreatePartyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePartyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePartyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3, protoName: 'locationId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.O3)
    ..aOM<$33.Timestamp>(3, _omitFieldNames ? '' : 'startAt', protoName: 'startAt', subBuilder: $33.Timestamp.create)
    ..aOM<$33.Timestamp>(4, _omitFieldNames ? '' : 'endAt', protoName: 'endAt', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePartyRequest clone() => CreatePartyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePartyRequest copyWith(void Function(CreatePartyRequest) updates) => super.copyWith((message) => updates(message as CreatePartyRequest)) as CreatePartyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePartyRequest create() => CreatePartyRequest._();
  CreatePartyRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePartyRequest> createRepeated() => $pb.PbList<CreatePartyRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePartyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePartyRequest>(create);
  static CreatePartyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get locationId => $_getIZ(0);
  @$pb.TagNumber(1)
  set locationId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get fee => $_getIZ(1);
  @$pb.TagNumber(2)
  set fee($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearFee() => clearField(2);

  @$pb.TagNumber(3)
  $33.Timestamp get startAt => $_getN(2);
  @$pb.TagNumber(3)
  set startAt($33.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartAt() => clearField(3);
  @$pb.TagNumber(3)
  $33.Timestamp ensureStartAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $33.Timestamp get endAt => $_getN(3);
  @$pb.TagNumber(4)
  set endAt($33.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndAt() => clearField(4);
  @$pb.TagNumber(4)
  $33.Timestamp ensureEndAt() => $_ensure(3);
}

class CreatePartyResponse extends $pb.GeneratedMessage {
  factory CreatePartyResponse({
    $36.Party? party,
  }) {
    final $result = create();
    if (party != null) {
      $result.party = party;
    }
    return $result;
  }
  CreatePartyResponse._() : super();
  factory CreatePartyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePartyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePartyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.Party>(1, _omitFieldNames ? '' : 'party', subBuilder: $36.Party.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePartyResponse clone() => CreatePartyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePartyResponse copyWith(void Function(CreatePartyResponse) updates) => super.copyWith((message) => updates(message as CreatePartyResponse)) as CreatePartyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePartyResponse create() => CreatePartyResponse._();
  CreatePartyResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePartyResponse> createRepeated() => $pb.PbList<CreatePartyResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePartyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePartyResponse>(create);
  static CreatePartyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.Party get party => $_getN(0);
  @$pb.TagNumber(1)
  set party($36.Party v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParty() => $_has(0);
  @$pb.TagNumber(1)
  void clearParty() => clearField(1);
  @$pb.TagNumber(1)
  $36.Party ensureParty() => $_ensure(0);
}

class GetPartyRequest extends $pb.GeneratedMessage {
  factory GetPartyRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  GetPartyRequest._() : super();
  factory GetPartyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPartyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPartyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3, protoName: 'sessionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPartyRequest clone() => GetPartyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPartyRequest copyWith(void Function(GetPartyRequest) updates) => super.copyWith((message) => updates(message as GetPartyRequest)) as GetPartyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPartyRequest create() => GetPartyRequest._();
  GetPartyRequest createEmptyInstance() => create();
  static $pb.PbList<GetPartyRequest> createRepeated() => $pb.PbList<GetPartyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPartyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPartyRequest>(create);
  static GetPartyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class GetPartyResponse extends $pb.GeneratedMessage {
  factory GetPartyResponse({
    $36.Party? party,
  }) {
    final $result = create();
    if (party != null) {
      $result.party = party;
    }
    return $result;
  }
  GetPartyResponse._() : super();
  factory GetPartyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPartyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPartyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.Party>(1, _omitFieldNames ? '' : 'party', subBuilder: $36.Party.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPartyResponse clone() => GetPartyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPartyResponse copyWith(void Function(GetPartyResponse) updates) => super.copyWith((message) => updates(message as GetPartyResponse)) as GetPartyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPartyResponse create() => GetPartyResponse._();
  GetPartyResponse createEmptyInstance() => create();
  static $pb.PbList<GetPartyResponse> createRepeated() => $pb.PbList<GetPartyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPartyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPartyResponse>(create);
  static GetPartyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.Party get party => $_getN(0);
  @$pb.TagNumber(1)
  set party($36.Party v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParty() => $_has(0);
  @$pb.TagNumber(1)
  void clearParty() => clearField(1);
  @$pb.TagNumber(1)
  $36.Party ensureParty() => $_ensure(0);
}

class UpdatePartyRequest extends $pb.GeneratedMessage {
  factory UpdatePartyRequest({
    $core.int? locationId,
    $core.int? fee,
    $33.Timestamp? startAt,
    $33.Timestamp? endAt,
  }) {
    final $result = create();
    if (locationId != null) {
      $result.locationId = locationId;
    }
    if (fee != null) {
      $result.fee = fee;
    }
    if (startAt != null) {
      $result.startAt = startAt;
    }
    if (endAt != null) {
      $result.endAt = endAt;
    }
    return $result;
  }
  UpdatePartyRequest._() : super();
  factory UpdatePartyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePartyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePartyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3, protoName: 'locationId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.O3)
    ..aOM<$33.Timestamp>(3, _omitFieldNames ? '' : 'startAt', protoName: 'startAt', subBuilder: $33.Timestamp.create)
    ..aOM<$33.Timestamp>(4, _omitFieldNames ? '' : 'endAt', protoName: 'endAt', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePartyRequest clone() => UpdatePartyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePartyRequest copyWith(void Function(UpdatePartyRequest) updates) => super.copyWith((message) => updates(message as UpdatePartyRequest)) as UpdatePartyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePartyRequest create() => UpdatePartyRequest._();
  UpdatePartyRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePartyRequest> createRepeated() => $pb.PbList<UpdatePartyRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePartyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePartyRequest>(create);
  static UpdatePartyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get locationId => $_getIZ(0);
  @$pb.TagNumber(1)
  set locationId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get fee => $_getIZ(1);
  @$pb.TagNumber(2)
  set fee($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearFee() => clearField(2);

  @$pb.TagNumber(3)
  $33.Timestamp get startAt => $_getN(2);
  @$pb.TagNumber(3)
  set startAt($33.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartAt() => clearField(3);
  @$pb.TagNumber(3)
  $33.Timestamp ensureStartAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $33.Timestamp get endAt => $_getN(3);
  @$pb.TagNumber(4)
  set endAt($33.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndAt() => clearField(4);
  @$pb.TagNumber(4)
  $33.Timestamp ensureEndAt() => $_ensure(3);
}

class UpdatePartyResponse extends $pb.GeneratedMessage {
  factory UpdatePartyResponse({
    $36.Party? party,
  }) {
    final $result = create();
    if (party != null) {
      $result.party = party;
    }
    return $result;
  }
  UpdatePartyResponse._() : super();
  factory UpdatePartyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePartyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePartyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.Party>(1, _omitFieldNames ? '' : 'party', subBuilder: $36.Party.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePartyResponse clone() => UpdatePartyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePartyResponse copyWith(void Function(UpdatePartyResponse) updates) => super.copyWith((message) => updates(message as UpdatePartyResponse)) as UpdatePartyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePartyResponse create() => UpdatePartyResponse._();
  UpdatePartyResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePartyResponse> createRepeated() => $pb.PbList<UpdatePartyResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePartyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePartyResponse>(create);
  static UpdatePartyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.Party get party => $_getN(0);
  @$pb.TagNumber(1)
  set party($36.Party v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParty() => $_has(0);
  @$pb.TagNumber(1)
  void clearParty() => clearField(1);
  @$pb.TagNumber(1)
  $36.Party ensureParty() => $_ensure(0);
}

class DeletePartyRequest extends $pb.GeneratedMessage {
  factory DeletePartyRequest({
    $core.int? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  DeletePartyRequest._() : super();
  factory DeletePartyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePartyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePartyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3, protoName: 'sessionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePartyRequest clone() => DeletePartyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePartyRequest copyWith(void Function(DeletePartyRequest) updates) => super.copyWith((message) => updates(message as DeletePartyRequest)) as DeletePartyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePartyRequest create() => DeletePartyRequest._();
  DeletePartyRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePartyRequest> createRepeated() => $pb.PbList<DeletePartyRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePartyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePartyRequest>(create);
  static DeletePartyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class DeletePartyResponse extends $pb.GeneratedMessage {
  factory DeletePartyResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeletePartyResponse._() : super();
  factory DeletePartyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePartyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePartyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePartyResponse clone() => DeletePartyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePartyResponse copyWith(void Function(DeletePartyResponse) updates) => super.copyWith((message) => updates(message as DeletePartyResponse)) as DeletePartyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePartyResponse create() => DeletePartyResponse._();
  DeletePartyResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePartyResponse> createRepeated() => $pb.PbList<DeletePartyResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePartyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePartyResponse>(create);
  static DeletePartyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class AddPartyParticipantRequest extends $pb.GeneratedMessage {
  factory AddPartyParticipantRequest({
    $36.PartyParticipantRole? role,
    $36.PartyParticipantStatus? status,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  AddPartyParticipantRequest._() : super();
  factory AddPartyParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPartyParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddPartyParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..e<$36.PartyParticipantRole>(1, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: $36.PartyParticipantRole.PARTY_PARTICIPANT_ROLE_UNSPECIFIED, valueOf: $36.PartyParticipantRole.valueOf, enumValues: $36.PartyParticipantRole.values)
    ..e<$36.PartyParticipantStatus>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $36.PartyParticipantStatus.PARTY_PARTICIPANT_STATUS_UNSPECIFIED, valueOf: $36.PartyParticipantStatus.valueOf, enumValues: $36.PartyParticipantStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddPartyParticipantRequest clone() => AddPartyParticipantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddPartyParticipantRequest copyWith(void Function(AddPartyParticipantRequest) updates) => super.copyWith((message) => updates(message as AddPartyParticipantRequest)) as AddPartyParticipantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPartyParticipantRequest create() => AddPartyParticipantRequest._();
  AddPartyParticipantRequest createEmptyInstance() => create();
  static $pb.PbList<AddPartyParticipantRequest> createRepeated() => $pb.PbList<AddPartyParticipantRequest>();
  @$core.pragma('dart2js:noInline')
  static AddPartyParticipantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPartyParticipantRequest>(create);
  static AddPartyParticipantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $36.PartyParticipantRole get role => $_getN(0);
  @$pb.TagNumber(1)
  set role($36.PartyParticipantRole v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  @$pb.TagNumber(2)
  $36.PartyParticipantStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($36.PartyParticipantStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class AddPartyParticipantResponse extends $pb.GeneratedMessage {
  factory AddPartyParticipantResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  AddPartyParticipantResponse._() : super();
  factory AddPartyParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddPartyParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddPartyParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddPartyParticipantResponse clone() => AddPartyParticipantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddPartyParticipantResponse copyWith(void Function(AddPartyParticipantResponse) updates) => super.copyWith((message) => updates(message as AddPartyParticipantResponse)) as AddPartyParticipantResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPartyParticipantResponse create() => AddPartyParticipantResponse._();
  AddPartyParticipantResponse createEmptyInstance() => create();
  static $pb.PbList<AddPartyParticipantResponse> createRepeated() => $pb.PbList<AddPartyParticipantResponse>();
  @$core.pragma('dart2js:noInline')
  static AddPartyParticipantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPartyParticipantResponse>(create);
  static AddPartyParticipantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class UpdatePartyParticipantRequest extends $pb.GeneratedMessage {
  factory UpdatePartyParticipantRequest({
    $36.PartyParticipantRole? role,
    $36.PartyParticipantStatus? status,
  }) {
    final $result = create();
    if (role != null) {
      $result.role = role;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdatePartyParticipantRequest._() : super();
  factory UpdatePartyParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePartyParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePartyParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..e<$36.PartyParticipantRole>(1, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: $36.PartyParticipantRole.PARTY_PARTICIPANT_ROLE_UNSPECIFIED, valueOf: $36.PartyParticipantRole.valueOf, enumValues: $36.PartyParticipantRole.values)
    ..e<$36.PartyParticipantStatus>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $36.PartyParticipantStatus.PARTY_PARTICIPANT_STATUS_UNSPECIFIED, valueOf: $36.PartyParticipantStatus.valueOf, enumValues: $36.PartyParticipantStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePartyParticipantRequest clone() => UpdatePartyParticipantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePartyParticipantRequest copyWith(void Function(UpdatePartyParticipantRequest) updates) => super.copyWith((message) => updates(message as UpdatePartyParticipantRequest)) as UpdatePartyParticipantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePartyParticipantRequest create() => UpdatePartyParticipantRequest._();
  UpdatePartyParticipantRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePartyParticipantRequest> createRepeated() => $pb.PbList<UpdatePartyParticipantRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePartyParticipantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePartyParticipantRequest>(create);
  static UpdatePartyParticipantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $36.PartyParticipantRole get role => $_getN(0);
  @$pb.TagNumber(1)
  set role($36.PartyParticipantRole v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

  @$pb.TagNumber(2)
  $36.PartyParticipantStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($36.PartyParticipantStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class UpdatePartyParticipantResponse extends $pb.GeneratedMessage {
  factory UpdatePartyParticipantResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  UpdatePartyParticipantResponse._() : super();
  factory UpdatePartyParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePartyParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePartyParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePartyParticipantResponse clone() => UpdatePartyParticipantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePartyParticipantResponse copyWith(void Function(UpdatePartyParticipantResponse) updates) => super.copyWith((message) => updates(message as UpdatePartyParticipantResponse)) as UpdatePartyParticipantResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePartyParticipantResponse create() => UpdatePartyParticipantResponse._();
  UpdatePartyParticipantResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePartyParticipantResponse> createRepeated() => $pb.PbList<UpdatePartyParticipantResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePartyParticipantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePartyParticipantResponse>(create);
  static UpdatePartyParticipantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class RemovePartyParticipantRequest extends $pb.GeneratedMessage {
  factory RemovePartyParticipantRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  RemovePartyParticipantRequest._() : super();
  factory RemovePartyParticipantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemovePartyParticipantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemovePartyParticipantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemovePartyParticipantRequest clone() => RemovePartyParticipantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemovePartyParticipantRequest copyWith(void Function(RemovePartyParticipantRequest) updates) => super.copyWith((message) => updates(message as RemovePartyParticipantRequest)) as RemovePartyParticipantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemovePartyParticipantRequest create() => RemovePartyParticipantRequest._();
  RemovePartyParticipantRequest createEmptyInstance() => create();
  static $pb.PbList<RemovePartyParticipantRequest> createRepeated() => $pb.PbList<RemovePartyParticipantRequest>();
  @$core.pragma('dart2js:noInline')
  static RemovePartyParticipantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemovePartyParticipantRequest>(create);
  static RemovePartyParticipantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class RemovePartyParticipantResponse extends $pb.GeneratedMessage {
  factory RemovePartyParticipantResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  RemovePartyParticipantResponse._() : super();
  factory RemovePartyParticipantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemovePartyParticipantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemovePartyParticipantResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemovePartyParticipantResponse clone() => RemovePartyParticipantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemovePartyParticipantResponse copyWith(void Function(RemovePartyParticipantResponse) updates) => super.copyWith((message) => updates(message as RemovePartyParticipantResponse)) as RemovePartyParticipantResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemovePartyParticipantResponse create() => RemovePartyParticipantResponse._();
  RemovePartyParticipantResponse createEmptyInstance() => create();
  static $pb.PbList<RemovePartyParticipantResponse> createRepeated() => $pb.PbList<RemovePartyParticipantResponse>();
  @$core.pragma('dart2js:noInline')
  static RemovePartyParticipantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemovePartyParticipantResponse>(create);
  static RemovePartyParticipantResponse? _defaultInstance;

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
