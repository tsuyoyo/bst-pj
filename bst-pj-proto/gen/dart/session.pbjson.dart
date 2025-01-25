//
//  Generated code. Do not modify.
//  source: session.proto
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
    {'1': 'SESSION_STATUS_IN_DRAFT', '2': 1},
    {'1': 'SESSION_STATUS_OPEN', '2': 2},
    {'1': 'SESSION_STATUS_ENTRY_OPEN', '2': 3},
    {'1': 'SESSION_STATUS_ENTRY_CLOSE', '2': 4},
    {'1': 'SESSION_STATUS_COMPLETED', '2': 5},
    {'1': 'SESSION_STATUS_CANCELLED', '2': 6},
  ],
};

/// Descriptor for `SessionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sessionStatusDescriptor = $convert.base64Decode(
    'Cg1TZXNzaW9uU3RhdHVzEh4KGlNFU1NJT05fU1RBVFVTX1VOU1BFQ0lGSUVEEAASGwoXU0VTU0'
    'lPTl9TVEFUVVNfSU5fRFJBRlQQARIXChNTRVNTSU9OX1NUQVRVU19PUEVOEAISHQoZU0VTU0lP'
    'Tl9TVEFUVVNfRU5UUllfT1BFThADEh4KGlNFU1NJT05fU1RBVFVTX0VOVFJZX0NMT1NFEAQSHA'
    'oYU0VTU0lPTl9TVEFUVVNfQ09NUExFVEVEEAUSHAoYU0VTU0lPTl9TVEFUVVNfQ0FOQ0VMTEVE'
    'EAY=');

@$core.Deprecated('Use sessionParticipantRoleDescriptor instead')
const SessionParticipantRole$json = {
  '1': 'SessionParticipantRole',
  '2': [
    {'1': 'SESSION_PARTICIPANT_ROLE_UNSPECIFIED', '2': 0},
    {'1': 'SESSION_PARTICIPANT_ROLE_ORGANIZER', '2': 1},
    {'1': 'SESSION_PARTICIPANT_ROLE_PLAYER', '2': 2},
  ],
};

/// Descriptor for `SessionParticipantRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sessionParticipantRoleDescriptor = $convert.base64Decode(
    'ChZTZXNzaW9uUGFydGljaXBhbnRSb2xlEigKJFNFU1NJT05fUEFSVElDSVBBTlRfUk9MRV9VTl'
    'NQRUNJRklFRBAAEiYKIlNFU1NJT05fUEFSVElDSVBBTlRfUk9MRV9PUkdBTklaRVIQARIjCh9T'
    'RVNTSU9OX1BBUlRJQ0lQQU5UX1JPTEVfUExBWUVSEAI=');

@$core.Deprecated('Use timetableEntryTypeDescriptor instead')
const TimetableEntryType$json = {
  '1': 'TimetableEntryType',
  '2': [
    {'1': 'TIMETABLE_ENTRY_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'TIMETABLE_ENTRY_TYPE_TASK', '2': 1},
    {'1': 'TIMETABLE_ENTRY_TYPE_PERFORMANCE', '2': 2},
    {'1': 'TIMETABLE_ENTRY_TYPE_PARTY', '2': 3},
  ],
};

/// Descriptor for `TimetableEntryType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List timetableEntryTypeDescriptor = $convert.base64Decode(
    'ChJUaW1ldGFibGVFbnRyeVR5cGUSJAogVElNRVRBQkxFX0VOVFJZX1RZUEVfVU5TUEVDSUZJRU'
    'QQABIdChlUSU1FVEFCTEVfRU5UUllfVFlQRV9UQVNLEAESJAogVElNRVRBQkxFX0VOVFJZX1RZ'
    'UEVfUEVSRk9STUFOQ0UQAhIeChpUSU1FVEFCTEVfRU5UUllfVFlQRV9QQVJUWRAD');

@$core.Deprecated('Use sessionDescriptor instead')
const Session$json = {
  '1': 'Session',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'timeline', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.SessionTimelineDate', '10': 'timeline'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.bst.v1.SessionStatus', '10': 'status'},
    {'1': 'participantsNum', '3': 5, '4': 1, '5': 5, '10': 'participantsNum'},
  ],
};

/// Descriptor for `Session`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDescriptor = $convert.base64Decode(
    'CgdTZXNzaW9uEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSNwoIdGltZW'
    'xpbmUYAyABKAsyGy5ic3QudjEuU2Vzc2lvblRpbWVsaW5lRGF0ZVIIdGltZWxpbmUSLQoGc3Rh'
    'dHVzGAQgASgOMhUuYnN0LnYxLlNlc3Npb25TdGF0dXNSBnN0YXR1cxIoCg9wYXJ0aWNpcGFudH'
    'NOdW0YBSABKAVSD3BhcnRpY2lwYW50c051bQ==');

@$core.Deprecated('Use sessionTimelineDateDescriptor instead')
const SessionTimelineDate$json = {
  '1': 'SessionTimelineDate',
  '2': [
    {'1': 'createdAt', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'entryOpen', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'entryOpen'},
    {'1': 'entryClose', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'entryClose'},
    {'1': 'eventDate', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'eventDate'},
  ],
};

/// Descriptor for `SessionTimelineDate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionTimelineDateDescriptor = $convert.base64Decode(
    'ChNTZXNzaW9uVGltZWxpbmVEYXRlEjgKCWNyZWF0ZWRBdBgBIAEoCzIaLmdvb2dsZS5wcm90b2'
    'J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI4CgllbnRyeU9wZW4YAiABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUgllbnRyeU9wZW4SOgoKZW50cnlDbG9zZRgDIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBSCmVudHJ5Q2xvc2USOAoJZXZlbnREYXRlGAQgASgLMhouZ29v'
    'Z2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZXZlbnREYXRl');

@$core.Deprecated('Use sessionDetailDescriptor instead')
const SessionDetail$json = {
  '1': 'SessionDetail',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Session', '10': 'session'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'parts', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.SessionPart', '10': 'parts'},
    {'1': 'participants', '3': 4, '4': 3, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'participants'},
    {'1': 'timetable', '3': 5, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `SessionDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDetailDescriptor = $convert.base64Decode(
    'Cg1TZXNzaW9uRGV0YWlsEikKB3Nlc3Npb24YASABKAsyDy5ic3QudjEuU2Vzc2lvblIHc2Vzc2'
    'lvbhIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SKQoFcGFydHMYAyADKAsyEy5i'
    'c3QudjEuU2Vzc2lvblBhcnRSBXBhcnRzEj4KDHBhcnRpY2lwYW50cxgEIAMoCzIaLmJzdC52MS'
    '5TZXNzaW9uUGFydGljaXBhbnRSDHBhcnRpY2lwYW50cxIvCgl0aW1ldGFibGUYBSABKAsyES5i'
    'c3QudjEuVGltZXRhYmxlUgl0aW1ldGFibGU=');

@$core.Deprecated('Use sessionPartDescriptor instead')
const SessionPart$json = {
  '1': 'SessionPart',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Part', '10': 'part'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SessionPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionPartDescriptor = $convert.base64Decode(
    'CgtTZXNzaW9uUGFydBIgCgRwYXJ0GAEgASgLMgwuYnN0LnYxLlBhcnRSBHBhcnQSEgoEbmFtZR'
    'gCIAEoCVIEbmFtZQ==');

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
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'role', '3': 3, '4': 1, '5': 14, '6': '.bst.v1.SessionParticipantRole', '10': 'role'},
    {'1': 'user', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
  ],
};

/// Descriptor for `SessionParticipant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionParticipantDescriptor = $convert.base64Decode(
    'ChJTZXNzaW9uUGFydGljaXBhbnQSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USMgoEcm9sZRgDIAEoDjIeLmJzdC52MS5TZXNzaW9uUGFydGljaXBhbnRSb2xlUgRyb2xlEiAK'
    'BHVzZXIYBCABKAsyDC5ic3QudjEuVXNlclIEdXNlcg==');

@$core.Deprecated('Use songPerformanceEntryDescriptor instead')
const SongPerformanceEntry$json = {
  '1': 'SongPerformanceEntry',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'part', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
  ],
};

/// Descriptor for `SongPerformanceEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songPerformanceEntryDescriptor = $convert.base64Decode(
    'ChRTb25nUGVyZm9ybWFuY2VFbnRyeRIgCgR1c2VyGAEgASgLMgwuYnN0LnYxLlVzZXJSBHVzZX'
    'ISJwoEcGFydBgCIAEoCzITLmJzdC52MS5TZXNzaW9uUGFydFIEcGFydA==');

@$core.Deprecated('Use songPerformancePartDescriptor instead')
const SongPerformancePart$json = {
  '1': 'SongPerformancePart',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
    {'1': 'isRequired', '3': 2, '4': 1, '5': 8, '10': 'isRequired'},
  ],
};

/// Descriptor for `SongPerformancePart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songPerformancePartDescriptor = $convert.base64Decode(
    'ChNTb25nUGVyZm9ybWFuY2VQYXJ0EicKBHBhcnQYASABKAsyEy5ic3QudjEuU2Vzc2lvblBhcn'
    'RSBHBhcnQSHgoKaXNSZXF1aXJlZBgCIAEoCFIKaXNSZXF1aXJlZA==');

@$core.Deprecated('Use songPerformanceDescriptor instead')
const SongPerformance$json = {
  '1': 'SongPerformance',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Song', '10': 'song'},
    {'1': 'entries', '3': 2, '4': 3, '5': 11, '6': '.bst.v1.SongPerformanceEntry', '10': 'entries'},
    {'1': 'parts', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.SongPerformancePart', '10': 'parts'},
  ],
};

/// Descriptor for `SongPerformance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songPerformanceDescriptor = $convert.base64Decode(
    'Cg9Tb25nUGVyZm9ybWFuY2USIAoEc29uZxgBIAEoCzIMLmJzdC52MS5Tb25nUgRzb25nEjYKB2'
    'VudHJpZXMYAiADKAsyHC5ic3QudjEuU29uZ1BlcmZvcm1hbmNlRW50cnlSB2VudHJpZXMSMQoF'
    'cGFydHMYAyADKAsyGy5ic3QudjEuU29uZ1BlcmZvcm1hbmNlUGFydFIFcGFydHM=');

@$core.Deprecated('Use timetableEntryDescriptor instead')
const TimetableEntry$json = {
  '1': 'TimetableEntry',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.TimetableEntryType', '10': 'type'},
    {'1': 'index', '3': 2, '4': 1, '5': 5, '10': 'index'},
    {'1': 'start', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'start'},
    {'1': 'end', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'end'},
  ],
};

/// Descriptor for `TimetableEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timetableEntryDescriptor = $convert.base64Decode(
    'Cg5UaW1ldGFibGVFbnRyeRIuCgR0eXBlGAEgASgOMhouYnN0LnYxLlRpbWV0YWJsZUVudHJ5VH'
    'lwZVIEdHlwZRIUCgVpbmRleBgCIAEoBVIFaW5kZXgSMAoFc3RhcnQYAyABKAsyGi5nb29nbGUu'
    'cHJvdG9idWYuVGltZXN0YW1wUgVzdGFydBIsCgNlbmQYBCABKAsyGi5nb29nbGUucHJvdG9idW'
    'YuVGltZXN0YW1wUgNlbmQ=');

@$core.Deprecated('Use timetableDescriptor instead')
const Timetable$json = {
  '1': 'Timetable',
  '2': [
    {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.TimetableEntry', '10': 'entries'},
    {'1': 'tasks', '3': 2, '4': 3, '5': 11, '6': '.bst.v1.SessionTask', '10': 'tasks'},
    {'1': 'songPerformances', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.SongPerformance', '10': 'songPerformances'},
    {'1': 'parties', '3': 4, '4': 3, '5': 11, '6': '.bst.v1.Party', '10': 'parties'},
  ],
};

/// Descriptor for `Timetable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timetableDescriptor = $convert.base64Decode(
    'CglUaW1ldGFibGUSMAoHZW50cmllcxgBIAMoCzIWLmJzdC52MS5UaW1ldGFibGVFbnRyeVIHZW'
    '50cmllcxIpCgV0YXNrcxgCIAMoCzITLmJzdC52MS5TZXNzaW9uVGFza1IFdGFza3MSQwoQc29u'
    'Z1BlcmZvcm1hbmNlcxgDIAMoCzIXLmJzdC52MS5Tb25nUGVyZm9ybWFuY2VSEHNvbmdQZXJmb3'
    'JtYW5jZXMSJwoHcGFydGllcxgEIAMoCzINLmJzdC52MS5QYXJ0eVIHcGFydGllcw==');

