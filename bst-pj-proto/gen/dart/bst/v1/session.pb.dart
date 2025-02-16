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

import '../../google/protobuf/timestamp.pb.dart' as $24;
import 'content.pb.dart' as $22;
import 'party.pb.dart' as $27;
import 'session.pbenum.dart';
import 'user.pb.dart' as $25;

export 'session.pbenum.dart';

/// Session model
class SessionTimelineDate extends $pb.GeneratedMessage {
  factory SessionTimelineDate({
    $24.Timestamp? createdAt,
    $24.Timestamp? entryOpen,
    $24.Timestamp? entryClose,
    $24.Timestamp? eventDate,
  }) {
    final $result = create();
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
    return $result;
  }
  SessionTimelineDate._() : super();
  factory SessionTimelineDate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionTimelineDate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionTimelineDate', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$24.Timestamp>(1, _omitFieldNames ? '' : 'createdAt', subBuilder: $24.Timestamp.create)
    ..aOM<$24.Timestamp>(2, _omitFieldNames ? '' : 'entryOpen', subBuilder: $24.Timestamp.create)
    ..aOM<$24.Timestamp>(3, _omitFieldNames ? '' : 'entryClose', subBuilder: $24.Timestamp.create)
    ..aOM<$24.Timestamp>(4, _omitFieldNames ? '' : 'eventDate', subBuilder: $24.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionTimelineDate clone() => SessionTimelineDate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionTimelineDate copyWith(void Function(SessionTimelineDate) updates) => super.copyWith((message) => updates(message as SessionTimelineDate)) as SessionTimelineDate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionTimelineDate create() => SessionTimelineDate._();
  SessionTimelineDate createEmptyInstance() => create();
  static $pb.PbList<SessionTimelineDate> createRepeated() => $pb.PbList<SessionTimelineDate>();
  @$core.pragma('dart2js:noInline')
  static SessionTimelineDate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionTimelineDate>(create);
  static SessionTimelineDate? _defaultInstance;

  @$pb.TagNumber(1)
  $24.Timestamp get createdAt => $_getN(0);
  @$pb.TagNumber(1)
  set createdAt($24.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedAt() => clearField(1);
  @$pb.TagNumber(1)
  $24.Timestamp ensureCreatedAt() => $_ensure(0);

  @$pb.TagNumber(2)
  $24.Timestamp get entryOpen => $_getN(1);
  @$pb.TagNumber(2)
  set entryOpen($24.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntryOpen() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntryOpen() => clearField(2);
  @$pb.TagNumber(2)
  $24.Timestamp ensureEntryOpen() => $_ensure(1);

  @$pb.TagNumber(3)
  $24.Timestamp get entryClose => $_getN(2);
  @$pb.TagNumber(3)
  set entryClose($24.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEntryClose() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntryClose() => clearField(3);
  @$pb.TagNumber(3)
  $24.Timestamp ensureEntryClose() => $_ensure(2);

  @$pb.TagNumber(4)
  $24.Timestamp get eventDate => $_getN(3);
  @$pb.TagNumber(4)
  set eventDate($24.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEventDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearEventDate() => clearField(4);
  @$pb.TagNumber(4)
  $24.Timestamp ensureEventDate() => $_ensure(3);
}

class Session extends $pb.GeneratedMessage {
  factory Session({
    $core.int? id,
    $core.String? title,
    SessionTimelineDate? timeline,
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
    if (timeline != null) {
      $result.timeline = timeline;
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
    ..aOM<SessionTimelineDate>(3, _omitFieldNames ? '' : 'timeline', subBuilder: SessionTimelineDate.create)
    ..e<SessionStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: SessionStatus.SESSION_STATUS_UNSPECIFIED, valueOf: SessionStatus.valueOf, enumValues: SessionStatus.values)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'participantsNum', $pb.PbFieldType.O3)
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
  SessionTimelineDate get timeline => $_getN(2);
  @$pb.TagNumber(3)
  set timeline(SessionTimelineDate v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeline() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeline() => clearField(3);
  @$pb.TagNumber(3)
  SessionTimelineDate ensureTimeline() => $_ensure(2);

  @$pb.TagNumber(4)
  SessionStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(SessionStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get participantsNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set participantsNum($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasParticipantsNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearParticipantsNum() => clearField(5);
}

class SessionDetail extends $pb.GeneratedMessage {
  factory SessionDetail({
    Session? session,
    $core.String? description,
    $core.Iterable<SessionPart>? parts,
    $core.Iterable<SessionParticipant>? participants,
    Timetable? timetable,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    if (description != null) {
      $result.description = description;
    }
    if (parts != null) {
      $result.parts.addAll(parts);
    }
    if (participants != null) {
      $result.participants.addAll(participants);
    }
    if (timetable != null) {
      $result.timetable = timetable;
    }
    return $result;
  }
  SessionDetail._() : super();
  factory SessionDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<Session>(1, _omitFieldNames ? '' : 'session', subBuilder: Session.create)
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pc<SessionPart>(3, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: SessionPart.create)
    ..pc<SessionParticipant>(4, _omitFieldNames ? '' : 'participants', $pb.PbFieldType.PM, subBuilder: SessionParticipant.create)
    ..aOM<Timetable>(5, _omitFieldNames ? '' : 'timetable', subBuilder: Timetable.create)
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
  Session get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(Session v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  Session ensureSession() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<SessionPart> get parts => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<SessionParticipant> get participants => $_getList(3);

  @$pb.TagNumber(5)
  Timetable get timetable => $_getN(4);
  @$pb.TagNumber(5)
  set timetable(Timetable v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimetable() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimetable() => clearField(5);
  @$pb.TagNumber(5)
  Timetable ensureTimetable() => $_ensure(4);
}

class SessionPart extends $pb.GeneratedMessage {
  factory SessionPart({
    $22.Part? part,
    $core.String? name,
    $core.int? displayOrder,
    $core.int? maxEntry,
  }) {
    final $result = create();
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
    ..aOM<$22.Part>(1, _omitFieldNames ? '' : 'part', subBuilder: $22.Part.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'displayOrder', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'maxEntry', $pb.PbFieldType.O3)
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
  $22.Part get part => $_getN(0);
  @$pb.TagNumber(1)
  set part($22.Part v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  $22.Part ensurePart() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get displayOrder => $_getIZ(2);
  @$pb.TagNumber(3)
  set displayOrder($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayOrder() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxEntry => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxEntry($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxEntry() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxEntry() => clearField(4);
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
    $core.String? name,
    SessionParticipantRole? role,
    $25.User? user,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (role != null) {
      $result.role = role;
    }
    if (user != null) {
      $result.user = user;
    }
    return $result;
  }
  SessionParticipant._() : super();
  factory SessionParticipant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionParticipant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SessionParticipant', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..e<SessionParticipantRole>(3, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: SessionParticipantRole.SESSION_PARTICIPANT_ROLE_UNSPECIFIED, valueOf: SessionParticipantRole.valueOf, enumValues: SessionParticipantRole.values)
    ..aOM<$25.User>(4, _omitFieldNames ? '' : 'user', subBuilder: $25.User.create)
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
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  SessionParticipantRole get role => $_getN(2);
  @$pb.TagNumber(3)
  set role(SessionParticipantRole v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => clearField(3);

  @$pb.TagNumber(4)
  $25.User get user => $_getN(3);
  @$pb.TagNumber(4)
  set user($25.User v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUser() => $_has(3);
  @$pb.TagNumber(4)
  void clearUser() => clearField(4);
  @$pb.TagNumber(4)
  $25.User ensureUser() => $_ensure(3);
}

class SongPerformanceEntry extends $pb.GeneratedMessage {
  factory SongPerformanceEntry({
    $25.User? user,
    SessionPart? part,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (part != null) {
      $result.part = part;
    }
    return $result;
  }
  SongPerformanceEntry._() : super();
  factory SongPerformanceEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SongPerformanceEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SongPerformanceEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$25.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $25.User.create)
    ..aOM<SessionPart>(2, _omitFieldNames ? '' : 'part', subBuilder: SessionPart.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SongPerformanceEntry clone() => SongPerformanceEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SongPerformanceEntry copyWith(void Function(SongPerformanceEntry) updates) => super.copyWith((message) => updates(message as SongPerformanceEntry)) as SongPerformanceEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SongPerformanceEntry create() => SongPerformanceEntry._();
  SongPerformanceEntry createEmptyInstance() => create();
  static $pb.PbList<SongPerformanceEntry> createRepeated() => $pb.PbList<SongPerformanceEntry>();
  @$core.pragma('dart2js:noInline')
  static SongPerformanceEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SongPerformanceEntry>(create);
  static SongPerformanceEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $25.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($25.User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $25.User ensureUser() => $_ensure(0);

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
}

class SongPerformancePart extends $pb.GeneratedMessage {
  factory SongPerformancePart({
    SessionPart? part,
    $core.bool? isRequired,
  }) {
    final $result = create();
    if (part != null) {
      $result.part = part;
    }
    if (isRequired != null) {
      $result.isRequired = isRequired;
    }
    return $result;
  }
  SongPerformancePart._() : super();
  factory SongPerformancePart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SongPerformancePart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SongPerformancePart', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<SessionPart>(1, _omitFieldNames ? '' : 'part', subBuilder: SessionPart.create)
    ..aOB(2, _omitFieldNames ? '' : 'isRequired')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SongPerformancePart clone() => SongPerformancePart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SongPerformancePart copyWith(void Function(SongPerformancePart) updates) => super.copyWith((message) => updates(message as SongPerformancePart)) as SongPerformancePart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SongPerformancePart create() => SongPerformancePart._();
  SongPerformancePart createEmptyInstance() => create();
  static $pb.PbList<SongPerformancePart> createRepeated() => $pb.PbList<SongPerformancePart>();
  @$core.pragma('dart2js:noInline')
  static SongPerformancePart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SongPerformancePart>(create);
  static SongPerformancePart? _defaultInstance;

  @$pb.TagNumber(1)
  SessionPart get part => $_getN(0);
  @$pb.TagNumber(1)
  set part(SessionPart v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  SessionPart ensurePart() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get isRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set isRequired($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsRequired() => clearField(2);
}

class SongPerformance extends $pb.GeneratedMessage {
  factory SongPerformance({
    $22.Song? song,
    $core.Iterable<SongPerformanceEntry>? entries,
    $core.Iterable<SongPerformancePart>? parts,
  }) {
    final $result = create();
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
  SongPerformance._() : super();
  factory SongPerformance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SongPerformance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SongPerformance', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$22.Song>(1, _omitFieldNames ? '' : 'song', subBuilder: $22.Song.create)
    ..pc<SongPerformanceEntry>(2, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: SongPerformanceEntry.create)
    ..pc<SongPerformancePart>(3, _omitFieldNames ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: SongPerformancePart.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SongPerformance clone() => SongPerformance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SongPerformance copyWith(void Function(SongPerformance) updates) => super.copyWith((message) => updates(message as SongPerformance)) as SongPerformance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SongPerformance create() => SongPerformance._();
  SongPerformance createEmptyInstance() => create();
  static $pb.PbList<SongPerformance> createRepeated() => $pb.PbList<SongPerformance>();
  @$core.pragma('dart2js:noInline')
  static SongPerformance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SongPerformance>(create);
  static SongPerformance? _defaultInstance;

  @$pb.TagNumber(1)
  $22.Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($22.Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $22.Song ensureSong() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<SongPerformanceEntry> get entries => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<SongPerformancePart> get parts => $_getList(2);
}

class TimetableEntry extends $pb.GeneratedMessage {
  factory TimetableEntry({
    TimetableEntry_TimetableEntryType? type,
    $core.int? index,
    $24.Timestamp? start,
    $24.Timestamp? end,
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
    ..aOM<$24.Timestamp>(3, _omitFieldNames ? '' : 'start', subBuilder: $24.Timestamp.create)
    ..aOM<$24.Timestamp>(4, _omitFieldNames ? '' : 'end', subBuilder: $24.Timestamp.create)
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
  $24.Timestamp get start => $_getN(2);
  @$pb.TagNumber(3)
  set start($24.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearStart() => clearField(3);
  @$pb.TagNumber(3)
  $24.Timestamp ensureStart() => $_ensure(2);

  @$pb.TagNumber(4)
  $24.Timestamp get end => $_getN(3);
  @$pb.TagNumber(4)
  set end($24.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnd() => clearField(4);
  @$pb.TagNumber(4)
  $24.Timestamp ensureEnd() => $_ensure(3);
}

class Timetable extends $pb.GeneratedMessage {
  factory Timetable({
    $core.Iterable<TimetableEntry>? entries,
    $core.Iterable<SessionTask>? tasks,
    $core.Iterable<SongPerformance>? songPerformances,
    $core.Iterable<$27.Party>? parties,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    if (songPerformances != null) {
      $result.songPerformances.addAll(songPerformances);
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
    ..pc<SongPerformance>(3, _omitFieldNames ? '' : 'songPerformances', $pb.PbFieldType.PM, subBuilder: SongPerformance.create)
    ..pc<$27.Party>(4, _omitFieldNames ? '' : 'parties', $pb.PbFieldType.PM, subBuilder: $27.Party.create)
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
  $core.List<SongPerformance> get songPerformances => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$27.Party> get parties => $_getList(3);
}

class SessionFeedback extends $pb.GeneratedMessage {
  factory SessionFeedback({
    $core.int? score,
    $core.String? comment,
    $25.User? user,
    $24.Timestamp? createdAt,
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
    ..aOM<$25.User>(3, _omitFieldNames ? '' : 'user', subBuilder: $25.User.create)
    ..aOM<$24.Timestamp>(4, _omitFieldNames ? '' : 'createdAt', subBuilder: $24.Timestamp.create)
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
  $25.User get user => $_getN(2);
  @$pb.TagNumber(3)
  set user($25.User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);
  @$pb.TagNumber(3)
  $25.User ensureUser() => $_ensure(2);

  @$pb.TagNumber(4)
  $24.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($24.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $24.Timestamp ensureCreatedAt() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
