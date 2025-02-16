//
//  Generated code. Do not modify.
//  source: bst/v1/studio_room_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createStudioRoomRequestDescriptor instead')
const CreateStudioRoomRequest$json = {
  '1': 'CreateStudioRoomRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'capacity', '3': 3, '4': 1, '5': 5, '10': 'capacity'},
    {'1': 'price', '3': 4, '4': 1, '5': 5, '10': 'price'},
  ],
};

/// Descriptor for `CreateStudioRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomRequestDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVTdHVkaW9Sb29tUmVxdWVzdBIbCglzdHVkaW9faWQYASABKAVSCHN0dWRpb0lkEh'
    'IKBG5hbWUYAiABKAlSBG5hbWUSGgoIY2FwYWNpdHkYAyABKAVSCGNhcGFjaXR5EhQKBXByaWNl'
    'GAQgASgFUgVwcmljZQ==');

@$core.Deprecated('Use createStudioRoomResponseDescriptor instead')
const CreateStudioRoomResponse$json = {
  '1': 'CreateStudioRoomResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'rooms'},
  ],
};

/// Descriptor for `CreateStudioRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomResponseDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVTdHVkaW9Sb29tUmVzcG9uc2USKAoFcm9vbXMYASADKAsyEi5ic3QudjEuU3R1ZG'
    'lvUm9vbVIFcm9vbXM=');

@$core.Deprecated('Use listStudioRoomsRequestDescriptor instead')
const ListStudioRoomsRequest$json = {
  '1': 'ListStudioRoomsRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 3, '4': 1, '5': 5, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListStudioRoomsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomsRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0U3R1ZGlvUm9vbXNSZXF1ZXN0EhsKCXN0dWRpb19pZBgBIAEoBVIIc3R1ZGlvSWQSGw'
    'oJcGFnZV9zaXplGAIgASgFUghwYWdlU2l6ZRIdCgpwYWdlX3Rva2VuGAMgASgFUglwYWdlVG9r'
    'ZW4=');

@$core.Deprecated('Use listStudioRoomsResponseDescriptor instead')
const ListStudioRoomsResponse$json = {
  '1': 'ListStudioRoomsResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'rooms'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListStudioRoomsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomsResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0U3R1ZGlvUm9vbXNSZXNwb25zZRIoCgVyb29tcxgBIAMoCzISLmJzdC52MS5TdHVkaW'
    '9Sb29tUgVyb29tcxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SHQoK'
    'dG90YWxfc2l6ZRgDIAEoBVIJdG90YWxTaXpl');

@$core.Deprecated('Use updateStudioRoomRequestDescriptor instead')
const UpdateStudioRoomRequest$json = {
  '1': 'UpdateStudioRoomRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 5, '10': 'roomId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'capacity', '3': 4, '4': 1, '5': 5, '10': 'capacity'},
    {'1': 'price', '3': 5, '4': 1, '5': 5, '10': 'price'},
  ],
};

/// Descriptor for `UpdateStudioRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomRequestDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVTdHVkaW9Sb29tUmVxdWVzdBIbCglzdHVkaW9faWQYASABKAVSCHN0dWRpb0lkEh'
    'cKB3Jvb21faWQYAiABKAVSBnJvb21JZBISCgRuYW1lGAMgASgJUgRuYW1lEhoKCGNhcGFjaXR5'
    'GAQgASgFUghjYXBhY2l0eRIUCgVwcmljZRgFIAEoBVIFcHJpY2U=');

@$core.Deprecated('Use updateStudioRoomResponseDescriptor instead')
const UpdateStudioRoomResponse$json = {
  '1': 'UpdateStudioRoomResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'rooms'},
  ],
};

/// Descriptor for `UpdateStudioRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomResponseDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTdHVkaW9Sb29tUmVzcG9uc2USKAoFcm9vbXMYASADKAsyEi5ic3QudjEuU3R1ZG'
    'lvUm9vbVIFcm9vbXM=');

@$core.Deprecated('Use deleteStudioRoomRequestDescriptor instead')
const DeleteStudioRoomRequest$json = {
  '1': 'DeleteStudioRoomRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 5, '10': 'roomId'},
  ],
};

/// Descriptor for `DeleteStudioRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomRequestDescriptor = $convert.base64Decode(
    'ChdEZWxldGVTdHVkaW9Sb29tUmVxdWVzdBIbCglzdHVkaW9faWQYASABKAVSCHN0dWRpb0lkEh'
    'cKB3Jvb21faWQYAiABKAVSBnJvb21JZA==');

@$core.Deprecated('Use deleteStudioRoomResponseDescriptor instead')
const DeleteStudioRoomResponse$json = {
  '1': 'DeleteStudioRoomResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'rooms'},
  ],
};

/// Descriptor for `DeleteStudioRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomResponseDescriptor = $convert.base64Decode(
    'ChhEZWxldGVTdHVkaW9Sb29tUmVzcG9uc2USKAoFcm9vbXMYASADKAsyEi5ic3QudjEuU3R1ZG'
    'lvUm9vbVIFcm9vbXM=');

@$core.Deprecated('Use createStudioRoomInfoRequestDescriptor instead')
const CreateStudioRoomInfoRequest$json = {
  '1': 'CreateStudioRoomInfoRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 5, '10': 'roomId'},
    {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    {'1': 'key', '3': 4, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 5, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `CreateStudioRoomInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomInfoRequestDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVTdHVkaW9Sb29tSW5mb1JlcXVlc3QSGwoJc3R1ZGlvX2lkGAEgASgFUghzdHVkaW'
    '9JZBIXCgdyb29tX2lkGAIgASgFUgZyb29tSWQSEgoEdHlwZRgDIAEoCVIEdHlwZRIQCgNrZXkY'
    'BCABKAlSA2tleRIUCgV2YWx1ZRgFIAEoCVIFdmFsdWU=');

@$core.Deprecated('Use createStudioRoomInfoResponseDescriptor instead')
const CreateStudioRoomInfoResponse$json = {
  '1': 'CreateStudioRoomInfoResponse',
  '2': [
    {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'infos'},
  ],
};

/// Descriptor for `CreateStudioRoomInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomInfoResponseDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVTdHVkaW9Sb29tSW5mb1Jlc3BvbnNlEiwKBWluZm9zGAEgAygLMhYuYnN0LnYxLl'
    'N0dWRpb1Jvb21JbmZvUgVpbmZvcw==');

@$core.Deprecated('Use listStudioRoomInfosRequestDescriptor instead')
const ListStudioRoomInfosRequest$json = {
  '1': 'ListStudioRoomInfosRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 5, '10': 'roomId'},
    {'1': 'page_size', '3': 3, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 4, '4': 1, '5': 5, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListStudioRoomInfosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomInfosRequestDescriptor = $convert.base64Decode(
    'ChpMaXN0U3R1ZGlvUm9vbUluZm9zUmVxdWVzdBIbCglzdHVkaW9faWQYASABKAVSCHN0dWRpb0'
    'lkEhcKB3Jvb21faWQYAiABKAVSBnJvb21JZBIbCglwYWdlX3NpemUYAyABKAVSCHBhZ2VTaXpl'
    'Eh0KCnBhZ2VfdG9rZW4YBCABKAVSCXBhZ2VUb2tlbg==');

@$core.Deprecated('Use listStudioRoomInfosResponseDescriptor instead')
const ListStudioRoomInfosResponse$json = {
  '1': 'ListStudioRoomInfosResponse',
  '2': [
    {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'infos'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListStudioRoomInfosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomInfosResponseDescriptor = $convert.base64Decode(
    'ChtMaXN0U3R1ZGlvUm9vbUluZm9zUmVzcG9uc2USLAoFaW5mb3MYASADKAsyFi5ic3QudjEuU3'
    'R1ZGlvUm9vbUluZm9SBWluZm9zEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VU'
    'b2tlbhIdCgp0b3RhbF9zaXplGAMgASgFUgl0b3RhbFNpemU=');

@$core.Deprecated('Use updateStudioRoomInfoRequestDescriptor instead')
const UpdateStudioRoomInfoRequest$json = {
  '1': 'UpdateStudioRoomInfoRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 5, '10': 'roomId'},
    {'1': 'info_id', '3': 3, '4': 1, '5': 5, '10': 'infoId'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    {'1': 'key', '3': 5, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 6, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `UpdateStudioRoomInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomInfoRequestDescriptor = $convert.base64Decode(
    'ChtVcGRhdGVTdHVkaW9Sb29tSW5mb1JlcXVlc3QSGwoJc3R1ZGlvX2lkGAEgASgFUghzdHVkaW'
    '9JZBIXCgdyb29tX2lkGAIgASgFUgZyb29tSWQSFwoHaW5mb19pZBgDIAEoBVIGaW5mb0lkEhIK'
    'BHR5cGUYBCABKAlSBHR5cGUSEAoDa2V5GAUgASgJUgNrZXkSFAoFdmFsdWUYBiABKAlSBXZhbH'
    'Vl');

@$core.Deprecated('Use updateStudioRoomInfoResponseDescriptor instead')
const UpdateStudioRoomInfoResponse$json = {
  '1': 'UpdateStudioRoomInfoResponse',
  '2': [
    {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'infos'},
  ],
};

/// Descriptor for `UpdateStudioRoomInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomInfoResponseDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVTdHVkaW9Sb29tSW5mb1Jlc3BvbnNlEiwKBWluZm9zGAEgAygLMhYuYnN0LnYxLl'
    'N0dWRpb1Jvb21JbmZvUgVpbmZvcw==');

@$core.Deprecated('Use deleteStudioRoomInfoRequestDescriptor instead')
const DeleteStudioRoomInfoRequest$json = {
  '1': 'DeleteStudioRoomInfoRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 5, '10': 'roomId'},
    {'1': 'info_id', '3': 3, '4': 1, '5': 5, '10': 'infoId'},
  ],
};

/// Descriptor for `DeleteStudioRoomInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomInfoRequestDescriptor = $convert.base64Decode(
    'ChtEZWxldGVTdHVkaW9Sb29tSW5mb1JlcXVlc3QSGwoJc3R1ZGlvX2lkGAEgASgFUghzdHVkaW'
    '9JZBIXCgdyb29tX2lkGAIgASgFUgZyb29tSWQSFwoHaW5mb19pZBgDIAEoBVIGaW5mb0lk');

@$core.Deprecated('Use deleteStudioRoomInfoResponseDescriptor instead')
const DeleteStudioRoomInfoResponse$json = {
  '1': 'DeleteStudioRoomInfoResponse',
  '2': [
    {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'infos'},
  ],
};

/// Descriptor for `DeleteStudioRoomInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomInfoResponseDescriptor = $convert.base64Decode(
    'ChxEZWxldGVTdHVkaW9Sb29tSW5mb1Jlc3BvbnNlEiwKBWluZm9zGAEgAygLMhYuYnN0LnYxLl'
    'N0dWRpb1Jvb21JbmZvUgVpbmZvcw==');

