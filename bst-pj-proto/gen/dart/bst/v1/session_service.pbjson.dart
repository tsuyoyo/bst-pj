//
//  Generated code. Do not modify.
//  source: bst/v1/session_service.proto
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
    {'1': 'event_date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'eventDate'},
  ],
};

/// Descriptor for `CreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTZXNzaW9uUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAiABKAlSC2Rlc2NyaXB0aW9uEjkKCmV2ZW50X2RhdGUYAyABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUglldmVudERhdGU=');

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
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionRequestDescriptor = $convert.base64Decode(
    'ChFHZXRTZXNzaW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZXNzaW9uSWQ=');

@$core.Deprecated('Use getSessionResponseDescriptor instead')
const GetSessionResponse$json = {
  '1': 'GetSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Session', '10': 'session'},
    {'1': 'detail', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'detail'},
  ],
};

/// Descriptor for `GetSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionResponseDescriptor = $convert.base64Decode(
    'ChJHZXRTZXNzaW9uUmVzcG9uc2USKQoHc2Vzc2lvbhgBIAEoCzIPLmJzdC52MS5TZXNzaW9uUg'
    'dzZXNzaW9uEi0KBmRldGFpbBgCIAEoCzIVLmJzdC52MS5TZXNzaW9uRGV0YWlsUgZkZXRhaWw=');

@$core.Deprecated('Use updateSessionRequestDescriptor instead')
const UpdateSessionRequest$json = {
  '1': 'UpdateSessionRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'event_date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'eventDate'},
  ],
};

/// Descriptor for `UpdateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTZXNzaW9uUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAiABKAlSC2Rlc2NyaXB0aW9uEjkKCmV2ZW50X2RhdGUYAyABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUglldmVudERhdGU=');

@$core.Deprecated('Use updateSessionResponseDescriptor instead')
const UpdateSessionResponse$json = {
  '1': 'UpdateSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Session', '10': 'session'},
    {'1': 'detail', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'detail'},
  ],
};

/// Descriptor for `UpdateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVTZXNzaW9uUmVzcG9uc2USKQoHc2Vzc2lvbhgBIAEoCzIPLmJzdC52MS5TZXNzaW'
    '9uUgdzZXNzaW9uEi0KBmRldGFpbBgCIAEoCzIVLmJzdC52MS5TZXNzaW9uRGV0YWlsUgZkZXRh'
    'aWw=');

@$core.Deprecated('Use updateSessionStatusRequestDescriptor instead')
const UpdateSessionStatusRequest$json = {
  '1': 'UpdateSessionStatusRequest',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.SessionStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdateSessionStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionStatusRequestDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVTZXNzaW9uU3RhdHVzUmVxdWVzdBItCgZzdGF0dXMYASABKA4yFS5ic3QudjEuU2'
    'Vzc2lvblN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use updateSessionStatusResponseDescriptor instead')
const UpdateSessionStatusResponse$json = {
  '1': 'UpdateSessionStatusResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Session', '10': 'session'},
    {'1': 'detail', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'detail'},
  ],
};

/// Descriptor for `UpdateSessionStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionStatusResponseDescriptor = $convert.base64Decode(
    'ChtVcGRhdGVTZXNzaW9uU3RhdHVzUmVzcG9uc2USKQoHc2Vzc2lvbhgBIAEoCzIPLmJzdC52MS'
    '5TZXNzaW9uUgdzZXNzaW9uEi0KBmRldGFpbBgCIAEoCzIVLmJzdC52MS5TZXNzaW9uRGV0YWls'
    'UgZkZXRhaWw=');

@$core.Deprecated('Use cancelSessionRequestDescriptor instead')
const CancelSessionRequest$json = {
  '1': 'CancelSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `CancelSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelSessionRequestDescriptor = $convert.base64Decode(
    'ChRDYW5jZWxTZXNzaW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZXNzaW9uSWQSFg'
    'oGcmVhc29uGAIgASgJUgZyZWFzb24=');

@$core.Deprecated('Use cancelSessionResponseDescriptor instead')
const CancelSessionResponse$json = {
  '1': 'CancelSessionResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Session', '10': 'session'},
    {'1': 'detail', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'detail'},
  ],
};

/// Descriptor for `CancelSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelSessionResponseDescriptor = $convert.base64Decode(
    'ChVDYW5jZWxTZXNzaW9uUmVzcG9uc2USKQoHc2Vzc2lvbhgBIAEoCzIPLmJzdC52MS5TZXNzaW'
    '9uUgdzZXNzaW9uEi0KBmRldGFpbBgCIAEoCzIVLmJzdC52MS5TZXNzaW9uRGV0YWlsUgZkZXRh'
    'aWw=');

@$core.Deprecated('Use duplicateSessionRequestDescriptor instead')
const DuplicateSessionRequest$json = {
  '1': 'DuplicateSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'new_event_date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'newEventDate'},
  ],
};

/// Descriptor for `DuplicateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List duplicateSessionRequestDescriptor = $convert.base64Decode(
    'ChdEdXBsaWNhdGVTZXNzaW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZXNzaW9uSW'
    'QSQAoObmV3X2V2ZW50X2RhdGUYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgxu'
    'ZXdFdmVudERhdGU=');

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

@$core.Deprecated('Use updateSessionEntryStartDateRequestDescriptor instead')
const UpdateSessionEntryStartDateRequest$json = {
  '1': 'UpdateSessionEntryStartDateRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
  ],
};

/// Descriptor for `UpdateSessionEntryStartDateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionEntryStartDateRequestDescriptor = $convert.base64Decode(
    'CiJVcGRhdGVTZXNzaW9uRW50cnlTdGFydERhdGVSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKA'
    'VSCXNlc3Npb25JZBIuCgRkYXRlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIE'
    'ZGF0ZQ==');

@$core.Deprecated('Use updateSessionEntryStartDateResponseDescriptor instead')
const UpdateSessionEntryStartDateResponse$json = {
  '1': 'UpdateSessionEntryStartDateResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'session'},
  ],
};

/// Descriptor for `UpdateSessionEntryStartDateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionEntryStartDateResponseDescriptor = $convert.base64Decode(
    'CiNVcGRhdGVTZXNzaW9uRW50cnlTdGFydERhdGVSZXNwb25zZRIvCgdzZXNzaW9uGAEgASgLMh'
    'UuYnN0LnYxLlNlc3Npb25EZXRhaWxSB3Nlc3Npb24=');

@$core.Deprecated('Use updateSessionEntryEndDateRequestDescriptor instead')
const UpdateSessionEntryEndDateRequest$json = {
  '1': 'UpdateSessionEntryEndDateRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
  ],
};

/// Descriptor for `UpdateSessionEntryEndDateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionEntryEndDateRequestDescriptor = $convert.base64Decode(
    'CiBVcGRhdGVTZXNzaW9uRW50cnlFbmREYXRlUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUg'
    'lzZXNzaW9uSWQSLgoEZGF0ZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBGRh'
    'dGU=');

@$core.Deprecated('Use updateSessionEntryEndDateResponseDescriptor instead')
const UpdateSessionEntryEndDateResponse$json = {
  '1': 'UpdateSessionEntryEndDateResponse',
  '2': [
    {'1': 'session', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionDetail', '10': 'session'},
  ],
};

/// Descriptor for `UpdateSessionEntryEndDateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionEntryEndDateResponseDescriptor = $convert.base64Decode(
    'CiFVcGRhdGVTZXNzaW9uRW50cnlFbmREYXRlUmVzcG9uc2USLwoHc2Vzc2lvbhgBIAEoCzIVLm'
    'JzdC52MS5TZXNzaW9uRGV0YWlsUgdzZXNzaW9u');

@$core.Deprecated('Use updateSessionScheduleRequestDescriptor instead')
const UpdateSessionScheduleRequest$json = {
  '1': 'UpdateSessionScheduleRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'timetable', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `UpdateSessionScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionScheduleRequestDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVTZXNzaW9uU2NoZWR1bGVSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAVSCXNlc3'
    'Npb25JZBIvCgl0aW1ldGFibGUYAiABKAsyES5ic3QudjEuVGltZXRhYmxlUgl0aW1ldGFibGU=');

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
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
  ],
};

/// Descriptor for `UpdateSessionLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionLocationRequestDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVTZXNzaW9uTG9jYXRpb25SZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAVSCXNlc3'
    'Npb25JZBIsCghsb2NhdGlvbhgCIAEoCzIQLmJzdC52MS5Mb2NhdGlvblIIbG9jYXRpb24=');

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

@$core.Deprecated('Use addSessionSongResourceRequestDescriptor instead')
const AddSessionSongResourceRequest$json = {
  '1': 'AddSessionSongResourceRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'song_id', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'resource', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSessionSongResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionSongResourceRequestDescriptor = $convert.base64Decode(
    'Ch1BZGRTZXNzaW9uU29uZ1Jlc291cmNlUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZX'
    'NzaW9uSWQSFwoHc29uZ19pZBgCIAEoBVIGc29uZ0lkEiwKCHJlc291cmNlGAMgASgLMhAuYnN0'
    'LnYxLlJlc291cmNlUghyZXNvdXJjZQ==');

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
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'song_id', '3': 2, '4': 1, '5': 5, '10': 'songId'},
  ],
};

/// Descriptor for `ListSessionSongResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongResourcesRequestDescriptor = $convert.base64Decode(
    'Ch9MaXN0U2Vzc2lvblNvbmdSZXNvdXJjZXNSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAVSCX'
    'Nlc3Npb25JZBIXCgdzb25nX2lkGAIgASgFUgZzb25nSWQ=');

@$core.Deprecated('Use listSessionSongResourcesResponseDescriptor instead')
const ListSessionSongResourcesResponse$json = {
  '1': 'ListSessionSongResourcesResponse',
  '2': [
    {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Resource', '10': 'resources'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListSessionSongResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongResourcesResponseDescriptor = $convert.base64Decode(
    'CiBMaXN0U2Vzc2lvblNvbmdSZXNvdXJjZXNSZXNwb25zZRIuCglyZXNvdXJjZXMYASADKAsyEC'
    '5ic3QudjEuUmVzb3VyY2VSCXJlc291cmNlcxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5l'
    'eHRQYWdlVG9rZW4SHQoKdG90YWxfc2l6ZRgDIAEoBVIJdG90YWxTaXpl');

@$core.Deprecated('Use deleteSessionSongResourceRequestDescriptor instead')
const DeleteSessionSongResourceRequest$json = {
  '1': 'DeleteSessionSongResourceRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'song_id', '3': 2, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'resource_id', '3': 3, '4': 1, '5': 5, '10': 'resourceId'},
  ],
};

/// Descriptor for `DeleteSessionSongResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionSongResourceRequestDescriptor = $convert.base64Decode(
    'CiBEZWxldGVTZXNzaW9uU29uZ1Jlc291cmNlUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUg'
    'lzZXNzaW9uSWQSFwoHc29uZ19pZBgCIAEoBVIGc29uZ0lkEh8KC3Jlc291cmNlX2lkGAMgASgF'
    'UgpyZXNvdXJjZUlk');

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

@$core.Deprecated('Use createSessionNotificationRequestDescriptor instead')
const CreateSessionNotificationRequest$json = {
  '1': 'CreateSessionNotificationRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'user_ids', '3': 3, '4': 3, '5': 5, '10': 'userIds'},
  ],
};

/// Descriptor for `CreateSessionNotificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionNotificationRequestDescriptor = $convert.base64Decode(
    'CiBDcmVhdGVTZXNzaW9uTm90aWZpY2F0aW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUg'
    'lzZXNzaW9uSWQSGAoHY29udGVudBgCIAEoCVIHY29udGVudBIZCgh1c2VyX2lkcxgDIAMoBVIH'
    'dXNlcklkcw==');

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

@$core.Deprecated('Use addSessionResourceRequestDescriptor instead')
const AddSessionResourceRequest$json = {
  '1': 'AddSessionResourceRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'resource', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSessionResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionResourceRequestDescriptor = $convert.base64Decode(
    'ChlBZGRTZXNzaW9uUmVzb3VyY2VSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAVSCXNlc3Npb2'
    '5JZBIsCghyZXNvdXJjZRgCIAEoCzIQLmJzdC52MS5SZXNvdXJjZVIIcmVzb3VyY2U=');

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
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionResourcesRequestDescriptor = $convert.base64Decode(
    'ChtMaXN0U2Vzc2lvblJlc291cmNlc1JlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoBVIJc2Vzc2'
    'lvbklk');

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
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'resource_id', '3': 2, '4': 1, '5': 5, '10': 'resourceId'},
  ],
};

/// Descriptor for `DeleteSessionResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionResourceRequestDescriptor = $convert.base64Decode(
    'ChxEZWxldGVTZXNzaW9uUmVzb3VyY2VSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAVSCXNlc3'
    'Npb25JZBIfCgtyZXNvdXJjZV9pZBgCIAEoBVIKcmVzb3VyY2VJZA==');

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

@$core.Deprecated('Use listRelatedSessionsRequestDescriptor instead')
const ListRelatedSessionsRequest$json = {
  '1': 'ListRelatedSessionsRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListRelatedSessionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRelatedSessionsRequestDescriptor = $convert.base64Decode(
    'ChpMaXN0UmVsYXRlZFNlc3Npb25zUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZXNzaW'
    '9uSWQ=');

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
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'related_session_id', '3': 2, '4': 1, '5': 5, '10': 'relatedSessionId'},
  ],
};

/// Descriptor for `AddRelatedSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRelatedSessionRequestDescriptor = $convert.base64Decode(
    'ChhBZGRSZWxhdGVkU2Vzc2lvblJlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoBVIJc2Vzc2lvbk'
    'lkEiwKEnJlbGF0ZWRfc2Vzc2lvbl9pZBgCIAEoBVIQcmVsYXRlZFNlc3Npb25JZA==');

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

