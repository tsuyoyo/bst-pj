//
//  Generated code. Do not modify.
//  source: party.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use partyParticipantRoleDescriptor instead')
const PartyParticipantRole$json = {
  '1': 'PartyParticipantRole',
  '2': [
    {'1': 'PARTY_PARTICIPANT_ROLE_UNSPECIFIED', '2': 0},
    {'1': 'PARTY_PARTICIPANT_ROLE_HOST', '2': 1},
    {'1': 'PARTY_PARTICIPANT_ROLE_PARTICIPANT', '2': 2},
    {'1': 'PARTY_PARTICIPANT_ROLE_OBSERVER', '2': 3},
  ],
};

/// Descriptor for `PartyParticipantRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List partyParticipantRoleDescriptor = $convert.base64Decode(
    'ChRQYXJ0eVBhcnRpY2lwYW50Um9sZRImCiJQQVJUWV9QQVJUSUNJUEFOVF9ST0xFX1VOU1BFQ0'
    'lGSUVEEAASHwobUEFSVFlfUEFSVElDSVBBTlRfUk9MRV9IT1NUEAESJgoiUEFSVFlfUEFSVElD'
    'SVBBTlRfUk9MRV9QQVJUSUNJUEFOVBACEiMKH1BBUlRZX1BBUlRJQ0lQQU5UX1JPTEVfT0JTRV'
    'JWRVIQAw==');

@$core.Deprecated('Use partyParticipantStatusDescriptor instead')
const PartyParticipantStatus$json = {
  '1': 'PartyParticipantStatus',
  '2': [
    {'1': 'PARTY_PARTICIPANT_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'PARTY_PARTICIPANT_STATUS_PENDING', '2': 1},
    {'1': 'PARTY_PARTICIPANT_STATUS_CONFIRMED', '2': 2},
    {'1': 'PARTY_PARTICIPANT_STATUS_CANCELLED', '2': 3},
  ],
};

/// Descriptor for `PartyParticipantStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List partyParticipantStatusDescriptor = $convert.base64Decode(
    'ChZQYXJ0eVBhcnRpY2lwYW50U3RhdHVzEigKJFBBUlRZX1BBUlRJQ0lQQU5UX1NUQVRVU19VTl'
    'NQRUNJRklFRBAAEiQKIFBBUlRZX1BBUlRJQ0lQQU5UX1NUQVRVU19QRU5ESU5HEAESJgoiUEFS'
    'VFlfUEFSVElDSVBBTlRfU1RBVFVTX0NPTkZJUk1FRBACEiYKIlBBUlRZX1BBUlRJQ0lQQU5UX1'
    'NUQVRVU19DQU5DRUxMRUQQAw==');

@$core.Deprecated('Use partyParticipantDescriptor instead')
const PartyParticipant$json = {
  '1': 'PartyParticipant',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'role', '3': 2, '4': 1, '5': 14, '6': '.bst.v1.PartyParticipantRole', '10': 'role'},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.bst.v1.PartyParticipantStatus', '10': 'status'},
  ],
};

/// Descriptor for `PartyParticipant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partyParticipantDescriptor = $convert.base64Decode(
    'ChBQYXJ0eVBhcnRpY2lwYW50EiAKBHVzZXIYASABKAsyDC5ic3QudjEuVXNlclIEdXNlchIwCg'
    'Ryb2xlGAIgASgOMhwuYnN0LnYxLlBhcnR5UGFydGljaXBhbnRSb2xlUgRyb2xlEjYKBnN0YXR1'
    'cxgDIAEoDjIeLmJzdC52MS5QYXJ0eVBhcnRpY2lwYW50U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use partyDescriptor instead')
const Party$json = {
  '1': 'Party',
  '2': [
    {'1': 'participants', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.PartyParticipant', '10': 'participants'},
    {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
    {'1': 'fee', '3': 3, '4': 1, '5': 5, '10': 'fee'},
    {'1': 'startAt', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startAt'},
    {'1': 'endAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endAt'},
  ],
};

/// Descriptor for `Party`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partyDescriptor = $convert.base64Decode(
    'CgVQYXJ0eRI8CgxwYXJ0aWNpcGFudHMYASADKAsyGC5ic3QudjEuUGFydHlQYXJ0aWNpcGFudF'
    'IMcGFydGljaXBhbnRzEiwKCGxvY2F0aW9uGAIgASgLMhAuYnN0LnYxLkxvY2F0aW9uUghsb2Nh'
    'dGlvbhIQCgNmZWUYAyABKAVSA2ZlZRI0CgdzdGFydEF0GAQgASgLMhouZ29vZ2xlLnByb3RvYn'
    'VmLlRpbWVzdGFtcFIHc3RhcnRBdBIwCgVlbmRBdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5U'
    'aW1lc3RhbXBSBWVuZEF0');

