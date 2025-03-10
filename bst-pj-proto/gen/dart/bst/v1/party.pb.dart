//
//  Generated code. Do not modify.
//  source: bst/v1/party.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $33;
import 'location.pb.dart' as $35;
import 'party.pbenum.dart';
import 'user.pb.dart' as $34;

export 'party.pbenum.dart';

class PartyParticipant extends $pb.GeneratedMessage {
  factory PartyParticipant({
    $34.User? user,
    PartyParticipantRole? role,
    PartyParticipantStatus? status,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (role != null) {
      $result.role = role;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  PartyParticipant._() : super();
  factory PartyParticipant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartyParticipant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PartyParticipant', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$34.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $34.User.create)
    ..e<PartyParticipantRole>(2, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: PartyParticipantRole.PARTY_PARTICIPANT_ROLE_UNSPECIFIED, valueOf: PartyParticipantRole.valueOf, enumValues: PartyParticipantRole.values)
    ..e<PartyParticipantStatus>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: PartyParticipantStatus.PARTY_PARTICIPANT_STATUS_UNSPECIFIED, valueOf: PartyParticipantStatus.valueOf, enumValues: PartyParticipantStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PartyParticipant clone() => PartyParticipant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PartyParticipant copyWith(void Function(PartyParticipant) updates) => super.copyWith((message) => updates(message as PartyParticipant)) as PartyParticipant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartyParticipant create() => PartyParticipant._();
  PartyParticipant createEmptyInstance() => create();
  static $pb.PbList<PartyParticipant> createRepeated() => $pb.PbList<PartyParticipant>();
  @$core.pragma('dart2js:noInline')
  static PartyParticipant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartyParticipant>(create);
  static PartyParticipant? _defaultInstance;

  @$pb.TagNumber(1)
  $34.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($34.User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $34.User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  PartyParticipantRole get role => $_getN(1);
  @$pb.TagNumber(2)
  set role(PartyParticipantRole v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);

  @$pb.TagNumber(3)
  PartyParticipantStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(PartyParticipantStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class Party extends $pb.GeneratedMessage {
  factory Party({
    $core.Iterable<PartyParticipant>? participants,
    $35.Location? location,
    $core.int? fee,
    $33.Timestamp? startAt,
    $33.Timestamp? endAt,
  }) {
    final $result = create();
    if (participants != null) {
      $result.participants.addAll(participants);
    }
    if (location != null) {
      $result.location = location;
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
  Party._() : super();
  factory Party.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Party.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Party', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<PartyParticipant>(1, _omitFieldNames ? '' : 'participants', $pb.PbFieldType.PM, subBuilder: PartyParticipant.create)
    ..aOM<$35.Location>(2, _omitFieldNames ? '' : 'location', subBuilder: $35.Location.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.O3)
    ..aOM<$33.Timestamp>(4, _omitFieldNames ? '' : 'startAt', subBuilder: $33.Timestamp.create)
    ..aOM<$33.Timestamp>(5, _omitFieldNames ? '' : 'endAt', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Party clone() => Party()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Party copyWith(void Function(Party) updates) => super.copyWith((message) => updates(message as Party)) as Party;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Party create() => Party._();
  Party createEmptyInstance() => create();
  static $pb.PbList<Party> createRepeated() => $pb.PbList<Party>();
  @$core.pragma('dart2js:noInline')
  static Party getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Party>(create);
  static Party? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PartyParticipant> get participants => $_getList(0);

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

  @$pb.TagNumber(3)
  $core.int get fee => $_getIZ(2);
  @$pb.TagNumber(3)
  set fee($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearFee() => clearField(3);

  @$pb.TagNumber(4)
  $33.Timestamp get startAt => $_getN(3);
  @$pb.TagNumber(4)
  set startAt($33.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartAt() => clearField(4);
  @$pb.TagNumber(4)
  $33.Timestamp ensureStartAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $33.Timestamp get endAt => $_getN(4);
  @$pb.TagNumber(5)
  set endAt($33.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndAt() => clearField(5);
  @$pb.TagNumber(5)
  $33.Timestamp ensureEndAt() => $_ensure(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
