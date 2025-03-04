//
//  Generated code. Do not modify.
//  source: bst/v1/session.proto
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
import 'party.pb.dart' as $36;
import 'session.pbenum.dart';
import 'user.pb.dart' as $34;

export 'session.pbenum.dart';

/// Session model
class Session extends $pb.GeneratedMessage {
  factory Session({
    $core.int? id,
    $core.String? title,
    $33.Timestamp? createdAt,
    $33.Timestamp? entryOpen,
    $33.Timestamp? entryClose,
    $33.Timestamp? eventDate,
    SessionStatus? status,
    $core.int? participantsNum,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (entryOpen != null) {
      $result.entryOpen = entryOpen;
    }
    if (entryClose != null) {
      $result.entryClose = entryClose;
    }
    if (eventDate != null) {
      $result.eventDate = eventDate;
    }
    if (status != null) {
      $result.status = status;
    }
    if (participantsNum != null) {
      $result.participantsNum = participantsNum;
    }
    return $result;
  }
  Session._() : super();
  factory Session.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Session', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOM<$33.Timestamp>(3, _omitFieldNames ? '' : 'createdAt', subBuilder: $33.Timestamp.create)
    ..aOM<$33.Timestamp>(4, _omitFieldNames ? '' : 'entryOpen', subBuilder: $33.Timestamp.create)
    ..aOM<$33.Timestamp>(5, _omitFieldNames ? '' : 'entryClose', subBuilder: $33.Timestamp.create)
    ..aOM<$33.Timestamp>(6, _omitFieldNames ? '' : 'eventDate', subBuilder: $33.Timestamp.create)
    ..e<SessionStatus>(7, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: SessionStatus.SESSION_STATUS_UNSPECIFIED, valueOf: SessionStatus.valueOf, enumValues: SessionStatus.values)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'participantsNum', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Session clone() => Session()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Session copyWith(void Function(Session) updates) => super.copyWith((message) => updates(message as Session)) as Session;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $33.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($33.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $33.Timestamp ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $33.Timestamp get entryOpen => $_getN(3);
  @$pb.TagNumber(4)
  set entryOpen($33.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEntryOpen() => $_has(3);
  @$pb.TagNumber(4)
  void clearEntryOpen() => clearField(4);
  @$pb.TagNumber(4)
  $33.Timestamp ensureEntryOpen() => $_ensure(3);

  @$pb.TagNumber(5)
  $33.Timestamp get entryClose => $_getN(4);
  @$pb.TagNumber(5)
  set entryClose($33.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEntryClose() => $_has(4);
  @$pb.TagNumber(5)
  void clearEntryClose() => clearField(5);
  @$pb.TagNumber(5)
  $33.Timestamp ensureEntryClose() => $_ensure(4);

  @$pb.TagNumber(6)
  $33.Timestamp get eventDate => $_getN(5);
  @$pb.TagNumber(6)
  set eventDate($33.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventDate() => clearField(6);
  @$pb.TagNumber(6)
  $33.Timestamp ensureEventDate() => $_ensure(5);

  @$pb.TagNumber(7)
  SessionStatus get status => $_getN(6);
  @$pb.TagNumber(7)
  set status(SessionStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get participantsNum => $_getIZ(7);
  @$pb.TagNumber(8)
  set participantsNum($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasParticipantsNum() => $_has(7);
  @$pb.TagNumber(8)
  void clearParticipantsNum() => clearField(8);
}

class SessionDetail extends $pb.GeneratedMessage {
  factory SessionDetail({
    $core.String? description,
    $core.Iterable<SessionPart>? parts,
    $core.Iterable<SessionParticipant>? participants,
    $35.Studio? studio,
    $35.StudioRoom? room,
  }) {
    final $result = create();
    if (description != null) {
      $result.description = description;
    }
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    if (participants != null) {
      $result.participants.addAll(participants);
    }
    if (studio != null) {
      $result.studio = studio;
    }
    if (room != null) {
      $result.room = room;
    }
    return $result;
  }
  SessionDetail._() : super();
  factory SessionDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'description')
    ..pc<SessionPart>(2, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: SessionPart.create)
    ..pc<SessionParticipant>(3, _omitFieldNames ? '' : 'participants', $pb.PbFieldType.PM, subBuilder: SessionParticipant.create)
    ..aOM<$35.Studio>(4, _omitFieldNames ? '' : 'studio', subBuilder: $35.Studio.create)
    ..aOM<$35.StudioRoom>(5, _omitFieldNames ? '' : 'room', subBuilder: $35.StudioRoom.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionDetail clone() => SessionDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionDetail copyWith(void Function(SessionDetail) updates) => super.copyWith((message) => updates(message as SessionDetail)) as SessionDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionDetail create() => SessionDetail._();
  SessionDetail createEmptyInstance() => create();
  static $pb.PbList<SessionDetail> createRepeated() => $pb.PbList<SessionDetail>();
  @$core.pragma('dart2js:noInline')
  static SessionDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionDetail>(create);
  static SessionDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<SessionPart> get parts => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<SessionParticipant> get participants => $_getList(2);

  @$pb.TagNumber(4)
  $35.Studio get studio => $_getN(3);
  @$pb.TagNumber(4)
  set studio($35.Studio v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStudio() => $_has(3);
  @$pb.TagNumber(4)
  void clearStudio() => clearField(4);
  @$pb.TagNumber(4)
  $35.Studio ensureStudio() => $_ensure(3);

  @$pb.TagNumber(5)
  $35.StudioRoom get room => $_getN(4);
  @$pb.TagNumber(5)
  set room($35.StudioRoom v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoom() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoom() => clearField(5);
  @$pb.TagNumber(5)
  $35.StudioRoom ensureRoom() => $_ensure(4);
}

class SessionPart extends $pb.GeneratedMessage {
  factory SessionPart({
    $core.int? id,
    $31.Part? part,
    $core.String? name,
    $core.int? displayOrder,
    $core.int? maxEntry,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (part != null) {
      $result.part = part;
    }
    if (name != null) {
      $result.name = name;
    }
    if (displayOrder != null) {
      $result.displayOrder = displayOrder;
    }
    if (maxEntry != null) {
      $result.maxEntry = maxEntry;
    }
    return $result;
  }
  SessionPart._() : super();
  factory SessionPart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionPart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionPart', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$31.Part>(2, _omitFieldNames ? '' : 'part', subBuilder: $31.Part.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'displayOrder', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'maxEntry', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionPart clone() => SessionPart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionPart copyWith(void Function(SessionPart) updates) => super.copyWith((message) => updates(message as SessionPart)) as SessionPart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionPart create() => SessionPart._();
  SessionPart createEmptyInstance() => create();
  static $pb.PbList<SessionPart> createRepeated() => $pb.PbList<SessionPart>();
  @$core.pragma('dart2js:noInline')
  static SessionPart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionPart>(create);
  static SessionPart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $31.Part get part => $_getN(1);
  @$pb.TagNumber(2)
  set part($31.Part v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPart() => $_has(1);
  @$pb.TagNumber(2)
  void clearPart() => clearField(2);
  @$pb.TagNumber(2)
  $31.Part ensurePart() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get displayOrder => $_getIZ(3);
  @$pb.TagNumber(4)
  set displayOrder($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisplayOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayOrder() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get maxEntry => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxEntry($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaxEntry() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxEntry() => clearField(5);
}

class SessionTask extends $pb.GeneratedMessage {
  factory SessionTask({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  SessionTask._() : super();
  factory SessionTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionTask clone() => SessionTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionTask copyWith(void Function(SessionTask) updates) => super.copyWith((message) => updates(message as SessionTask)) as SessionTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionTask create() => SessionTask._();
  SessionTask createEmptyInstance() => create();
  static $pb.PbList<SessionTask> createRepeated() => $pb.PbList<SessionTask>();
  @$core.pragma('dart2js:noInline')
  static SessionTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionTask>(create);
  static SessionTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class SessionParticipant extends $pb.GeneratedMessage {
  factory SessionParticipant({
    $core.int? id,
    $34.User? user,
    $core.Iterable<SessionPart>? parts,
    $core.int? primaryPartId,
    SessionParticipantStatus? status,
    $core.bool? isAdmin,
    $core.bool? isPlayer,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (user != null) {
      $result.user = user;
    }
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    if (primaryPartId != null) {
      $result.primaryPartId = primaryPartId;
    }
    if (status != null) {
      $result.status = status;
    }
    if (isAdmin != null) {
      $result.isAdmin = isAdmin;
    }
    if (isPlayer != null) {
      $result.isPlayer = isPlayer;
    }
    return $result;
  }
  SessionParticipant._() : super();
  factory SessionParticipant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionParticipant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionParticipant', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$34.User>(2, _omitFieldNames ? '' : 'user', subBuilder: $34.User.create)
    ..pc<SessionPart>(3, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: SessionPart.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'primaryPartId', $pb.PbFieldType.O3)
    ..e<SessionParticipantStatus>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: SessionParticipantStatus.SESSION_PARTICIPANT_STATUS_UNSPECIFIED, valueOf: SessionParticipantStatus.valueOf, enumValues: SessionParticipantStatus.values)
    ..aOB(6, _omitFieldNames ? '' : 'isAdmin')
    ..aOB(7, _omitFieldNames ? '' : 'isPlayer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionParticipant clone() => SessionParticipant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionParticipant copyWith(void Function(SessionParticipant) updates) => super.copyWith((message) => updates(message as SessionParticipant)) as SessionParticipant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionParticipant create() => SessionParticipant._();
  SessionParticipant createEmptyInstance() => create();
  static $pb.PbList<SessionParticipant> createRepeated() => $pb.PbList<SessionParticipant>();
  @$core.pragma('dart2js:noInline')
  static SessionParticipant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionParticipant>(create);
  static SessionParticipant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $34.User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($34.User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  $34.User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<SessionPart> get parts => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get primaryPartId => $_getIZ(3);
  @$pb.TagNumber(4)
  set primaryPartId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrimaryPartId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrimaryPartId() => clearField(4);

  @$pb.TagNumber(5)
  SessionParticipantStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(SessionParticipantStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isAdmin => $_getBF(5);
  @$pb.TagNumber(6)
  set isAdmin($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsAdmin() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsAdmin() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isPlayer => $_getBF(6);
  @$pb.TagNumber(7)
  set isPlayer($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsPlayer() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsPlayer() => clearField(7);
}

class SessionSongEntry extends $pb.GeneratedMessage {
  factory SessionSongEntry({
    $core.int? id,
    $34.User? user,
    SessionPart? part,
    $core.String? comment,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (user != null) {
      $result.user = user;
    }
    if (part != null) {
      $result.part = part;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  SessionSongEntry._() : super();
  factory SessionSongEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionSongEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionSongEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$34.User>(2, _omitFieldNames ? '' : 'user', subBuilder: $34.User.create)
    ..aOM<SessionPart>(3, _omitFieldNames ? '' : 'part', subBuilder: SessionPart.create)
    ..aOS(4, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionSongEntry clone() => SessionSongEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionSongEntry copyWith(void Function(SessionSongEntry) updates) => super.copyWith((message) => updates(message as SessionSongEntry)) as SessionSongEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionSongEntry create() => SessionSongEntry._();
  SessionSongEntry createEmptyInstance() => create();
  static $pb.PbList<SessionSongEntry> createRepeated() => $pb.PbList<SessionSongEntry>();
  @$core.pragma('dart2js:noInline')
  static SessionSongEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionSongEntry>(create);
  static SessionSongEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $34.User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($34.User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  $34.User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  SessionPart get part => $_getN(2);
  @$pb.TagNumber(3)
  set part(SessionPart v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPart() => $_has(2);
  @$pb.TagNumber(3)
  void clearPart() => clearField(3);
  @$pb.TagNumber(3)
  SessionPart ensurePart() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get comment => $_getSZ(3);
  @$pb.TagNumber(4)
  set comment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasComment() => $_has(3);
  @$pb.TagNumber(4)
  void clearComment() => clearField(4);
}

class SessionSongPart extends $pb.GeneratedMessage {
  factory SessionSongPart({
    $core.int? id,
    SessionPart? part,
    $core.bool? isRequired,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (part != null) {
      $result.part = part;
    }
    if (isRequired != null) {
      $result.isRequired = isRequired;
    }
    return $result;
  }
  SessionSongPart._() : super();
  factory SessionSongPart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionSongPart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionSongPart', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<SessionPart>(2, _omitFieldNames ? '' : 'part', subBuilder: SessionPart.create)
    ..aOB(3, _omitFieldNames ? '' : 'isRequired')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionSongPart clone() => SessionSongPart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionSongPart copyWith(void Function(SessionSongPart) updates) => super.copyWith((message) => updates(message as SessionSongPart)) as SessionSongPart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionSongPart create() => SessionSongPart._();
  SessionSongPart createEmptyInstance() => create();
  static $pb.PbList<SessionSongPart> createRepeated() => $pb.PbList<SessionSongPart>();
  @$core.pragma('dart2js:noInline')
  static SessionSongPart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionSongPart>(create);
  static SessionSongPart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  SessionPart get part => $_getN(1);
  @$pb.TagNumber(2)
  set part(SessionPart v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPart() => $_has(1);
  @$pb.TagNumber(2)
  void clearPart() => clearField(2);
  @$pb.TagNumber(2)
  SessionPart ensurePart() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get isRequired => $_getBF(2);
  @$pb.TagNumber(3)
  set isRequired($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsRequired() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsRequired() => clearField(3);
}

class SessionSong extends $pb.GeneratedMessage {
  factory SessionSong({
    $core.int? id,
    $31.Song? song,
    $core.Iterable<SessionSongEntry>? entries,
    $core.Iterable<SessionSongPart>? parts,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (song != null) {
      $result.song = song;
    }
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    return $result;
  }
  SessionSong._() : super();
  factory SessionSong.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionSong.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionSong', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$31.Song>(2, _omitFieldNames ? '' : 'song', subBuilder: $31.Song.create)
    ..pc<SessionSongEntry>(3, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: SessionSongEntry.create)
    ..pc<SessionSongPart>(4, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: SessionSongPart.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionSong clone() => SessionSong()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionSong copyWith(void Function(SessionSong) updates) => super.copyWith((message) => updates(message as SessionSong)) as SessionSong;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionSong create() => SessionSong._();
  SessionSong createEmptyInstance() => create();
  static $pb.PbList<SessionSong> createRepeated() => $pb.PbList<SessionSong>();
  @$core.pragma('dart2js:noInline')
  static SessionSong getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionSong>(create);
  static SessionSong? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $31.Song get song => $_getN(1);
  @$pb.TagNumber(2)
  set song($31.Song v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSong() => $_has(1);
  @$pb.TagNumber(2)
  void clearSong() => clearField(2);
  @$pb.TagNumber(2)
  $31.Song ensureSong() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<SessionSongEntry> get entries => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<SessionSongPart> get parts => $_getList(3);
}

class TimetableEntry extends $pb.GeneratedMessage {
  factory TimetableEntry({
    TimetableEntry_TimetableEntryType? type,
    $core.int? index,
    $33.Timestamp? start,
    $33.Timestamp? end,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (index != null) {
      $result.index = index;
    }
    if (start != null) {
      $result.start = start;
    }
    if (end != null) {
      $result.end = end;
    }
    return $result;
  }
  TimetableEntry._() : super();
  factory TimetableEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimetableEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimetableEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..e<TimetableEntry_TimetableEntryType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TimetableEntry_TimetableEntryType.TIMETABLE_ENTRY_TYPE_UNSPECIFIED, valueOf: TimetableEntry_TimetableEntryType.valueOf, enumValues: TimetableEntry_TimetableEntryType.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<$33.Timestamp>(3, _omitFieldNames ? '' : 'start', subBuilder: $33.Timestamp.create)
    ..aOM<$33.Timestamp>(4, _omitFieldNames ? '' : 'end', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimetableEntry clone() => TimetableEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimetableEntry copyWith(void Function(TimetableEntry) updates) => super.copyWith((message) => updates(message as TimetableEntry)) as TimetableEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimetableEntry create() => TimetableEntry._();
  TimetableEntry createEmptyInstance() => create();
  static $pb.PbList<TimetableEntry> createRepeated() => $pb.PbList<TimetableEntry>();
  @$core.pragma('dart2js:noInline')
  static TimetableEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimetableEntry>(create);
  static TimetableEntry? _defaultInstance;

  @$pb.TagNumber(1)
  TimetableEntry_TimetableEntryType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(TimetableEntry_TimetableEntryType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);

  @$pb.TagNumber(3)
  $33.Timestamp get start => $_getN(2);
  @$pb.TagNumber(3)
  set start($33.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearStart() => clearField(3);
  @$pb.TagNumber(3)
  $33.Timestamp ensureStart() => $_ensure(2);

  @$pb.TagNumber(4)
  $33.Timestamp get end => $_getN(3);
  @$pb.TagNumber(4)
  set end($33.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnd() => clearField(4);
  @$pb.TagNumber(4)
  $33.Timestamp ensureEnd() => $_ensure(3);
}

class Timetable extends $pb.GeneratedMessage {
  factory Timetable({
    $core.Iterable<TimetableEntry>? entries,
    $core.Iterable<SessionTask>? tasks,
    $core.Iterable<SessionSong>? sessionSongs,
    $core.Iterable<$36.Party>? parties,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    if (sessionSongs != null) {
      $result.sessionSongs.addAll(sessionSongs);
    }
    if (parties != null) {
      $result.parties.addAll(parties);
    }
    return $result;
  }
  Timetable._() : super();
  factory Timetable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timetable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Timetable', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<TimetableEntry>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: TimetableEntry.create)
    ..pc<SessionTask>(2, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: SessionTask.create)
    ..pc<SessionSong>(3, _omitFieldNames ? '' : 'sessionSongs', $pb.PbFieldType.PM, subBuilder: SessionSong.create)
    ..pc<$36.Party>(4, _omitFieldNames ? '' : 'parties', $pb.PbFieldType.PM, subBuilder: $36.Party.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timetable clone() => Timetable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timetable copyWith(void Function(Timetable) updates) => super.copyWith((message) => updates(message as Timetable)) as Timetable;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timetable create() => Timetable._();
  Timetable createEmptyInstance() => create();
  static $pb.PbList<Timetable> createRepeated() => $pb.PbList<Timetable>();
  @$core.pragma('dart2js:noInline')
  static Timetable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timetable>(create);
  static Timetable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TimetableEntry> get entries => $_getList(0);

  /// Entities of each timetable entry
  @$pb.TagNumber(2)
  $core.List<SessionTask> get tasks => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<SessionSong> get sessionSongs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$36.Party> get parties => $_getList(3);
}

class SessionFeedback extends $pb.GeneratedMessage {
  factory SessionFeedback({
    $core.int? score,
    $core.String? comment,
    $34.User? user,
    $33.Timestamp? createdAt,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    if (user != null) {
      $result.user = user;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  SessionFeedback._() : super();
  factory SessionFeedback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionFeedback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionFeedback', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'score', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'comment')
    ..aOM<$34.User>(3, _omitFieldNames ? '' : 'user', subBuilder: $34.User.create)
    ..aOM<$33.Timestamp>(4, _omitFieldNames ? '' : 'createdAt', subBuilder: $33.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionFeedback clone() => SessionFeedback()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionFeedback copyWith(void Function(SessionFeedback) updates) => super.copyWith((message) => updates(message as SessionFeedback)) as SessionFeedback;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionFeedback create() => SessionFeedback._();
  SessionFeedback createEmptyInstance() => create();
  static $pb.PbList<SessionFeedback> createRepeated() => $pb.PbList<SessionFeedback>();
  @$core.pragma('dart2js:noInline')
  static SessionFeedback getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionFeedback>(create);
  static SessionFeedback? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get score => $_getIZ(0);
  @$pb.TagNumber(1)
  set score($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(2)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => clearField(2);

  @$pb.TagNumber(3)
  $34.User get user => $_getN(2);
  @$pb.TagNumber(3)
  set user($34.User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);
  @$pb.TagNumber(3)
  $34.User ensureUser() => $_ensure(2);

  @$pb.TagNumber(4)
  $33.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($33.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $33.Timestamp ensureCreatedAt() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
