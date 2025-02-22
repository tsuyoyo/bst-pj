//
//  Generated code. Do not modify.
//  source: bst/v1/session_organizer_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listSessionOrganizersRequestDescriptor instead')
const ListSessionOrganizersRequest$json = {
  '1': 'ListSessionOrganizersRequest',
};

/// Descriptor for `ListSessionOrganizersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionOrganizersRequestDescriptor = $convert.base64Decode(
    'ChxMaXN0U2Vzc2lvbk9yZ2FuaXplcnNSZXF1ZXN0');

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
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `AddSessionOrganizerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionOrganizerRequestDescriptor = $convert.base64Decode(
    'ChpBZGRTZXNzaW9uT3JnYW5pemVyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgFUgZ1c2VySWQ=');

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
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `DeleteSessionOrganizerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionOrganizerRequestDescriptor = $convert.base64Decode(
    'Ch1EZWxldGVTZXNzaW9uT3JnYW5pemVyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgFUgZ1c2VySW'
    'Q=');

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

