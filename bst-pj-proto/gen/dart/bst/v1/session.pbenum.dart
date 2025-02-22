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

class SessionStatus extends $pb.ProtobufEnum {
  static const SessionStatus SESSION_STATUS_UNSPECIFIED = SessionStatus._(0, _omitEnumNames ? '' : 'SESSION_STATUS_UNSPECIFIED');
  static const SessionStatus SESSION_STATUS_BEFORE_ENTRY = SessionStatus._(1, _omitEnumNames ? '' : 'SESSION_STATUS_BEFORE_ENTRY');
  static const SessionStatus SESSION_STATUS_ENTRY_OPEN = SessionStatus._(2, _omitEnumNames ? '' : 'SESSION_STATUS_ENTRY_OPEN');
  static const SessionStatus SESSION_STATUS_ENTRY_CLOSE = SessionStatus._(3, _omitEnumNames ? '' : 'SESSION_STATUS_ENTRY_CLOSE');
  static const SessionStatus SESSION_STATUS_APPROACHING = SessionStatus._(4, _omitEnumNames ? '' : 'SESSION_STATUS_APPROACHING');
  static const SessionStatus SESSION_STATUS_ONGOING = SessionStatus._(5, _omitEnumNames ? '' : 'SESSION_STATUS_ONGOING');
  static const SessionStatus SESSION_STATUS_COMPLETED = SessionStatus._(6, _omitEnumNames ? '' : 'SESSION_STATUS_COMPLETED');
  static const SessionStatus SESSION_STATUS_CANCELLED = SessionStatus._(7, _omitEnumNames ? '' : 'SESSION_STATUS_CANCELLED');

  static const $core.List<SessionStatus> values = <SessionStatus> [
    SESSION_STATUS_UNSPECIFIED,
    SESSION_STATUS_BEFORE_ENTRY,
    SESSION_STATUS_ENTRY_OPEN,
    SESSION_STATUS_ENTRY_CLOSE,
    SESSION_STATUS_APPROACHING,
    SESSION_STATUS_ONGOING,
    SESSION_STATUS_COMPLETED,
    SESSION_STATUS_CANCELLED,
  ];

  static final $core.Map<$core.int, SessionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SessionStatus? valueOf($core.int value) => _byValue[value];

  const SessionStatus._($core.int v, $core.String n) : super(v, n);
}

/// Participant model
class SessionParticipantStatus extends $pb.ProtobufEnum {
  static const SessionParticipantStatus SESSION_PARTICIPANT_STATUS_UNSPECIFIED = SessionParticipantStatus._(0, _omitEnumNames ? '' : 'SESSION_PARTICIPANT_STATUS_UNSPECIFIED');
  static const SessionParticipantStatus SESSION_PARTICIPANT_STATUS_CONFIRMED = SessionParticipantStatus._(1, _omitEnumNames ? '' : 'SESSION_PARTICIPANT_STATUS_CONFIRMED');
  static const SessionParticipantStatus SESSION_PARTICIPANT_STATUS_CANCELLED = SessionParticipantStatus._(2, _omitEnumNames ? '' : 'SESSION_PARTICIPANT_STATUS_CANCELLED');

  static const $core.List<SessionParticipantStatus> values = <SessionParticipantStatus> [
    SESSION_PARTICIPANT_STATUS_UNSPECIFIED,
    SESSION_PARTICIPANT_STATUS_CONFIRMED,
    SESSION_PARTICIPANT_STATUS_CANCELLED,
  ];

  static final $core.Map<$core.int, SessionParticipantStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SessionParticipantStatus? valueOf($core.int value) => _byValue[value];

  const SessionParticipantStatus._($core.int v, $core.String n) : super(v, n);
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
