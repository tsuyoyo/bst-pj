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

/// Common status enumeration
class SessionStatus extends $pb.ProtobufEnum {
  static const SessionStatus SESSION_STATUS_UNSPECIFIED = SessionStatus._(0, _omitEnumNames ? '' : 'SESSION_STATUS_UNSPECIFIED');
  static const SessionStatus SESSION_STATUS_IN_DRAFT = SessionStatus._(1, _omitEnumNames ? '' : 'SESSION_STATUS_IN_DRAFT');
  static const SessionStatus SESSION_STATUS_OPEN = SessionStatus._(2, _omitEnumNames ? '' : 'SESSION_STATUS_OPEN');
  static const SessionStatus SESSION_STATUS_ENTRY_OPEN = SessionStatus._(3, _omitEnumNames ? '' : 'SESSION_STATUS_ENTRY_OPEN');
  static const SessionStatus SESSION_STATUS_ENTRY_CLOSE = SessionStatus._(4, _omitEnumNames ? '' : 'SESSION_STATUS_ENTRY_CLOSE');
  static const SessionStatus SESSION_STATUS_COMPLETED = SessionStatus._(5, _omitEnumNames ? '' : 'SESSION_STATUS_COMPLETED');
  static const SessionStatus SESSION_STATUS_CANCELLED = SessionStatus._(6, _omitEnumNames ? '' : 'SESSION_STATUS_CANCELLED');

  static const $core.List<SessionStatus> values = <SessionStatus> [
    SESSION_STATUS_UNSPECIFIED,
    SESSION_STATUS_IN_DRAFT,
    SESSION_STATUS_OPEN,
    SESSION_STATUS_ENTRY_OPEN,
    SESSION_STATUS_ENTRY_CLOSE,
    SESSION_STATUS_COMPLETED,
    SESSION_STATUS_CANCELLED,
  ];

  static final $core.Map<$core.int, SessionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SessionStatus? valueOf($core.int value) => _byValue[value];

  const SessionStatus._($core.int v, $core.String n) : super(v, n);
}

/// Participant model
class SessionParticipantRole extends $pb.ProtobufEnum {
  static const SessionParticipantRole SESSION_PARTICIPANT_ROLE_UNSPECIFIED = SessionParticipantRole._(0, _omitEnumNames ? '' : 'SESSION_PARTICIPANT_ROLE_UNSPECIFIED');
  static const SessionParticipantRole SESSION_PARTICIPANT_ROLE_ORGANIZER = SessionParticipantRole._(1, _omitEnumNames ? '' : 'SESSION_PARTICIPANT_ROLE_ORGANIZER');
  static const SessionParticipantRole SESSION_PARTICIPANT_ROLE_PLAYER = SessionParticipantRole._(2, _omitEnumNames ? '' : 'SESSION_PARTICIPANT_ROLE_PLAYER');

  static const $core.List<SessionParticipantRole> values = <SessionParticipantRole> [
    SESSION_PARTICIPANT_ROLE_UNSPECIFIED,
    SESSION_PARTICIPANT_ROLE_ORGANIZER,
    SESSION_PARTICIPANT_ROLE_PLAYER,
  ];

  static final $core.Map<$core.int, SessionParticipantRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SessionParticipantRole? valueOf($core.int value) => _byValue[value];

  const SessionParticipantRole._($core.int v, $core.String n) : super(v, n);
}

class TimetableEntry_TimetableEntryType extends $pb.ProtobufEnum {
  static const TimetableEntry_TimetableEntryType TIMETABLE_ENTRY_TYPE_UNSPECIFIED = TimetableEntry_TimetableEntryType._(0, _omitEnumNames ? '' : 'TIMETABLE_ENTRY_TYPE_UNSPECIFIED');
  static const TimetableEntry_TimetableEntryType TIMETABLE_ENTRY_TYPE_TASK = TimetableEntry_TimetableEntryType._(1, _omitEnumNames ? '' : 'TIMETABLE_ENTRY_TYPE_TASK');
  static const TimetableEntry_TimetableEntryType TIMETABLE_ENTRY_TYPE_PERFORMANCE = TimetableEntry_TimetableEntryType._(2, _omitEnumNames ? '' : 'TIMETABLE_ENTRY_TYPE_PERFORMANCE');
  static const TimetableEntry_TimetableEntryType TIMETABLE_ENTRY_TYPE_PARTY = TimetableEntry_TimetableEntryType._(3, _omitEnumNames ? '' : 'TIMETABLE_ENTRY_TYPE_PARTY');

  static const $core.List<TimetableEntry_TimetableEntryType> values = <TimetableEntry_TimetableEntryType> [
    TIMETABLE_ENTRY_TYPE_UNSPECIFIED,
    TIMETABLE_ENTRY_TYPE_TASK,
    TIMETABLE_ENTRY_TYPE_PERFORMANCE,
    TIMETABLE_ENTRY_TYPE_PARTY,
  ];

  static final $core.Map<$core.int, TimetableEntry_TimetableEntryType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimetableEntry_TimetableEntryType? valueOf($core.int value) => _byValue[value];

  const TimetableEntry_TimetableEntryType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
