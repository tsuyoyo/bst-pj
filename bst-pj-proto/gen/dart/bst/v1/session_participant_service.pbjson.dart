//
//  Generated code. Do not modify.
//  source: bst/v1/session_participant_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listSessionParticipantsRequestDescriptor instead')
const ListSessionParticipantsRequest$json = {
  '1': 'ListSessionParticipantsRequest',
};

/// Descriptor for `ListSessionParticipantsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionParticipantsRequestDescriptor = $convert.base64Decode(
    'Ch5MaXN0U2Vzc2lvblBhcnRpY2lwYW50c1JlcXVlc3Q=');

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
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'parts', '3': 2, '4': 3, '5': 11, '6': '.bst.v1.AddSessionParticipantRequest.SessionParticipantPart', '10': 'parts'},
  ],
  '3': [AddSessionParticipantRequest_SessionParticipantPart$json],
};

@$core.Deprecated('Use addSessionParticipantRequestDescriptor instead')
const AddSessionParticipantRequest_SessionParticipantPart$json = {
  '1': 'SessionParticipantPart',
  '2': [
    {'1': 'session_part_id', '3': 1, '4': 1, '5': 5, '10': 'sessionPartId'},
    {'1': 'is_primary', '3': 2, '4': 1, '5': 8, '10': 'isPrimary'},
  ],
};

/// Descriptor for `AddSessionParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionParticipantRequestDescriptor = $convert.base64Decode(
    'ChxBZGRTZXNzaW9uUGFydGljaXBhbnRSZXF1ZXN0EhcKB3VzZXJfaWQYASABKAVSBnVzZXJJZB'
    'JRCgVwYXJ0cxgCIAMoCzI7LmJzdC52MS5BZGRTZXNzaW9uUGFydGljaXBhbnRSZXF1ZXN0LlNl'
    'c3Npb25QYXJ0aWNpcGFudFBhcnRSBXBhcnRzGl8KFlNlc3Npb25QYXJ0aWNpcGFudFBhcnQSJg'
    'oPc2Vzc2lvbl9wYXJ0X2lkGAEgASgFUg1zZXNzaW9uUGFydElkEh0KCmlzX3ByaW1hcnkYAiAB'
    'KAhSCWlzUHJpbWFyeQ==');

@$core.Deprecated('Use addSessionParticipantResponseDescriptor instead')
const AddSessionParticipantResponse$json = {
  '1': 'AddSessionParticipantResponse',
  '2': [
    {'1': 'sessionParticipant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'sessionParticipant'},
  ],
};

/// Descriptor for `AddSessionParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionParticipantResponseDescriptor = $convert.base64Decode(
    'Ch1BZGRTZXNzaW9uUGFydGljaXBhbnRSZXNwb25zZRJKChJzZXNzaW9uUGFydGljaXBhbnQYAS'
    'ABKAsyGi5ic3QudjEuU2Vzc2lvblBhcnRpY2lwYW50UhJzZXNzaW9uUGFydGljaXBhbnQ=');

@$core.Deprecated('Use updateSessionParticipantRequestDescriptor instead')
const UpdateSessionParticipantRequest$json = {
  '1': 'UpdateSessionParticipantRequest',
  '2': [
    {'1': 'comment', '3': 1, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `UpdateSessionParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionParticipantRequestDescriptor = $convert.base64Decode(
    'Ch9VcGRhdGVTZXNzaW9uUGFydGljaXBhbnRSZXF1ZXN0EhgKB2NvbW1lbnQYASABKAlSB2NvbW'
    '1lbnQ=');

@$core.Deprecated('Use updateSessionParticipantResponseDescriptor instead')
const UpdateSessionParticipantResponse$json = {
  '1': 'UpdateSessionParticipantResponse',
  '2': [
    {'1': 'sessionParticipant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'sessionParticipant'},
  ],
};

/// Descriptor for `UpdateSessionParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionParticipantResponseDescriptor = $convert.base64Decode(
    'CiBVcGRhdGVTZXNzaW9uUGFydGljaXBhbnRSZXNwb25zZRJKChJzZXNzaW9uUGFydGljaXBhbn'
    'QYASABKAsyGi5ic3QudjEuU2Vzc2lvblBhcnRpY2lwYW50UhJzZXNzaW9uUGFydGljaXBhbnQ=');

@$core.Deprecated('Use setSessionParticipantIsOrganizerRequestDescriptor instead')
const SetSessionParticipantIsOrganizerRequest$json = {
  '1': 'SetSessionParticipantIsOrganizerRequest',
  '2': [
    {'1': 'is_organizer', '3': 1, '4': 1, '5': 8, '10': 'isOrganizer'},
  ],
};

/// Descriptor for `SetSessionParticipantIsOrganizerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSessionParticipantIsOrganizerRequestDescriptor = $convert.base64Decode(
    'CidTZXRTZXNzaW9uUGFydGljaXBhbnRJc09yZ2FuaXplclJlcXVlc3QSIQoMaXNfb3JnYW5pem'
    'VyGAEgASgIUgtpc09yZ2FuaXplcg==');

@$core.Deprecated('Use setSessionParticipantIsOrganizerResponseDescriptor instead')
const SetSessionParticipantIsOrganizerResponse$json = {
  '1': 'SetSessionParticipantIsOrganizerResponse',
  '2': [
    {'1': 'sessionParticipant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'sessionParticipant'},
  ],
};

/// Descriptor for `SetSessionParticipantIsOrganizerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSessionParticipantIsOrganizerResponseDescriptor = $convert.base64Decode(
    'CihTZXRTZXNzaW9uUGFydGljaXBhbnRJc09yZ2FuaXplclJlc3BvbnNlEkoKEnNlc3Npb25QYX'
    'J0aWNpcGFudBgBIAEoCzIaLmJzdC52MS5TZXNzaW9uUGFydGljaXBhbnRSEnNlc3Npb25QYXJ0'
    'aWNpcGFudA==');

@$core.Deprecated('Use addSessionParticipantPartsRequestDescriptor instead')
const AddSessionParticipantPartsRequest$json = {
  '1': 'AddSessionParticipantPartsRequest',
  '2': [
    {'1': 'session_part_id', '3': 1, '4': 1, '5': 5, '10': 'sessionPartId'},
  ],
};

/// Descriptor for `AddSessionParticipantPartsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionParticipantPartsRequestDescriptor = $convert.base64Decode(
    'CiFBZGRTZXNzaW9uUGFydGljaXBhbnRQYXJ0c1JlcXVlc3QSJgoPc2Vzc2lvbl9wYXJ0X2lkGA'
    'EgASgFUg1zZXNzaW9uUGFydElk');

@$core.Deprecated('Use addSessionParticipantPartsResponseDescriptor instead')
const AddSessionParticipantPartsResponse$json = {
  '1': 'AddSessionParticipantPartsResponse',
  '2': [
    {'1': 'sessionParticipant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'sessionParticipant'},
  ],
};

/// Descriptor for `AddSessionParticipantPartsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionParticipantPartsResponseDescriptor = $convert.base64Decode(
    'CiJBZGRTZXNzaW9uUGFydGljaXBhbnRQYXJ0c1Jlc3BvbnNlEkoKEnNlc3Npb25QYXJ0aWNpcG'
    'FudBgBIAEoCzIaLmJzdC52MS5TZXNzaW9uUGFydGljaXBhbnRSEnNlc3Npb25QYXJ0aWNpcGFu'
    'dA==');

@$core.Deprecated('Use updateSessionParticipantStatusRequestDescriptor instead')
const UpdateSessionParticipantStatusRequest$json = {
  '1': 'UpdateSessionParticipantStatusRequest',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.SessionParticipantStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdateSessionParticipantStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionParticipantStatusRequestDescriptor = $convert.base64Decode(
    'CiVVcGRhdGVTZXNzaW9uUGFydGljaXBhbnRTdGF0dXNSZXF1ZXN0EjgKBnN0YXR1cxgBIAEoDj'
    'IgLmJzdC52MS5TZXNzaW9uUGFydGljaXBhbnRTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use updateSessionParticipantStatusResponseDescriptor instead')
const UpdateSessionParticipantStatusResponse$json = {
  '1': 'UpdateSessionParticipantStatusResponse',
  '2': [
    {'1': 'sessionParticipant', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionParticipant', '10': 'sessionParticipant'},
  ],
};

/// Descriptor for `UpdateSessionParticipantStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionParticipantStatusResponseDescriptor = $convert.base64Decode(
    'CiZVcGRhdGVTZXNzaW9uUGFydGljaXBhbnRTdGF0dXNSZXNwb25zZRJKChJzZXNzaW9uUGFydG'
    'ljaXBhbnQYASABKAsyGi5ic3QudjEuU2Vzc2lvblBhcnRpY2lwYW50UhJzZXNzaW9uUGFydGlj'
    'aXBhbnQ=');

@$core.Deprecated('Use deleteSessionParticipantRequestDescriptor instead')
const DeleteSessionParticipantRequest$json = {
  '1': 'DeleteSessionParticipantRequest',
  '2': [
    {'1': 'participant_id', '3': 1, '4': 1, '5': 5, '10': 'participantId'},
  ],
};

/// Descriptor for `DeleteSessionParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionParticipantRequestDescriptor = $convert.base64Decode(
    'Ch9EZWxldGVTZXNzaW9uUGFydGljaXBhbnRSZXF1ZXN0EiUKDnBhcnRpY2lwYW50X2lkGAEgAS'
    'gFUg1wYXJ0aWNpcGFudElk');

@$core.Deprecated('Use deleteSessionParticipantResponseDescriptor instead')
const DeleteSessionParticipantResponse$json = {
  '1': 'DeleteSessionParticipantResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionParticipantResponseDescriptor = $convert.base64Decode(
    'CiBEZWxldGVTZXNzaW9uUGFydGljaXBhbnRSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdW'
    'NjZXNz');

