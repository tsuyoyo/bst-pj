//
//  Generated code. Do not modify.
//  source: bst/v1/session-service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createSessionRequestDescriptor instead')
const CreateSessionRequest$json = {
  '1': 'CreateSessionRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'eventDate', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'eventDate'},
  ],
};

/// Descriptor for `CreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTZXNzaW9uUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAiABKAlSC2Rlc2NyaXB0aW9uEjgKCWV2ZW50RGF0ZRgDIAEoCzIaLmdvb2dsZS5wcm90'
    'b2J1Zi5UaW1lc3RhbXBSCWV2ZW50RGF0ZQ==');

@$core.Deprecated('Use createSessionResponseDescriptor instead')
const CreateSessionResponse$json = {
  '1': 'CreateSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Session', '10': 'session'},
  ],
};

/// Descriptor for `CreateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTZXNzaW9uUmVzcG9uc2USKQoHc2Vzc2lvbhgBIAEoCzIPLmJzdC52MS5TZXNzaW'
    '9uUgdzZXNzaW9u');

@$core.Deprecated('Use getSessionRequestDescriptor instead')
const GetSessionRequest$json = {
  '1': 'GetSessionRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionRequestDescriptor = $convert.base64Decode(
    'ChFHZXRTZXNzaW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb25JZA==');

@$core.Deprecated('Use getSessionResponseDescriptor instead')
const GetSessionResponse$json = {
  '1': 'GetSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'session'},
  ],
};

/// Descriptor for `GetSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionResponseDescriptor = $convert.base64Decode(
    'ChJHZXRTZXNzaW9uUmVzcG9uc2USLwoHc2Vzc2lvbhgBIAEoCzIVLmJzdC52MS5TZXNzaW9uRG'
    'V0YWlsUgdzZXNzaW9u');

@$core.Deprecated('Use updateSessionRequestDescriptor instead')
const UpdateSessionRequest$json = {
  '1': 'UpdateSessionRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'eventDate', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'eventDate'},
  ],
};

/// Descriptor for `UpdateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTZXNzaW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb25JZBIUCg'
    'V0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEjgK'
    'CWV2ZW50RGF0ZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV2ZW50RGF0ZQ'
    '==');

@$core.Deprecated('Use updateSessionResponseDescriptor instead')
const UpdateSessionResponse$json = {
  '1': 'UpdateSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'session'},
  ],
};

/// Descriptor for `UpdateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVTZXNzaW9uUmVzcG9uc2USLwoHc2Vzc2lvbhgBIAEoCzIVLmJzdC52MS5TZXNzaW'
    '9uRGV0YWlsUgdzZXNzaW9u');

@$core.Deprecated('Use updateSessionStatusRequestDescriptor instead')
const UpdateSessionStatusRequest$json = {
  '1': 'UpdateSessionStatusRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.bst.v1.SessionStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdateSessionStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionStatusRequestDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVTZXNzaW9uU3RhdHVzUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb2'
    '5JZBItCgZzdGF0dXMYAiABKA4yFS5ic3QudjEuU2Vzc2lvblN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use updateSessionStatusResponseDescriptor instead')
const UpdateSessionStatusResponse$json = {
  '1': 'UpdateSessionStatusResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'session'},
  ],
};

/// Descriptor for `UpdateSessionStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionStatusResponseDescriptor = $convert.base64Decode(
    'ChtVcGRhdGVTZXNzaW9uU3RhdHVzUmVzcG9uc2USLwoHc2Vzc2lvbhgBIAEoCzIVLmJzdC52MS'
    '5TZXNzaW9uRGV0YWlsUgdzZXNzaW9u');

@$core.Deprecated('Use cancelSessionRequestDescriptor instead')
const CancelSessionRequest$json = {
  '1': 'CancelSessionRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `CancelSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelSessionRequestDescriptor = $convert.base64Decode(
    'ChRDYW5jZWxTZXNzaW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb25JZBIWCg'
    'ZyZWFzb24YAiABKAlSBnJlYXNvbg==');

@$core.Deprecated('Use cancelSessionResponseDescriptor instead')
const CancelSessionResponse$json = {
  '1': 'CancelSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'session'},
  ],
};

/// Descriptor for `CancelSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelSessionResponseDescriptor = $convert.base64Decode(
    'ChVDYW5jZWxTZXNzaW9uUmVzcG9uc2USLwoHc2Vzc2lvbhgBIAEoCzIVLmJzdC52MS5TZXNzaW'
    '9uRGV0YWlsUgdzZXNzaW9u');

@$core.Deprecated('Use duplicateSessionRequestDescriptor instead')
const DuplicateSessionRequest$json = {
  '1': 'DuplicateSessionRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'newEventDate', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'newEventDate'},
  ],
};

/// Descriptor for `DuplicateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List duplicateSessionRequestDescriptor = $convert.base64Decode(
    'ChdEdXBsaWNhdGVTZXNzaW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb25JZB'
    'I+CgxuZXdFdmVudERhdGUYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgxuZXdF'
    'dmVudERhdGU=');

@$core.Deprecated('Use duplicateSessionResponseDescriptor instead')
const DuplicateSessionResponse$json = {
  '1': 'DuplicateSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'session'},
  ],
};

/// Descriptor for `DuplicateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List duplicateSessionResponseDescriptor = $convert.base64Decode(
    'ChhEdXBsaWNhdGVTZXNzaW9uUmVzcG9uc2USLwoHc2Vzc2lvbhgBIAEoCzIVLmJzdC52MS5TZX'
    'NzaW9uRGV0YWlsUgdzZXNzaW9u');

@$core.Deprecated('Use addSessionPartRequestDescriptor instead')
const AddSessionPartRequest$json = {
  '1': 'AddSessionPartRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'part', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
  ],
};

/// Descriptor for `AddSessionPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionPartRequestDescriptor = $convert.base64Decode(
    'ChVBZGRTZXNzaW9uUGFydFJlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSWQSJw'
    'oEcGFydBgCIAEoCzITLmJzdC52MS5TZXNzaW9uUGFydFIEcGFydA==');

@$core.Deprecated('Use addSessionPartResponseDescriptor instead')
const AddSessionPartResponse$json = {
  '1': 'AddSessionPartResponse',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
  ],
};

/// Descriptor for `AddSessionPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionPartResponseDescriptor = $convert.base64Decode(
    'ChZBZGRTZXNzaW9uUGFydFJlc3BvbnNlEicKBHBhcnQYASABKAsyEy5ic3QudjEuU2Vzc2lvbl'
    'BhcnRSBHBhcnQ=');

@$core.Deprecated('Use updateSessionPartRequestDescriptor instead')
const UpdateSessionPartRequest$json = {
  '1': 'UpdateSessionPartRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'partId', '3': 2, '4': 1, '5': 5, '10': 'partId'},
    {'1': 'part', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
  ],
};

/// Descriptor for `UpdateSessionPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionPartRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTZXNzaW9uUGFydFJlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSW'
    'QSFgoGcGFydElkGAIgASgFUgZwYXJ0SWQSJwoEcGFydBgDIAEoCzITLmJzdC52MS5TZXNzaW9u'
    'UGFydFIEcGFydA==');

@$core.Deprecated('Use updateSessionPartResponseDescriptor instead')
const UpdateSessionPartResponse$json = {
  '1': 'UpdateSessionPartResponse',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
  ],
};

/// Descriptor for `UpdateSessionPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionPartResponseDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVTZXNzaW9uUGFydFJlc3BvbnNlEicKBHBhcnQYASABKAsyEy5ic3QudjEuU2Vzc2'
    'lvblBhcnRSBHBhcnQ=');

@$core.Deprecated('Use deleteSessionPartRequestDescriptor instead')
const DeleteSessionPartRequest$json = {
  '1': 'DeleteSessionPartRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'partId', '3': 2, '4': 1, '5': 5, '10': 'partId'},
  ],
};

/// Descriptor for `DeleteSessionPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionPartRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVTZXNzaW9uUGFydFJlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSW'
    'QSFgoGcGFydElkGAIgASgFUgZwYXJ0SWQ=');

@$core.Deprecated('Use deleteSessionPartResponseDescriptor instead')
const DeleteSessionPartResponse$json = {
  '1': 'DeleteSessionPartResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionPartResponseDescriptor = $convert.base64Decode(
    'ChlEZWxldGVTZXNzaW9uUGFydFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use updateSessionScheduleRequestDescriptor instead')
const UpdateSessionScheduleRequest$json = {
  '1': 'UpdateSessionScheduleRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'timetable', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `UpdateSessionScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionScheduleRequestDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVTZXNzaW9uU2NoZWR1bGVSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2'
    'lvbklkEi8KCXRpbWV0YWJsZRgCIAEoCzIRLmJzdC52MS5UaW1ldGFibGVSCXRpbWV0YWJsZQ==');

@$core.Deprecated('Use updateSessionScheduleResponseDescriptor instead')
const UpdateSessionScheduleResponse$json = {
  '1': 'UpdateSessionScheduleResponse',
  '2': [
    {'1': 'timetable', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `UpdateSessionScheduleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionScheduleResponseDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVTZXNzaW9uU2NoZWR1bGVSZXNwb25zZRIvCgl0aW1ldGFibGUYASABKAsyES5ic3'
    'QudjEuVGltZXRhYmxlUgl0aW1ldGFibGU=');

@$core.Deprecated('Use updateSessionLocationRequestDescriptor instead')
const UpdateSessionLocationRequest$json = {
  '1': 'UpdateSessionLocationRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
  ],
};

/// Descriptor for `UpdateSessionLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionLocationRequestDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVTZXNzaW9uTG9jYXRpb25SZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2'
    'lvbklkEiwKCGxvY2F0aW9uGAIgASgLMhAuYnN0LnYxLkxvY2F0aW9uUghsb2NhdGlvbg==');

@$core.Deprecated('Use updateSessionLocationResponseDescriptor instead')
const UpdateSessionLocationResponse$json = {
  '1': 'UpdateSessionLocationResponse',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
  ],
};

/// Descriptor for `UpdateSessionLocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionLocationResponseDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVTZXNzaW9uTG9jYXRpb25SZXNwb25zZRIsCghsb2NhdGlvbhgBIAEoCzIQLmJzdC'
    '52MS5Mb2NhdGlvblIIbG9jYXRpb24=');

@$core.Deprecated('Use listSessionParticipantsRequestDescriptor instead')
const ListSessionParticipantsRequest$json = {
  '1': 'ListSessionParticipantsRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionParticipantsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionParticipantsRequestDescriptor = $convert.base64Decode(
    'Ch5MaXN0U2Vzc2lvblBhcnRpY2lwYW50c1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZX'
    'NzaW9uSWQ=');

@$core.Deprecated('Use listSessionParticipantsResponseDescriptor instead')
const ListSessionParticipantsResponse$json = {
  '1': 'ListSessionParticipantsResponse',
  '2': [
    {'1': 'participants', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'participants'},
  ],
};

/// Descriptor for `ListSessionParticipantsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionParticipantsResponseDescriptor = $convert.base64Decode(
    'Ch9MaXN0U2Vzc2lvblBhcnRpY2lwYW50c1Jlc3BvbnNlEj4KDHBhcnRpY2lwYW50cxgBIAMoCz'
    'IaLmJzdC52MS5TZXNzaW9uUGFydGljaXBhbnRSDHBhcnRpY2lwYW50cw==');

@$core.Deprecated('Use addSessionParticipantRequestDescriptor instead')
const AddSessionParticipantRequest$json = {
  '1': 'AddSessionParticipantRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'participant', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `AddSessionParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionParticipantRequestDescriptor = $convert.base64Decode(
    'ChxBZGRTZXNzaW9uUGFydGljaXBhbnRSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2'
    'lvbklkEjwKC3BhcnRpY2lwYW50GAIgASgLMhouYnN0LnYxLlNlc3Npb25QYXJ0aWNpcGFudFIL'
    'cGFydGljaXBhbnQ=');

@$core.Deprecated('Use addSessionParticipantResponseDescriptor instead')
const AddSessionParticipantResponse$json = {
  '1': 'AddSessionParticipantResponse',
  '2': [
    {'1': 'participant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `AddSessionParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionParticipantResponseDescriptor = $convert.base64Decode(
    'Ch1BZGRTZXNzaW9uUGFydGljaXBhbnRSZXNwb25zZRI8CgtwYXJ0aWNpcGFudBgBIAEoCzIaLm'
    'JzdC52MS5TZXNzaW9uUGFydGljaXBhbnRSC3BhcnRpY2lwYW50');

@$core.Deprecated('Use updateSessionParticipantRequestDescriptor instead')
const UpdateSessionParticipantRequest$json = {
  '1': 'UpdateSessionParticipantRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'participantId', '3': 2, '4': 1, '5': 5, '10': 'participantId'},
    {'1': 'participant', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `UpdateSessionParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionParticipantRequestDescriptor = $convert.base64Decode(
    'Ch9VcGRhdGVTZXNzaW9uUGFydGljaXBhbnRSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2'
    'Vzc2lvbklkEiQKDXBhcnRpY2lwYW50SWQYAiABKAVSDXBhcnRpY2lwYW50SWQSPAoLcGFydGlj'
    'aXBhbnQYAyABKAsyGi5ic3QudjEuU2Vzc2lvblBhcnRpY2lwYW50UgtwYXJ0aWNpcGFudA==');

@$core.Deprecated('Use updateSessionParticipantResponseDescriptor instead')
const UpdateSessionParticipantResponse$json = {
  '1': 'UpdateSessionParticipantResponse',
  '2': [
    {'1': 'participant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `UpdateSessionParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionParticipantResponseDescriptor = $convert.base64Decode(
    'CiBVcGRhdGVTZXNzaW9uUGFydGljaXBhbnRSZXNwb25zZRI8CgtwYXJ0aWNpcGFudBgBIAEoCz'
    'IaLmJzdC52MS5TZXNzaW9uUGFydGljaXBhbnRSC3BhcnRpY2lwYW50');

@$core.Deprecated('Use listSessionSongsRequestDescriptor instead')
const ListSessionSongsRequest$json = {
  '1': 'ListSessionSongsRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongsRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0U2Vzc2lvblNvbmdzUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb25JZA'
    '==');

@$core.Deprecated('Use listSessionSongsResponseDescriptor instead')
const ListSessionSongsResponse$json = {
  '1': 'ListSessionSongsResponse',
  '2': [
    {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.SongPerformance', '10': 'songs'},
  ],
};

/// Descriptor for `ListSessionSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0U2Vzc2lvblNvbmdzUmVzcG9uc2USLQoFc29uZ3MYASADKAsyFy5ic3QudjEuU29uZ1'
    'BlcmZvcm1hbmNlUgVzb25ncw==');

@$core.Deprecated('Use getSessionSongRequestDescriptor instead')
const GetSessionSongRequest$json = {
  '1': 'GetSessionSongRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
  ],
};

/// Descriptor for `GetSessionSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionSongRequestDescriptor = $convert.base64Decode(
    'ChVHZXRTZXNzaW9uU29uZ1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSWQSFg'
    'oGc29uZ0lkGAIgASgFUgZzb25nSWQ=');

@$core.Deprecated('Use getSessionSongResponseDescriptor instead')
const GetSessionSongResponse$json = {
  '1': 'GetSessionSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SongPerformance', '10': 'song'},
  ],
};

/// Descriptor for `GetSessionSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionSongResponseDescriptor = $convert.base64Decode(
    'ChZHZXRTZXNzaW9uU29uZ1Jlc3BvbnNlEisKBHNvbmcYASABKAsyFy5ic3QudjEuU29uZ1Blcm'
    'Zvcm1hbmNlUgRzb25n');

@$core.Deprecated('Use updateSessionSongRequestDescriptor instead')
const UpdateSessionSongRequest$json = {
  '1': 'UpdateSessionSongRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'song', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.SongPerformance', '10': 'song'},
  ],
};

/// Descriptor for `UpdateSessionSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionSongRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTZXNzaW9uU29uZ1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSW'
    'QSFgoGc29uZ0lkGAIgASgFUgZzb25nSWQSKwoEc29uZxgDIAEoCzIXLmJzdC52MS5Tb25nUGVy'
    'Zm9ybWFuY2VSBHNvbmc=');

@$core.Deprecated('Use updateSessionSongResponseDescriptor instead')
const UpdateSessionSongResponse$json = {
  '1': 'UpdateSessionSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SongPerformance', '10': 'song'},
  ],
};

/// Descriptor for `UpdateSessionSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionSongResponseDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVTZXNzaW9uU29uZ1Jlc3BvbnNlEisKBHNvbmcYASABKAsyFy5ic3QudjEuU29uZ1'
    'BlcmZvcm1hbmNlUgRzb25n');

@$core.Deprecated('Use deleteSessionSongRequestDescriptor instead')
const DeleteSessionSongRequest$json = {
  '1': 'DeleteSessionSongRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
  ],
};

/// Descriptor for `DeleteSessionSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionSongRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVTZXNzaW9uU29uZ1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSW'
    'QSFgoGc29uZ0lkGAIgASgFUgZzb25nSWQ=');

@$core.Deprecated('Use deleteSessionSongResponseDescriptor instead')
const DeleteSessionSongResponse$json = {
  '1': 'DeleteSessionSongResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionSongResponseDescriptor = $convert.base64Decode(
    'ChlEZWxldGVTZXNzaW9uU29uZ1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use addSongEntryRequestDescriptor instead')
const AddSongEntryRequest$json = {
  '1': 'AddSongEntryRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'entry', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.SongPerformanceEntry', '10': 'entry'},
  ],
};

/// Descriptor for `AddSongEntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongEntryRequestDescriptor = $convert.base64Decode(
    'ChNBZGRTb25nRW50cnlSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2lvbklkEhYKBn'
    'NvbmdJZBgCIAEoBVIGc29uZ0lkEjIKBWVudHJ5GAMgASgLMhwuYnN0LnYxLlNvbmdQZXJmb3Jt'
    'YW5jZUVudHJ5UgVlbnRyeQ==');

@$core.Deprecated('Use addSongEntryResponseDescriptor instead')
const AddSongEntryResponse$json = {
  '1': 'AddSongEntryResponse',
  '2': [
    {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SongPerformanceEntry', '10': 'entry'},
  ],
};

/// Descriptor for `AddSongEntryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongEntryResponseDescriptor = $convert.base64Decode(
    'ChRBZGRTb25nRW50cnlSZXNwb25zZRIyCgVlbnRyeRgBIAEoCzIcLmJzdC52MS5Tb25nUGVyZm'
    '9ybWFuY2VFbnRyeVIFZW50cnk=');

@$core.Deprecated('Use deleteSongEntryRequestDescriptor instead')
const DeleteSongEntryRequest$json = {
  '1': 'DeleteSongEntryRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'entryId', '3': 3, '4': 1, '5': 5, '10': 'entryId'},
  ],
};

/// Descriptor for `DeleteSongEntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongEntryRequestDescriptor = $convert.base64Decode(
    'ChZEZWxldGVTb25nRW50cnlSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2lvbklkEh'
    'YKBnNvbmdJZBgCIAEoBVIGc29uZ0lkEhgKB2VudHJ5SWQYAyABKAVSB2VudHJ5SWQ=');

@$core.Deprecated('Use deleteSongEntryResponseDescriptor instead')
const DeleteSongEntryResponse$json = {
  '1': 'DeleteSongEntryResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSongEntryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongEntryResponseDescriptor = $convert.base64Decode(
    'ChdEZWxldGVTb25nRW50cnlSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use addSessionSongResourceRequestDescriptor instead')
const AddSessionSongResourceRequest$json = {
  '1': 'AddSessionSongResourceRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'resource', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSessionSongResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionSongResourceRequestDescriptor = $convert.base64Decode(
    'Ch1BZGRTZXNzaW9uU29uZ1Jlc291cmNlUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3'
    'Npb25JZBIWCgZzb25nSWQYAiABKAVSBnNvbmdJZBIsCghyZXNvdXJjZRgDIAEoCzIQLmJzdC52'
    'MS5SZXNvdXJjZVIIcmVzb3VyY2U=');

@$core.Deprecated('Use addSessionSongResourceResponseDescriptor instead')
const AddSessionSongResourceResponse$json = {
  '1': 'AddSessionSongResourceResponse',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSessionSongResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionSongResourceResponseDescriptor = $convert.base64Decode(
    'Ch5BZGRTZXNzaW9uU29uZ1Jlc291cmNlUmVzcG9uc2USLAoIcmVzb3VyY2UYASABKAsyEC5ic3'
    'QudjEuUmVzb3VyY2VSCHJlc291cmNl');

@$core.Deprecated('Use listSessionSongResourcesRequestDescriptor instead')
const ListSessionSongResourcesRequest$json = {
  '1': 'ListSessionSongResourcesRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
  ],
};

/// Descriptor for `ListSessionSongResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongResourcesRequestDescriptor = $convert.base64Decode(
    'Ch9MaXN0U2Vzc2lvblNvbmdSZXNvdXJjZXNSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2'
    'Vzc2lvbklkEhYKBnNvbmdJZBgCIAEoBVIGc29uZ0lk');

@$core.Deprecated('Use listSessionSongResourcesResponseDescriptor instead')
const ListSessionSongResourcesResponse$json = {
  '1': 'ListSessionSongResourcesResponse',
  '2': [
    {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Resource', '10': 'resources'},
    {'1': 'nextPageToken', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'totalSize', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListSessionSongResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongResourcesResponseDescriptor = $convert.base64Decode(
    'CiBMaXN0U2Vzc2lvblNvbmdSZXNvdXJjZXNSZXNwb25zZRIuCglyZXNvdXJjZXMYASADKAsyEC'
    '5ic3QudjEuUmVzb3VyY2VSCXJlc291cmNlcxIkCg1uZXh0UGFnZVRva2VuGAIgASgJUg1uZXh0'
    'UGFnZVRva2VuEhwKCXRvdGFsU2l6ZRgDIAEoBVIJdG90YWxTaXpl');

@$core.Deprecated('Use deleteSessionSongResourceRequestDescriptor instead')
const DeleteSessionSongResourceRequest$json = {
  '1': 'DeleteSessionSongResourceRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'resourceId', '3': 3, '4': 1, '5': 5, '10': 'resourceId'},
  ],
};

/// Descriptor for `DeleteSessionSongResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionSongResourceRequestDescriptor = $convert.base64Decode(
    'CiBEZWxldGVTZXNzaW9uU29uZ1Jlc291cmNlUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCX'
    'Nlc3Npb25JZBIWCgZzb25nSWQYAiABKAVSBnNvbmdJZBIeCgpyZXNvdXJjZUlkGAMgASgFUgpy'
    'ZXNvdXJjZUlk');

@$core.Deprecated('Use deleteSessionSongResourceResponseDescriptor instead')
const DeleteSessionSongResourceResponse$json = {
  '1': 'DeleteSessionSongResourceResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionSongResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionSongResourceResponseDescriptor = $convert.base64Decode(
    'CiFEZWxldGVTZXNzaW9uU29uZ1Jlc291cmNlUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3'
    'VjY2Vzcw==');

@$core.Deprecated('Use listSessionOrganizersRequestDescriptor instead')
const ListSessionOrganizersRequest$json = {
  '1': 'ListSessionOrganizersRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionOrganizersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionOrganizersRequestDescriptor = $convert.base64Decode(
    'ChxMaXN0U2Vzc2lvbk9yZ2FuaXplcnNSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2'
    'lvbklk');

@$core.Deprecated('Use listSessionOrganizersResponseDescriptor instead')
const ListSessionOrganizersResponse$json = {
  '1': 'ListSessionOrganizersResponse',
  '2': [
    {'1': 'organizers', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'organizers'},
  ],
};

/// Descriptor for `ListSessionOrganizersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionOrganizersResponseDescriptor = $convert.base64Decode(
    'Ch1MaXN0U2Vzc2lvbk9yZ2FuaXplcnNSZXNwb25zZRI6Cgpvcmdhbml6ZXJzGAEgAygLMhouYn'
    'N0LnYxLlNlc3Npb25QYXJ0aWNpcGFudFIKb3JnYW5pemVycw==');

@$core.Deprecated('Use addSessionOrganizerRequestDescriptor instead')
const AddSessionOrganizerRequest$json = {
  '1': 'AddSessionOrganizerRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `AddSessionOrganizerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionOrganizerRequestDescriptor = $convert.base64Decode(
    'ChpBZGRTZXNzaW9uT3JnYW5pemVyUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb2'
    '5JZBIWCgZ1c2VySWQYAiABKAVSBnVzZXJJZA==');

@$core.Deprecated('Use addSessionOrganizerResponseDescriptor instead')
const AddSessionOrganizerResponse$json = {
  '1': 'AddSessionOrganizerResponse',
  '2': [
    {'1': 'organizer', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'organizer'},
  ],
};

/// Descriptor for `AddSessionOrganizerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionOrganizerResponseDescriptor = $convert.base64Decode(
    'ChtBZGRTZXNzaW9uT3JnYW5pemVyUmVzcG9uc2USOAoJb3JnYW5pemVyGAEgASgLMhouYnN0Ln'
    'YxLlNlc3Npb25QYXJ0aWNpcGFudFIJb3JnYW5pemVy');

@$core.Deprecated('Use deleteSessionOrganizerRequestDescriptor instead')
const DeleteSessionOrganizerRequest$json = {
  '1': 'DeleteSessionOrganizerRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `DeleteSessionOrganizerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionOrganizerRequestDescriptor = $convert.base64Decode(
    'Ch1EZWxldGVTZXNzaW9uT3JnYW5pemVyUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3'
    'Npb25JZBIWCgZ1c2VySWQYAiABKAVSBnVzZXJJZA==');

@$core.Deprecated('Use deleteSessionOrganizerResponseDescriptor instead')
const DeleteSessionOrganizerResponse$json = {
  '1': 'DeleteSessionOrganizerResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionOrganizerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionOrganizerResponseDescriptor = $convert.base64Decode(
    'Ch5EZWxldGVTZXNzaW9uT3JnYW5pemVyUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2'
    'Vzcw==');

@$core.Deprecated('Use createSessionThreadRequestDescriptor instead')
const CreateSessionThreadRequest$json = {
  '1': 'CreateSessionThreadRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'thread', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Thread', '10': 'thread'},
  ],
};

/// Descriptor for `CreateSessionThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionThreadRequestDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVTZXNzaW9uVGhyZWFkUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb2'
    '5JZBImCgZ0aHJlYWQYAiABKAsyDi5ic3QudjEuVGhyZWFkUgZ0aHJlYWQ=');

@$core.Deprecated('Use createSessionThreadResponseDescriptor instead')
const CreateSessionThreadResponse$json = {
  '1': 'CreateSessionThreadResponse',
  '2': [
    {'1': 'thread', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Thread', '10': 'thread'},
  ],
};

/// Descriptor for `CreateSessionThreadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionThreadResponseDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVTZXNzaW9uVGhyZWFkUmVzcG9uc2USJgoGdGhyZWFkGAEgASgLMg4uYnN0LnYxLl'
    'RocmVhZFIGdGhyZWFk');

@$core.Deprecated('Use listSessionThreadsRequestDescriptor instead')
const ListSessionThreadsRequest$json = {
  '1': 'ListSessionThreadsRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionThreadsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionThreadsRequestDescriptor = $convert.base64Decode(
    'ChlMaXN0U2Vzc2lvblRocmVhZHNSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2lvbk'
    'lk');

@$core.Deprecated('Use listSessionThreadsResponseDescriptor instead')
const ListSessionThreadsResponse$json = {
  '1': 'ListSessionThreadsResponse',
  '2': [
    {'1': 'threads', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Thread', '10': 'threads'},
  ],
};

/// Descriptor for `ListSessionThreadsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionThreadsResponseDescriptor = $convert.base64Decode(
    'ChpMaXN0U2Vzc2lvblRocmVhZHNSZXNwb25zZRIoCgd0aHJlYWRzGAEgAygLMg4uYnN0LnYxLl'
    'RocmVhZFIHdGhyZWFkcw==');

@$core.Deprecated('Use createSongThreadRequestDescriptor instead')
const CreateSongThreadRequest$json = {
  '1': 'CreateSongThreadRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'songId', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'thread', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Thread', '10': 'thread'},
  ],
};

/// Descriptor for `CreateSongThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSongThreadRequestDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVTb25nVGhyZWFkUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb25JZB'
    'IWCgZzb25nSWQYAiABKAVSBnNvbmdJZBImCgZ0aHJlYWQYAyABKAsyDi5ic3QudjEuVGhyZWFk'
    'UgZ0aHJlYWQ=');

@$core.Deprecated('Use createSongThreadResponseDescriptor instead')
const CreateSongThreadResponse$json = {
  '1': 'CreateSongThreadResponse',
  '2': [
    {'1': 'thread', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Thread', '10': 'thread'},
  ],
};

/// Descriptor for `CreateSongThreadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSongThreadResponseDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVTb25nVGhyZWFkUmVzcG9uc2USJgoGdGhyZWFkGAEgASgLMg4uYnN0LnYxLlRocm'
    'VhZFIGdGhyZWFk');

@$core.Deprecated('Use getSessionThreadRequestDescriptor instead')
const GetSessionThreadRequest$json = {
  '1': 'GetSessionThreadRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'threadId', '3': 2, '4': 1, '5': 5, '10': 'threadId'},
  ],
};

/// Descriptor for `GetSessionThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionThreadRequestDescriptor = $convert.base64Decode(
    'ChdHZXRTZXNzaW9uVGhyZWFkUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb25JZB'
    'IaCgh0aHJlYWRJZBgCIAEoBVIIdGhyZWFkSWQ=');

@$core.Deprecated('Use getSessionThreadResponseDescriptor instead')
const GetSessionThreadResponse$json = {
  '1': 'GetSessionThreadResponse',
  '2': [
    {'1': 'thread', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Thread', '10': 'thread'},
  ],
};

/// Descriptor for `GetSessionThreadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionThreadResponseDescriptor = $convert.base64Decode(
    'ChhHZXRTZXNzaW9uVGhyZWFkUmVzcG9uc2USJgoGdGhyZWFkGAEgASgLMg4uYnN0LnYxLlRocm'
    'VhZFIGdGhyZWFk');

@$core.Deprecated('Use deleteSessionThreadRequestDescriptor instead')
const DeleteSessionThreadRequest$json = {
  '1': 'DeleteSessionThreadRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'threadId', '3': 2, '4': 1, '5': 5, '10': 'threadId'},
  ],
};

/// Descriptor for `DeleteSessionThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionThreadRequestDescriptor = $convert.base64Decode(
    'ChpEZWxldGVTZXNzaW9uVGhyZWFkUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb2'
    '5JZBIaCgh0aHJlYWRJZBgCIAEoBVIIdGhyZWFkSWQ=');

@$core.Deprecated('Use deleteSessionThreadResponseDescriptor instead')
const DeleteSessionThreadResponse$json = {
  '1': 'DeleteSessionThreadResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionThreadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionThreadResponseDescriptor = $convert.base64Decode(
    'ChtEZWxldGVTZXNzaW9uVGhyZWFkUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw'
    '==');

@$core.Deprecated('Use createSessionNotificationRequestDescriptor instead')
const CreateSessionNotificationRequest$json = {
  '1': 'CreateSessionNotificationRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'userIds', '3': 3, '4': 3, '5': 5, '10': 'userIds'},
  ],
};

/// Descriptor for `CreateSessionNotificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionNotificationRequestDescriptor = $convert.base64Decode(
    'CiBDcmVhdGVTZXNzaW9uTm90aWZpY2F0aW9uUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCX'
    'Nlc3Npb25JZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW50EhgKB3VzZXJJZHMYAyADKAVSB3Vz'
    'ZXJJZHM=');

@$core.Deprecated('Use createSessionNotificationResponseDescriptor instead')
const CreateSessionNotificationResponse$json = {
  '1': 'CreateSessionNotificationResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CreateSessionNotificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionNotificationResponseDescriptor = $convert.base64Decode(
    'CiFDcmVhdGVTZXNzaW9uTm90aWZpY2F0aW9uUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3'
    'VjY2Vzcw==');

@$core.Deprecated('Use getSessionTimetableRequestDescriptor instead')
const GetSessionTimetableRequest$json = {
  '1': 'GetSessionTimetableRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetSessionTimetableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionTimetableRequestDescriptor = $convert.base64Decode(
    'ChpHZXRTZXNzaW9uVGltZXRhYmxlUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb2'
    '5JZA==');

@$core.Deprecated('Use getSessionTimetableResponseDescriptor instead')
const GetSessionTimetableResponse$json = {
  '1': 'GetSessionTimetableResponse',
  '2': [
    {'1': 'timetable', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `GetSessionTimetableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionTimetableResponseDescriptor = $convert.base64Decode(
    'ChtHZXRTZXNzaW9uVGltZXRhYmxlUmVzcG9uc2USLwoJdGltZXRhYmxlGAEgASgLMhEuYnN0Ln'
    'YxLlRpbWV0YWJsZVIJdGltZXRhYmxl');

@$core.Deprecated('Use updateSessionTimetableRequestDescriptor instead')
const UpdateSessionTimetableRequest$json = {
  '1': 'UpdateSessionTimetableRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'timetable', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `UpdateSessionTimetableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionTimetableRequestDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVTZXNzaW9uVGltZXRhYmxlUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3'
    'Npb25JZBIvCgl0aW1ldGFibGUYAiABKAsyES5ic3QudjEuVGltZXRhYmxlUgl0aW1ldGFibGU=');

@$core.Deprecated('Use updateSessionTimetableResponseDescriptor instead')
const UpdateSessionTimetableResponse$json = {
  '1': 'UpdateSessionTimetableResponse',
  '2': [
    {'1': 'timetable', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `UpdateSessionTimetableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionTimetableResponseDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVTZXNzaW9uVGltZXRhYmxlUmVzcG9uc2USLwoJdGltZXRhYmxlGAEgASgLMhEuYn'
    'N0LnYxLlRpbWV0YWJsZVIJdGltZXRhYmxl');

@$core.Deprecated('Use getOptimizedTimetableRequestDescriptor instead')
const GetOptimizedTimetableRequest$json = {
  '1': 'GetOptimizedTimetableRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'optimizationRules', '3': 2, '4': 3, '5': 9, '10': 'optimizationRules'},
  ],
};

/// Descriptor for `GetOptimizedTimetableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOptimizedTimetableRequestDescriptor = $convert.base64Decode(
    'ChxHZXRPcHRpbWl6ZWRUaW1ldGFibGVSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2'
    'lvbklkEiwKEW9wdGltaXphdGlvblJ1bGVzGAIgAygJUhFvcHRpbWl6YXRpb25SdWxlcw==');

@$core.Deprecated('Use getOptimizedTimetableResponseDescriptor instead')
const GetOptimizedTimetableResponse$json = {
  '1': 'GetOptimizedTimetableResponse',
  '2': [
    {'1': 'timetable', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `GetOptimizedTimetableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOptimizedTimetableResponseDescriptor = $convert.base64Decode(
    'Ch1HZXRPcHRpbWl6ZWRUaW1ldGFibGVSZXNwb25zZRIvCgl0aW1ldGFibGUYASABKAsyES5ic3'
    'QudjEuVGltZXRhYmxlUgl0aW1ldGFibGU=');

@$core.Deprecated('Use getTimetableProgressRequestDescriptor instead')
const GetTimetableProgressRequest$json = {
  '1': 'GetTimetableProgressRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetTimetableProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTimetableProgressRequestDescriptor = $convert.base64Decode(
    'ChtHZXRUaW1ldGFibGVQcm9ncmVzc1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW'
    '9uSWQ=');

@$core.Deprecated('Use getTimetableProgressResponseDescriptor instead')
const GetTimetableProgressResponse$json = {
  '1': 'GetTimetableProgressResponse',
  '2': [
    {'1': 'completedEntries', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.TimetableEntry', '10': 'completedEntries'},
    {'1': 'currentEntry', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.TimetableEntry', '10': 'currentEntry'},
  ],
};

/// Descriptor for `GetTimetableProgressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTimetableProgressResponseDescriptor = $convert.base64Decode(
    'ChxHZXRUaW1ldGFibGVQcm9ncmVzc1Jlc3BvbnNlEkIKEGNvbXBsZXRlZEVudHJpZXMYASADKA'
    'syFi5ic3QudjEuVGltZXRhYmxlRW50cnlSEGNvbXBsZXRlZEVudHJpZXMSOgoMY3VycmVudEVu'
    'dHJ5GAIgASgLMhYuYnN0LnYxLlRpbWV0YWJsZUVudHJ5UgxjdXJyZW50RW50cnk=');

@$core.Deprecated('Use updateTimetableProgressRequestDescriptor instead')
const UpdateTimetableProgressRequest$json = {
  '1': 'UpdateTimetableProgressRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'currentEntryId', '3': 2, '4': 1, '5': 5, '10': 'currentEntryId'},
  ],
};

/// Descriptor for `UpdateTimetableProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTimetableProgressRequestDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVUaW1ldGFibGVQcm9ncmVzc1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZX'
    'NzaW9uSWQSJgoOY3VycmVudEVudHJ5SWQYAiABKAVSDmN1cnJlbnRFbnRyeUlk');

@$core.Deprecated('Use updateTimetableProgressResponseDescriptor instead')
const UpdateTimetableProgressResponse$json = {
  '1': 'UpdateTimetableProgressResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UpdateTimetableProgressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTimetableProgressResponseDescriptor = $convert.base64Decode(
    'Ch9VcGRhdGVUaW1ldGFibGVQcm9ncmVzc1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2'
    'Nlc3M=');

@$core.Deprecated('Use addSessionResourceRequestDescriptor instead')
const AddSessionResourceRequest$json = {
  '1': 'AddSessionResourceRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'resource', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSessionResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionResourceRequestDescriptor = $convert.base64Decode(
    'ChlBZGRTZXNzaW9uUmVzb3VyY2VSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2lvbk'
    'lkEiwKCHJlc291cmNlGAIgASgLMhAuYnN0LnYxLlJlc291cmNlUghyZXNvdXJjZQ==');

@$core.Deprecated('Use addSessionResourceResponseDescriptor instead')
const AddSessionResourceResponse$json = {
  '1': 'AddSessionResourceResponse',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSessionResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionResourceResponseDescriptor = $convert.base64Decode(
    'ChpBZGRTZXNzaW9uUmVzb3VyY2VSZXNwb25zZRIsCghyZXNvdXJjZRgBIAEoCzIQLmJzdC52MS'
    '5SZXNvdXJjZVIIcmVzb3VyY2U=');

@$core.Deprecated('Use listSessionResourcesRequestDescriptor instead')
const ListSessionResourcesRequest$json = {
  '1': 'ListSessionResourcesRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionResourcesRequestDescriptor = $convert.base64Decode(
    'ChtMaXN0U2Vzc2lvblJlc291cmNlc1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW'
    '9uSWQ=');

@$core.Deprecated('Use listSessionResourcesResponseDescriptor instead')
const ListSessionResourcesResponse$json = {
  '1': 'ListSessionResourcesResponse',
  '2': [
    {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `ListSessionResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionResourcesResponseDescriptor = $convert.base64Decode(
    'ChxMaXN0U2Vzc2lvblJlc291cmNlc1Jlc3BvbnNlEi4KCXJlc291cmNlcxgBIAMoCzIQLmJzdC'
    '52MS5SZXNvdXJjZVIJcmVzb3VyY2Vz');

@$core.Deprecated('Use deleteSessionResourceRequestDescriptor instead')
const DeleteSessionResourceRequest$json = {
  '1': 'DeleteSessionResourceRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'resourceId', '3': 2, '4': 1, '5': 5, '10': 'resourceId'},
  ],
};

/// Descriptor for `DeleteSessionResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionResourceRequestDescriptor = $convert.base64Decode(
    'ChxEZWxldGVTZXNzaW9uUmVzb3VyY2VSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2'
    'lvbklkEh4KCnJlc291cmNlSWQYAiABKAVSCnJlc291cmNlSWQ=');

@$core.Deprecated('Use deleteSessionResourceResponseDescriptor instead')
const DeleteSessionResourceResponse$json = {
  '1': 'DeleteSessionResourceResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionResourceResponseDescriptor = $convert.base64Decode(
    'Ch1EZWxldGVTZXNzaW9uUmVzb3VyY2VSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZX'
    'Nz');

@$core.Deprecated('Use addSessionFeedbackRequestDescriptor instead')
const AddSessionFeedbackRequest$json = {
  '1': 'AddSessionFeedbackRequest',
  '2': [
    {'1': 'feedback', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionFeedback', '10': 'feedback'},
  ],
};

/// Descriptor for `AddSessionFeedbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionFeedbackRequestDescriptor = $convert.base64Decode(
    'ChlBZGRTZXNzaW9uRmVlZGJhY2tSZXF1ZXN0EjMKCGZlZWRiYWNrGAEgASgLMhcuYnN0LnYxLl'
    'Nlc3Npb25GZWVkYmFja1IIZmVlZGJhY2s=');

@$core.Deprecated('Use addSessionFeedbackResponseDescriptor instead')
const AddSessionFeedbackResponse$json = {
  '1': 'AddSessionFeedbackResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AddSessionFeedbackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionFeedbackResponseDescriptor = $convert.base64Decode(
    'ChpBZGRTZXNzaW9uRmVlZGJhY2tSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use listSessionFeedbacksRequestDescriptor instead')
const ListSessionFeedbacksRequest$json = {
  '1': 'ListSessionFeedbacksRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionFeedbacksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionFeedbacksRequestDescriptor = $convert.base64Decode(
    'ChtMaXN0U2Vzc2lvbkZlZWRiYWNrc1JlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW'
    '9uSWQ=');

@$core.Deprecated('Use listSessionFeedbacksResponseDescriptor instead')
const ListSessionFeedbacksResponse$json = {
  '1': 'ListSessionFeedbacksResponse',
  '2': [
    {'1': 'feedbacks', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.SessionFeedback', '10': 'feedbacks'},
  ],
};

/// Descriptor for `ListSessionFeedbacksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionFeedbacksResponseDescriptor = $convert.base64Decode(
    'ChxMaXN0U2Vzc2lvbkZlZWRiYWNrc1Jlc3BvbnNlEjUKCWZlZWRiYWNrcxgBIAMoCzIXLmJzdC'
    '52MS5TZXNzaW9uRmVlZGJhY2tSCWZlZWRiYWNrcw==');

@$core.Deprecated('Use listRelatedSessionsRequestDescriptor instead')
const ListRelatedSessionsRequest$json = {
  '1': 'ListRelatedSessionsRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListRelatedSessionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRelatedSessionsRequestDescriptor = $convert.base64Decode(
    'ChpMaXN0UmVsYXRlZFNlc3Npb25zUmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb2'
    '5JZA==');

@$core.Deprecated('Use listRelatedSessionsResponseDescriptor instead')
const ListRelatedSessionsResponse$json = {
  '1': 'ListRelatedSessionsResponse',
  '2': [
    {'1': 'sessions', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Session', '10': 'sessions'},
  ],
};

/// Descriptor for `ListRelatedSessionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRelatedSessionsResponseDescriptor = $convert.base64Decode(
    'ChtMaXN0UmVsYXRlZFNlc3Npb25zUmVzcG9uc2USKwoIc2Vzc2lvbnMYASADKAsyDy5ic3Qudj'
    'EuU2Vzc2lvblIIc2Vzc2lvbnM=');

@$core.Deprecated('Use addRelatedSessionRequestDescriptor instead')
const AddRelatedSessionRequest$json = {
  '1': 'AddRelatedSessionRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'relatedSessionId', '3': 2, '4': 1, '5': 5, '10': 'relatedSessionId'},
  ],
};

/// Descriptor for `AddRelatedSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRelatedSessionRequestDescriptor = $convert.base64Decode(
    'ChhBZGRSZWxhdGVkU2Vzc2lvblJlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSW'
    'QSKgoQcmVsYXRlZFNlc3Npb25JZBgCIAEoBVIQcmVsYXRlZFNlc3Npb25JZA==');

@$core.Deprecated('Use addRelatedSessionResponseDescriptor instead')
const AddRelatedSessionResponse$json = {
  '1': 'AddRelatedSessionResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AddRelatedSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRelatedSessionResponseDescriptor = $convert.base64Decode(
    'ChlBZGRSZWxhdGVkU2Vzc2lvblJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use createSessionPartyRequestDescriptor instead')
const CreateSessionPartyRequest$json = {
  '1': 'CreateSessionPartyRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'party', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Party', '10': 'party'},
  ],
};

/// Descriptor for `CreateSessionPartyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionPartyRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVTZXNzaW9uUGFydHlSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2lvbk'
    'lkEiMKBXBhcnR5GAIgASgLMg0uYnN0LnYxLlBhcnR5UgVwYXJ0eQ==');

@$core.Deprecated('Use createSessionPartyResponseDescriptor instead')
const CreateSessionPartyResponse$json = {
  '1': 'CreateSessionPartyResponse',
  '2': [
    {'1': 'party', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Party', '10': 'party'},
  ],
};

/// Descriptor for `CreateSessionPartyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionPartyResponseDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVTZXNzaW9uUGFydHlSZXNwb25zZRIjCgVwYXJ0eRgBIAEoCzINLmJzdC52MS5QYX'
    'J0eVIFcGFydHk=');

@$core.Deprecated('Use getSessionPartyRequestDescriptor instead')
const GetSessionPartyRequest$json = {
  '1': 'GetSessionPartyRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetSessionPartyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionPartyRequestDescriptor = $convert.base64Decode(
    'ChZHZXRTZXNzaW9uUGFydHlSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2lvbklk');

@$core.Deprecated('Use getSessionPartyResponseDescriptor instead')
const GetSessionPartyResponse$json = {
  '1': 'GetSessionPartyResponse',
  '2': [
    {'1': 'party', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Party', '10': 'party'},
  ],
};

/// Descriptor for `GetSessionPartyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionPartyResponseDescriptor = $convert.base64Decode(
    'ChdHZXRTZXNzaW9uUGFydHlSZXNwb25zZRIjCgVwYXJ0eRgBIAEoCzINLmJzdC52MS5QYXJ0eV'
    'IFcGFydHk=');

@$core.Deprecated('Use addPartyParticipantRequestDescriptor instead')
const AddPartyParticipantRequest$json = {
  '1': 'AddPartyParticipantRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'participant', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.PartyParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `AddPartyParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPartyParticipantRequestDescriptor = $convert.base64Decode(
    'ChpBZGRQYXJ0eVBhcnRpY2lwYW50UmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3Npb2'
    '5JZBI6CgtwYXJ0aWNpcGFudBgCIAEoCzIYLmJzdC52MS5QYXJ0eVBhcnRpY2lwYW50UgtwYXJ0'
    'aWNpcGFudA==');

@$core.Deprecated('Use addPartyParticipantResponseDescriptor instead')
const AddPartyParticipantResponse$json = {
  '1': 'AddPartyParticipantResponse',
  '2': [
    {'1': 'participant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.PartyParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `AddPartyParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPartyParticipantResponseDescriptor = $convert.base64Decode(
    'ChtBZGRQYXJ0eVBhcnRpY2lwYW50UmVzcG9uc2USOgoLcGFydGljaXBhbnQYASABKAsyGC5ic3'
    'QudjEuUGFydHlQYXJ0aWNpcGFudFILcGFydGljaXBhbnQ=');

@$core.Deprecated('Use listPartyParticipantsRequestDescriptor instead')
const ListPartyParticipantsRequest$json = {
  '1': 'ListPartyParticipantsRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListPartyParticipantsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPartyParticipantsRequestDescriptor = $convert.base64Decode(
    'ChxMaXN0UGFydHlQYXJ0aWNpcGFudHNSZXF1ZXN0EhwKCXNlc3Npb25JZBgBIAEoBVIJc2Vzc2'
    'lvbklk');

@$core.Deprecated('Use listPartyParticipantsResponseDescriptor instead')
const ListPartyParticipantsResponse$json = {
  '1': 'ListPartyParticipantsResponse',
  '2': [
    {'1': 'participants', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.PartyParticipant', '10': 'participants'},
  ],
};

/// Descriptor for `ListPartyParticipantsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPartyParticipantsResponseDescriptor = $convert.base64Decode(
    'Ch1MaXN0UGFydHlQYXJ0aWNpcGFudHNSZXNwb25zZRI8CgxwYXJ0aWNpcGFudHMYASADKAsyGC'
    '5ic3QudjEuUGFydHlQYXJ0aWNpcGFudFIMcGFydGljaXBhbnRz');

@$core.Deprecated('Use updatePartyParticipantRequestDescriptor instead')
const UpdatePartyParticipantRequest$json = {
  '1': 'UpdatePartyParticipantRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'participantId', '3': 2, '4': 1, '5': 5, '10': 'participantId'},
    {'1': 'participant', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.PartyParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `UpdatePartyParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartyParticipantRequestDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVQYXJ0eVBhcnRpY2lwYW50UmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3'
    'Npb25JZBIkCg1wYXJ0aWNpcGFudElkGAIgASgFUg1wYXJ0aWNpcGFudElkEjoKC3BhcnRpY2lw'
    'YW50GAMgASgLMhguYnN0LnYxLlBhcnR5UGFydGljaXBhbnRSC3BhcnRpY2lwYW50');

@$core.Deprecated('Use updatePartyParticipantResponseDescriptor instead')
const UpdatePartyParticipantResponse$json = {
  '1': 'UpdatePartyParticipantResponse',
  '2': [
    {'1': 'participant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.PartyParticipant', '10': 'participant'},
  ],
};

/// Descriptor for `UpdatePartyParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartyParticipantResponseDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVQYXJ0eVBhcnRpY2lwYW50UmVzcG9uc2USOgoLcGFydGljaXBhbnQYASABKAsyGC'
    '5ic3QudjEuUGFydHlQYXJ0aWNpcGFudFILcGFydGljaXBhbnQ=');

@$core.Deprecated('Use deletePartyParticipantRequestDescriptor instead')
const DeletePartyParticipantRequest$json = {
  '1': 'DeletePartyParticipantRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'participantId', '3': 2, '4': 1, '5': 5, '10': 'participantId'},
  ],
};

/// Descriptor for `DeletePartyParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePartyParticipantRequestDescriptor = $convert.base64Decode(
    'Ch1EZWxldGVQYXJ0eVBhcnRpY2lwYW50UmVxdWVzdBIcCglzZXNzaW9uSWQYASABKAVSCXNlc3'
    'Npb25JZBIkCg1wYXJ0aWNpcGFudElkGAIgASgFUg1wYXJ0aWNpcGFudElk');

@$core.Deprecated('Use deletePartyParticipantResponseDescriptor instead')
const DeletePartyParticipantResponse$json = {
  '1': 'DeletePartyParticipantResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeletePartyParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePartyParticipantResponseDescriptor = $convert.base64Decode(
    'Ch5EZWxldGVQYXJ0eVBhcnRpY2lwYW50UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2'
    'Vzcw==');

