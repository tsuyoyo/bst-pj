//
//  Generated code. Do not modify.
//  source: bst/v1/session.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sessionStatusDescriptor instead')
const SessionStatus$json = {
  '1': 'SessionStatus',
  '2': [
    {'1': 'SESSION_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'SESSION_STATUS_BEFORE_ENTRY', '2': 1},
    {'1': 'SESSION_STATUS_ENTRY_OPEN', '2': 2},
    {'1': 'SESSION_STATUS_ENTRY_CLOSE', '2': 3},
    {'1': 'SESSION_STATUS_APPROACHING', '2': 4},
    {'1': 'SESSION_STATUS_ONGOING', '2': 5},
    {'1': 'SESSION_STATUS_COMPLETED', '2': 6},
    {'1': 'SESSION_STATUS_CANCELLED', '2': 7},
  ],
};

/// Descriptor for `SessionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sessionStatusDescriptor = $convert.base64Decode(
    'Cg1TZXNzaW9uU3RhdHVzEh4KGlNFU1NJT05fU1RBVFVTX1VOU1BFQ0lGSUVEEAASHwobU0VTU0'
    'lPTl9TVEFUVVNfQkVGT1JFX0VOVFJZEAESHQoZU0VTU0lPTl9TVEFUVVNfRU5UUllfT1BFThAC'
    'Eh4KGlNFU1NJT05fU1RBVFVTX0VOVFJZX0NMT1NFEAMSHgoaU0VTU0lPTl9TVEFUVVNfQVBQUk'
    '9BQ0hJTkcQBBIaChZTRVNTSU9OX1NUQVRVU19PTkdPSU5HEAUSHAoYU0VTU0lPTl9TVEFUVVNf'
    'Q09NUExFVEVEEAYSHAoYU0VTU0lPTl9TVEFUVVNfQ0FOQ0VMTEVEEAc=');

@$core.Deprecated('Use sessionParticipantStatusDescriptor instead')
const SessionParticipantStatus$json = {
  '1': 'SessionParticipantStatus',
  '2': [
    {'1': 'SESSION_PARTICIPANT_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'SESSION_PARTICIPANT_STATUS_CONFIRMED', '2': 1},
    {'1': 'SESSION_PARTICIPANT_STATUS_CANCELLED', '2': 2},
  ],
};

/// Descriptor for `SessionParticipantStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sessionParticipantStatusDescriptor = $convert.base64Decode(
    'ChhTZXNzaW9uUGFydGljaXBhbnRTdGF0dXMSKgomU0VTU0lPTl9QQVJUSUNJUEFOVF9TVEFUVV'
    'NfVU5TUEVDSUZJRUQQABIoCiRTRVNTSU9OX1BBUlRJQ0lQQU5UX1NUQVRVU19DT05GSVJNRUQQ'
    'ARIoCiRTRVNTSU9OX1BBUlRJQ0lQQU5UX1NUQVRVU19DQU5DRUxMRUQQAg==');

@$core.Deprecated('Use sessionDescriptor instead')
const Session$json = {
  '1': 'Session',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'entry_open', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'entryOpen'},
    {'1': 'entry_close', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'entryClose'},
    {'1': 'event_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'eventDate'},
    {'1': 'status', '3': 7, '4': 1, '5': 14, '6': '.bst.v1.SessionStatus', '10': 'status'},
    {'1': 'participants_num', '3': 8, '4': 1, '5': 5, '10': 'participantsNum'},
  ],
};

/// Descriptor for `Session`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDescriptor = $convert.base64Decode(
    'CgdTZXNzaW9uEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSOQoKY3JlYX'
    'RlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgpl'
    'bnRyeV9vcGVuGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZW50cnlPcGVuEj'
    'sKC2VudHJ5X2Nsb3NlGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKZW50cnlD'
    'bG9zZRI5CgpldmVudF9kYXRlGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZX'
    'ZlbnREYXRlEi0KBnN0YXR1cxgHIAEoDjIVLmJzdC52MS5TZXNzaW9uU3RhdHVzUgZzdGF0dXMS'
    'KQoQcGFydGljaXBhbnRzX251bRgIIAEoBVIPcGFydGljaXBhbnRzTnVt');

@$core.Deprecated('Use sessionDetailDescriptor instead')
const SessionDetail$json = {
  '1': 'SessionDetail',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Session', '10': 'session'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'parts', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.SessionPart', '10': 'parts'},
    {'1': 'participants', '3': 4, '4': 3, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'participants'},
  ],
};

/// Descriptor for `SessionDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDetailDescriptor = $convert.base64Decode(
    'Cg1TZXNzaW9uRGV0YWlsEikKB3Nlc3Npb24YASABKAsyDy5ic3QudjEuU2Vzc2lvblIHc2Vzc2'
    'lvbhIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SKQoFcGFydHMYAyADKAsyEy5i'
    'c3QudjEuU2Vzc2lvblBhcnRSBXBhcnRzEj4KDHBhcnRpY2lwYW50cxgEIAMoCzIaLmJzdC52MS'
    '5TZXNzaW9uUGFydGljaXBhbnRSDHBhcnRpY2lwYW50cw==');

@$core.Deprecated('Use sessionPartDescriptor instead')
const SessionPart$json = {
  '1': 'SessionPart',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Part', '10': 'part'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'display_order', '3': 3, '4': 1, '5': 5, '10': 'displayOrder'},
    {'1': 'max_entry', '3': 4, '4': 1, '5': 5, '10': 'maxEntry'},
  ],
};

/// Descriptor for `SessionPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionPartDescriptor = $convert.base64Decode(
    'CgtTZXNzaW9uUGFydBIgCgRwYXJ0GAEgASgLMgwuYnN0LnYxLlBhcnRSBHBhcnQSEgoEbmFtZR'
    'gCIAEoCVIEbmFtZRIjCg1kaXNwbGF5X29yZGVyGAMgASgFUgxkaXNwbGF5T3JkZXISGwoJbWF4'
    'X2VudHJ5GAQgASgFUghtYXhFbnRyeQ==');

@$core.Deprecated('Use sessionTaskDescriptor instead')
const SessionTask$json = {
  '1': 'SessionTask',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SessionTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionTaskDescriptor = $convert.base64Decode(
    'CgtTZXNzaW9uVGFzaxISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use sessionParticipantDescriptor instead')
const SessionParticipant$json = {
  '1': 'SessionParticipant',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'parts', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.SessionPart', '10': 'parts'},
    {'1': 'primary_part_id', '3': 4, '4': 1, '5': 5, '10': 'primaryPartId'},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.bst.v1.SessionParticipantStatus', '10': 'status'},
    {'1': 'is_admin', '3': 6, '4': 1, '5': 8, '10': 'isAdmin'},
    {'1': 'is_player', '3': 7, '4': 1, '5': 8, '10': 'isPlayer'},
  ],
};

/// Descriptor for `SessionParticipant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionParticipantDescriptor = $convert.base64Decode(
    'ChJTZXNzaW9uUGFydGljaXBhbnQSDgoCaWQYASABKAVSAmlkEiAKBHVzZXIYAiABKAsyDC5ic3'
    'QudjEuVXNlclIEdXNlchIpCgVwYXJ0cxgDIAMoCzITLmJzdC52MS5TZXNzaW9uUGFydFIFcGFy'
    'dHMSJgoPcHJpbWFyeV9wYXJ0X2lkGAQgASgFUg1wcmltYXJ5UGFydElkEjgKBnN0YXR1cxgFIA'
    'EoDjIgLmJzdC52MS5TZXNzaW9uUGFydGljaXBhbnRTdGF0dXNSBnN0YXR1cxIZCghpc19hZG1p'
    'bhgGIAEoCFIHaXNBZG1pbhIbCglpc19wbGF5ZXIYByABKAhSCGlzUGxheWVy');

@$core.Deprecated('Use sessionSongEntryDescriptor instead')
const SessionSongEntry$json = {
  '1': 'SessionSongEntry',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'part', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
    {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `SessionSongEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionSongEntryDescriptor = $convert.base64Decode(
    'ChBTZXNzaW9uU29uZ0VudHJ5EiAKBHVzZXIYASABKAsyDC5ic3QudjEuVXNlclIEdXNlchInCg'
    'RwYXJ0GAIgASgLMhMuYnN0LnYxLlNlc3Npb25QYXJ0UgRwYXJ0EhgKB2NvbW1lbnQYAyABKAlS'
    'B2NvbW1lbnQ=');

@$core.Deprecated('Use sessionSongPartDescriptor instead')
const SessionSongPart$json = {
  '1': 'SessionSongPart',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
    {'1': 'is_required', '3': 2, '4': 1, '5': 8, '10': 'isRequired'},
  ],
};

/// Descriptor for `SessionSongPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionSongPartDescriptor = $convert.base64Decode(
    'Cg9TZXNzaW9uU29uZ1BhcnQSJwoEcGFydBgBIAEoCzITLmJzdC52MS5TZXNzaW9uUGFydFIEcG'
    'FydBIfCgtpc19yZXF1aXJlZBgCIAEoCFIKaXNSZXF1aXJlZA==');

@$core.Deprecated('Use sessionSongDescriptor instead')
const SessionSong$json = {
  '1': 'SessionSong',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Song', '10': 'song'},
    {'1': 'entries', '3': 2, '4': 3, '5': 11, '6': '.bst.v1.SessionSongEntry', '10': 'entries'},
    {'1': 'parts', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.SessionSongPart', '10': 'parts'},
  ],
};

/// Descriptor for `SessionSong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionSongDescriptor = $convert.base64Decode(
    'CgtTZXNzaW9uU29uZxIgCgRzb25nGAEgASgLMgwuYnN0LnYxLlNvbmdSBHNvbmcSMgoHZW50cm'
    'llcxgCIAMoCzIYLmJzdC52MS5TZXNzaW9uU29uZ0VudHJ5UgdlbnRyaWVzEi0KBXBhcnRzGAMg'
    'AygLMhcuYnN0LnYxLlNlc3Npb25Tb25nUGFydFIFcGFydHM=');

@$core.Deprecated('Use timetableEntryDescriptor instead')
const TimetableEntry$json = {
  '1': 'TimetableEntry',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.TimetableEntry.TimetableEntryType', '10': 'type'},
    {'1': 'index', '3': 2, '4': 1, '5': 5, '10': 'index'},
    {'1': 'start', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'start'},
    {'1': 'end', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'end'},
  ],
  '4': [TimetableEntry_TimetableEntryType$json],
};

@$core.Deprecated('Use timetableEntryDescriptor instead')
const TimetableEntry_TimetableEntryType$json = {
  '1': 'TimetableEntryType',
  '2': [
    {'1': 'TIMETABLE_ENTRY_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'TIMETABLE_ENTRY_TYPE_TASK', '2': 1},
    {'1': 'TIMETABLE_ENTRY_TYPE_PERFORMANCE', '2': 2},
    {'1': 'TIMETABLE_ENTRY_TYPE_PARTY', '2': 3},
  ],
};

/// Descriptor for `TimetableEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timetableEntryDescriptor = $convert.base64Decode(
    'Cg5UaW1ldGFibGVFbnRyeRI9CgR0eXBlGAEgASgOMikuYnN0LnYxLlRpbWV0YWJsZUVudHJ5Ll'
    'RpbWV0YWJsZUVudHJ5VHlwZVIEdHlwZRIUCgVpbmRleBgCIAEoBVIFaW5kZXgSMAoFc3RhcnQY'
    'AyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgVzdGFydBIsCgNlbmQYBCABKAsyGi'
    '5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgNlbmQinwEKElRpbWV0YWJsZUVudHJ5VHlwZRIk'
    'CiBUSU1FVEFCTEVfRU5UUllfVFlQRV9VTlNQRUNJRklFRBAAEh0KGVRJTUVUQUJMRV9FTlRSWV'
    '9UWVBFX1RBU0sQARIkCiBUSU1FVEFCTEVfRU5UUllfVFlQRV9QRVJGT1JNQU5DRRACEh4KGlRJ'
    'TUVUQUJMRV9FTlRSWV9UWVBFX1BBUlRZEAM=');

@$core.Deprecated('Use timetableDescriptor instead')
const Timetable$json = {
  '1': 'Timetable',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.TimetableEntry', '10': 'entries'},
    {'1': 'tasks', '3': 2, '4': 3, '5': 11, '6': '.bst.v1.SessionTask', '10': 'tasks'},
    {'1': 'session_songs', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.SessionSong', '10': 'sessionSongs'},
    {'1': 'parties', '3': 4, '4': 3, '5': 11, '6': '.bst.v1.Party', '10': 'parties'},
  ],
};

/// Descriptor for `Timetable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timetableDescriptor = $convert.base64Decode(
    'CglUaW1ldGFibGUSMAoHZW50cmllcxgBIAMoCzIWLmJzdC52MS5UaW1ldGFibGVFbnRyeVIHZW'
    '50cmllcxIpCgV0YXNrcxgCIAMoCzITLmJzdC52MS5TZXNzaW9uVGFza1IFdGFza3MSOAoNc2Vz'
    'c2lvbl9zb25ncxgDIAMoCzITLmJzdC52MS5TZXNzaW9uU29uZ1IMc2Vzc2lvblNvbmdzEicKB3'
    'BhcnRpZXMYBCADKAsyDS5ic3QudjEuUGFydHlSB3BhcnRpZXM=');

@$core.Deprecated('Use sessionFeedbackDescriptor instead')
const SessionFeedback$json = {
  '1': 'SessionFeedback',
  '2': [
    {'1': 'score', '3': 1, '4': 1, '5': 5, '10': 'score'},
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'user', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `SessionFeedback`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFeedbackDescriptor = $convert.base64Decode(
    'Cg9TZXNzaW9uRmVlZGJhY2sSFAoFc2NvcmUYASABKAVSBXNjb3JlEhgKB2NvbW1lbnQYAiABKA'
    'lSB2NvbW1lbnQSIAoEdXNlchgDIAEoCzIMLmJzdC52MS5Vc2VyUgR1c2VyEjkKCmNyZWF0ZWRf'
    'YXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

