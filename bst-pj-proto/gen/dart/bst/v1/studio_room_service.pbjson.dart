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
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'capacity', '3': 2, '4': 1, '5': 5, '10': 'capacity'},
    {'1': 'price', '3': 3, '4': 1, '5': 5, '10': 'price'},
    {'1': 'size', '3': 4, '4': 1, '5': 5, '10': 'size'},
  ],
};

/// Descriptor for `CreateStudioRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomRequestDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVTdHVkaW9Sb29tUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCGNhcGFjaX'
    'R5GAIgASgFUghjYXBhY2l0eRIUCgVwcmljZRgDIAEoBVIFcHJpY2USEgoEc2l6ZRgEIAEoBVIE'
    'c2l6ZQ==');

@$core.Deprecated('Use createStudioRoomResponseDescriptor instead')
const CreateStudioRoomResponse$json = {
  '1': 'CreateStudioRoomResponse',
  '2': [
    {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'room'},
  ],
};

/// Descriptor for `CreateStudioRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomResponseDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVTdHVkaW9Sb29tUmVzcG9uc2USJgoEcm9vbRgBIAEoCzISLmJzdC52MS5TdHVkaW'
    '9Sb29tUgRyb29t');

@$core.Deprecated('Use listStudioRoomsRequestDescriptor instead')
const ListStudioRoomsRequest$json = {
  '1': 'ListStudioRoomsRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
  ],
};

/// Descriptor for `ListStudioRoomsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomsRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0U3R1ZGlvUm9vbXNSZXF1ZXN0EhsKCXN0dWRpb19pZBgBIAEoBVIIc3R1ZGlvSWQ=');

@$core.Deprecated('Use getStudioRoomResponseDescriptor instead')
const GetStudioRoomResponse$json = {
  '1': 'GetStudioRoomResponse',
  '2': [
    {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'room'},
  ],
};

/// Descriptor for `GetStudioRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStudioRoomResponseDescriptor = $convert.base64Decode(
    'ChVHZXRTdHVkaW9Sb29tUmVzcG9uc2USJgoEcm9vbRgBIAEoCzISLmJzdC52MS5TdHVkaW9Sb2'
    '9tUgRyb29t');

@$core.Deprecated('Use listStudioRoomsResponseDescriptor instead')
const ListStudioRoomsResponse$json = {
  '1': 'ListStudioRoomsResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'rooms'},
  ],
};

/// Descriptor for `ListStudioRoomsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomsResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0U3R1ZGlvUm9vbXNSZXNwb25zZRIoCgVyb29tcxgBIAMoCzISLmJzdC52MS5TdHVkaW'
    '9Sb29tUgVyb29tcw==');

@$core.Deprecated('Use updateStudioRoomRequestDescriptor instead')
const UpdateStudioRoomRequest$json = {
  '1': 'UpdateStudioRoomRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'capacity', '3': 2, '4': 1, '5': 5, '10': 'capacity'},
    {'1': 'size', '3': 3, '4': 1, '5': 5, '10': 'size'},
    {'1': 'price', '3': 4, '4': 1, '5': 5, '10': 'price'},
  ],
};

/// Descriptor for `UpdateStudioRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomRequestDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVTdHVkaW9Sb29tUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCGNhcGFjaX'
    'R5GAIgASgFUghjYXBhY2l0eRISCgRzaXplGAMgASgFUgRzaXplEhQKBXByaWNlGAQgASgFUgVw'
    'cmljZQ==');

@$core.Deprecated('Use updateStudioRoomResponseDescriptor instead')
const UpdateStudioRoomResponse$json = {
  '1': 'UpdateStudioRoomResponse',
  '2': [
    {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'room'},
  ],
};

/// Descriptor for `UpdateStudioRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomResponseDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTdHVkaW9Sb29tUmVzcG9uc2USJgoEcm9vbRgBIAEoCzISLmJzdC52MS5TdHVkaW'
    '9Sb29tUgRyb29t');

@$core.Deprecated('Use deleteStudioRoomRequestDescriptor instead')
const DeleteStudioRoomRequest$json = {
  '1': 'DeleteStudioRoomRequest',
};

/// Descriptor for `DeleteStudioRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomRequestDescriptor = $convert.base64Decode(
    'ChdEZWxldGVTdHVkaW9Sb29tUmVxdWVzdA==');

@$core.Deprecated('Use deleteStudioRoomResponseDescriptor instead')
const DeleteStudioRoomResponse$json = {
  '1': 'DeleteStudioRoomResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteStudioRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomResponseDescriptor = $convert.base64Decode(
    'ChhEZWxldGVTdHVkaW9Sb29tUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use createStudioRoomInfoRequestDescriptor instead')
const CreateStudioRoomInfoRequest$json = {
  '1': 'CreateStudioRoomInfoRequest',
  '2': [
    {'1': 'type_id', '3': 1, '4': 1, '5': 5, '10': 'typeId'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `CreateStudioRoomInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomInfoRequestDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVTdHVkaW9Sb29tSW5mb1JlcXVlc3QSFwoHdHlwZV9pZBgBIAEoBVIGdHlwZUlkEh'
    'AKA2tleRgCIAEoCVIDa2V5EhQKBXZhbHVlGAMgASgJUgV2YWx1ZQ==');

@$core.Deprecated('Use createStudioRoomInfoResponseDescriptor instead')
const CreateStudioRoomInfoResponse$json = {
  '1': 'CreateStudioRoomInfoResponse',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'info'},
  ],
};

/// Descriptor for `CreateStudioRoomInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRoomInfoResponseDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVTdHVkaW9Sb29tSW5mb1Jlc3BvbnNlEioKBGluZm8YASABKAsyFi5ic3QudjEuU3'
    'R1ZGlvUm9vbUluZm9SBGluZm8=');

@$core.Deprecated('Use listStudioRoomInfosRequestDescriptor instead')
const ListStudioRoomInfosRequest$json = {
  '1': 'ListStudioRoomInfosRequest',
};

/// Descriptor for `ListStudioRoomInfosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomInfosRequestDescriptor = $convert.base64Decode(
    'ChpMaXN0U3R1ZGlvUm9vbUluZm9zUmVxdWVzdA==');

@$core.Deprecated('Use listStudioRoomInfosResponseDescriptor instead')
const ListStudioRoomInfosResponse$json = {
  '1': 'ListStudioRoomInfosResponse',
  '2': [
    {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'infos'},
  ],
};

/// Descriptor for `ListStudioRoomInfosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioRoomInfosResponseDescriptor = $convert.base64Decode(
    'ChtMaXN0U3R1ZGlvUm9vbUluZm9zUmVzcG9uc2USLAoFaW5mb3MYASADKAsyFi5ic3QudjEuU3'
    'R1ZGlvUm9vbUluZm9SBWluZm9z');

@$core.Deprecated('Use updateStudioRoomInfoRequestDescriptor instead')
const UpdateStudioRoomInfoRequest$json = {
  '1': 'UpdateStudioRoomInfoRequest',
  '2': [
    {'1': 'type_id', '3': 1, '4': 1, '5': 5, '10': 'typeId'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `UpdateStudioRoomInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomInfoRequestDescriptor = $convert.base64Decode(
    'ChtVcGRhdGVTdHVkaW9Sb29tSW5mb1JlcXVlc3QSFwoHdHlwZV9pZBgBIAEoBVIGdHlwZUlkEh'
    'AKA2tleRgCIAEoCVIDa2V5EhQKBXZhbHVlGAMgASgJUgV2YWx1ZQ==');

@$core.Deprecated('Use updateStudioRoomInfoResponseDescriptor instead')
const UpdateStudioRoomInfoResponse$json = {
  '1': 'UpdateStudioRoomInfoResponse',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'info'},
  ],
};

/// Descriptor for `UpdateStudioRoomInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRoomInfoResponseDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVTdHVkaW9Sb29tSW5mb1Jlc3BvbnNlEioKBGluZm8YASABKAsyFi5ic3QudjEuU3'
    'R1ZGlvUm9vbUluZm9SBGluZm8=');

@$core.Deprecated('Use deleteStudioRoomInfoRequestDescriptor instead')
const DeleteStudioRoomInfoRequest$json = {
  '1': 'DeleteStudioRoomInfoRequest',
};

/// Descriptor for `DeleteStudioRoomInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomInfoRequestDescriptor = $convert.base64Decode(
    'ChtEZWxldGVTdHVkaW9Sb29tSW5mb1JlcXVlc3Q=');

@$core.Deprecated('Use deleteStudioRoomInfoResponseDescriptor instead')
const DeleteStudioRoomInfoResponse$json = {
  '1': 'DeleteStudioRoomInfoResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteStudioRoomInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRoomInfoResponseDescriptor = $convert.base64Decode(
    'ChxEZWxldGVTdHVkaW9Sb29tSW5mb1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3'
    'M=');

@$core.Deprecated('Use listRoomInfoTypesRequestDescriptor instead')
const ListRoomInfoTypesRequest$json = {
  '1': 'ListRoomInfoTypesRequest',
};

/// Descriptor for `ListRoomInfoTypesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomInfoTypesRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0Um9vbUluZm9UeXBlc1JlcXVlc3Q=');

@$core.Deprecated('Use listRoomInfoTypesResponseDescriptor instead')
const ListRoomInfoTypesResponse$json = {
  '1': 'ListRoomInfoTypesResponse',
  '2': [
    {'1': 'types', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioRoomInfoType', '10': 'types'},
  ],
};

/// Descriptor for `ListRoomInfoTypesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoomInfoTypesResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0Um9vbUluZm9UeXBlc1Jlc3BvbnNlEjAKBXR5cGVzGAEgAygLMhouYnN0LnYxLlN0dW'
    'Rpb1Jvb21JbmZvVHlwZVIFdHlwZXM=');

