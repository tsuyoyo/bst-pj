//
//  Generated code. Do not modify.
//  source: bst/v1/party_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createPartyRequestDescriptor instead')
const CreatePartyRequest$json = {
  '1': 'CreatePartyRequest',
  '2': [
    {'1': 'locationId', '3': 1, '4': 1, '5': 5, '10': 'locationId'},
    {'1': 'fee', '3': 2, '4': 1, '5': 5, '10': 'fee'},
    {'1': 'role', '3': 3, '4': 1, '5': 14, '6': '.bst.v1.PartyParticipantRole', '10': 'role'},
    {'1': 'startAt', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startAt'},
    {'1': 'endAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endAt'},
  ],
};

/// Descriptor for `CreatePartyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPartyRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQYXJ0eVJlcXVlc3QSHgoKbG9jYXRpb25JZBgBIAEoBVIKbG9jYXRpb25JZBIQCg'
    'NmZWUYAiABKAVSA2ZlZRIwCgRyb2xlGAMgASgOMhwuYnN0LnYxLlBhcnR5UGFydGljaXBhbnRS'
    'b2xlUgRyb2xlEjQKB3N0YXJ0QXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    'dzdGFydEF0EjAKBWVuZEF0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIFZW5k'
    'QXQ=');

@$core.Deprecated('Use createPartyResponseDescriptor instead')
const CreatePartyResponse$json = {
  '1': 'CreatePartyResponse',
  '2': [
    {'1': 'party', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Party', '10': 'party'},
  ],
};

/// Descriptor for `CreatePartyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPartyResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVQYXJ0eVJlc3BvbnNlEiMKBXBhcnR5GAEgASgLMg0uYnN0LnYxLlBhcnR5UgVwYX'
    'J0eQ==');

@$core.Deprecated('Use getPartyRequestDescriptor instead')
const GetPartyRequest$json = {
  '1': 'GetPartyRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetPartyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPartyRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRQYXJ0eVJlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSWQ=');

@$core.Deprecated('Use getPartyResponseDescriptor instead')
const GetPartyResponse$json = {
  '1': 'GetPartyResponse',
  '2': [
    {'1': 'party', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Party', '10': 'party'},
  ],
};

/// Descriptor for `GetPartyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPartyResponseDescriptor = $convert.base64Decode(
    'ChBHZXRQYXJ0eVJlc3BvbnNlEiMKBXBhcnR5GAEgASgLMg0uYnN0LnYxLlBhcnR5UgVwYXJ0eQ'
    '==');

@$core.Deprecated('Use updatePartyRequestDescriptor instead')
const UpdatePartyRequest$json = {
  '1': 'UpdatePartyRequest',
  '2': [
    {'1': 'locationId', '3': 1, '4': 1, '5': 5, '10': 'locationId'},
    {'1': 'fee', '3': 2, '4': 1, '5': 5, '10': 'fee'},
    {'1': 'startAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startAt'},
    {'1': 'endAt', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endAt'},
  ],
};

/// Descriptor for `UpdatePartyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartyRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVQYXJ0eVJlcXVlc3QSHgoKbG9jYXRpb25JZBgBIAEoBVIKbG9jYXRpb25JZBIQCg'
    'NmZWUYAiABKAVSA2ZlZRI0CgdzdGFydEF0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVz'
    'dGFtcFIHc3RhcnRBdBIwCgVlbmRBdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbX'
    'BSBWVuZEF0');

@$core.Deprecated('Use updatePartyResponseDescriptor instead')
const UpdatePartyResponse$json = {
  '1': 'UpdatePartyResponse',
  '2': [
    {'1': 'party', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Party', '10': 'party'},
  ],
};

/// Descriptor for `UpdatePartyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartyResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVQYXJ0eVJlc3BvbnNlEiMKBXBhcnR5GAEgASgLMg0uYnN0LnYxLlBhcnR5UgVwYX'
    'J0eQ==');

@$core.Deprecated('Use deletePartyRequestDescriptor instead')
const DeletePartyRequest$json = {
  '1': 'DeletePartyRequest',
  '2': [
    {'1': 'sessionId', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `DeletePartyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePartyRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVQYXJ0eVJlcXVlc3QSHAoJc2Vzc2lvbklkGAEgASgFUglzZXNzaW9uSWQ=');

@$core.Deprecated('Use deletePartyResponseDescriptor instead')
const DeletePartyResponse$json = {
  '1': 'DeletePartyResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeletePartyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePartyResponseDescriptor = $convert.base64Decode(
    'ChNEZWxldGVQYXJ0eVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use addPartyParticipantRequestDescriptor instead')
const AddPartyParticipantRequest$json = {
  '1': 'AddPartyParticipantRequest',
  '2': [
    {'1': 'role', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.PartyParticipantRole', '10': 'role'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.bst.v1.PartyParticipantStatus', '10': 'status'},
  ],
};

/// Descriptor for `AddPartyParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPartyParticipantRequestDescriptor = $convert.base64Decode(
    'ChpBZGRQYXJ0eVBhcnRpY2lwYW50UmVxdWVzdBIwCgRyb2xlGAEgASgOMhwuYnN0LnYxLlBhcn'
    'R5UGFydGljaXBhbnRSb2xlUgRyb2xlEjYKBnN0YXR1cxgCIAEoDjIeLmJzdC52MS5QYXJ0eVBh'
    'cnRpY2lwYW50U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use addPartyParticipantResponseDescriptor instead')
const AddPartyParticipantResponse$json = {
  '1': 'AddPartyParticipantResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AddPartyParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPartyParticipantResponseDescriptor = $convert.base64Decode(
    'ChtBZGRQYXJ0eVBhcnRpY2lwYW50UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw'
    '==');

@$core.Deprecated('Use updatePartyParticipantRequestDescriptor instead')
const UpdatePartyParticipantRequest$json = {
  '1': 'UpdatePartyParticipantRequest',
  '2': [
    {'1': 'role', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.PartyParticipantRole', '10': 'role'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.bst.v1.PartyParticipantStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdatePartyParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartyParticipantRequestDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVQYXJ0eVBhcnRpY2lwYW50UmVxdWVzdBIwCgRyb2xlGAEgASgOMhwuYnN0LnYxLl'
    'BhcnR5UGFydGljaXBhbnRSb2xlUgRyb2xlEjYKBnN0YXR1cxgCIAEoDjIeLmJzdC52MS5QYXJ0'
    'eVBhcnRpY2lwYW50U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use updatePartyParticipantResponseDescriptor instead')
const UpdatePartyParticipantResponse$json = {
  '1': 'UpdatePartyParticipantResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UpdatePartyParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartyParticipantResponseDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVQYXJ0eVBhcnRpY2lwYW50UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2'
    'Vzcw==');

@$core.Deprecated('Use removePartyParticipantRequestDescriptor instead')
const RemovePartyParticipantRequest$json = {
  '1': 'RemovePartyParticipantRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `RemovePartyParticipantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removePartyParticipantRequestDescriptor = $convert.base64Decode(
    'Ch1SZW1vdmVQYXJ0eVBhcnRpY2lwYW50UmVxdWVzdBIWCgZ1c2VySWQYASABKAVSBnVzZXJJZA'
    '==');

@$core.Deprecated('Use removePartyParticipantResponseDescriptor instead')
const RemovePartyParticipantResponse$json = {
  '1': 'RemovePartyParticipantResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `RemovePartyParticipantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removePartyParticipantResponseDescriptor = $convert.base64Decode(
    'Ch5SZW1vdmVQYXJ0eVBhcnRpY2lwYW50UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2'
    'Vzcw==');

