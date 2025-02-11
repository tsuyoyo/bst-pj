//
//  Generated code. Do not modify.
//  source: bst/v1/location_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createLocationRequestDescriptor instead')
const CreateLocationRequest$json = {
  '1': 'CreateLocationRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'google_maps_url', '3': 2, '4': 1, '5': 9, '10': 'googleMapsUrl'},
    {'1': 'additional_info', '3': 3, '4': 1, '5': 9, '10': 'additionalInfo'},
    {'1': 'area_id', '3': 4, '4': 1, '5': 5, '10': 'areaId'},
  ],
};

/// Descriptor for `CreateLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createLocationRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVMb2NhdGlvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRImCg9nb29nbGVfbW'
    'Fwc191cmwYAiABKAlSDWdvb2dsZU1hcHNVcmwSJwoPYWRkaXRpb25hbF9pbmZvGAMgASgJUg5h'
    'ZGRpdGlvbmFsSW5mbxIXCgdhcmVhX2lkGAQgASgFUgZhcmVhSWQ=');

@$core.Deprecated('Use createLocationResponseDescriptor instead')
const CreateLocationResponse$json = {
  '1': 'CreateLocationResponse',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
  ],
};

/// Descriptor for `CreateLocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createLocationResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVMb2NhdGlvblJlc3BvbnNlEiwKCGxvY2F0aW9uGAEgASgLMhAuYnN0LnYxLkxvY2'
    'F0aW9uUghsb2NhdGlvbg==');

@$core.Deprecated('Use listLocationsRequestDescriptor instead')
const ListLocationsRequest$json = {
  '1': 'ListLocationsRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
    {'1': 'area', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Area', '10': 'area'},
  ],
};

/// Descriptor for `ListLocationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLocationsRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0TG9jYXRpb25zUmVxdWVzdBIbCglwYWdlX3NpemUYASABKAVSCHBhZ2VTaXplEh0KCn'
    'BhZ2VfdG9rZW4YAiABKAlSCXBhZ2VUb2tlbhIgCgRhcmVhGAMgASgLMgwuYnN0LnYxLkFyZWFS'
    'BGFyZWE=');

@$core.Deprecated('Use listLocationsResponseDescriptor instead')
const ListLocationsResponse$json = {
  '1': 'ListLocationsResponse',
  '2': [
    {'1': 'locations', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Location', '10': 'locations'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListLocationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLocationsResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0TG9jYXRpb25zUmVzcG9uc2USLgoJbG9jYXRpb25zGAEgAygLMhAuYnN0LnYxLkxvY2'
    'F0aW9uUglsb2NhdGlvbnMSJgoPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2Vu'
    'Eh0KCnRvdGFsX3NpemUYAyABKAVSCXRvdGFsU2l6ZQ==');

@$core.Deprecated('Use getLocationRequestDescriptor instead')
const GetLocationRequest$json = {
  '1': 'GetLocationRequest',
  '2': [
    {'1': 'location_id', '3': 1, '4': 1, '5': 5, '10': 'locationId'},
  ],
};

/// Descriptor for `GetLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationRequestDescriptor = $convert.base64Decode(
    'ChJHZXRMb2NhdGlvblJlcXVlc3QSHwoLbG9jYXRpb25faWQYASABKAVSCmxvY2F0aW9uSWQ=');

@$core.Deprecated('Use getLocationResponseDescriptor instead')
const GetLocationResponse$json = {
  '1': 'GetLocationResponse',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
  ],
};

/// Descriptor for `GetLocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationResponseDescriptor = $convert.base64Decode(
    'ChNHZXRMb2NhdGlvblJlc3BvbnNlEiwKCGxvY2F0aW9uGAEgASgLMhAuYnN0LnYxLkxvY2F0aW'
    '9uUghsb2NhdGlvbg==');

@$core.Deprecated('Use updateLocationRequestDescriptor instead')
const UpdateLocationRequest$json = {
  '1': 'UpdateLocationRequest',
  '2': [
    {'1': 'location_id', '3': 1, '4': 1, '5': 5, '10': 'locationId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'google_maps_url', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'googleMapsUrl', '17': true},
    {'1': 'additional_info', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'additionalInfo', '17': true},
    {'1': 'area_id', '3': 5, '4': 1, '5': 5, '9': 3, '10': 'areaId', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_google_maps_url'},
    {'1': '_additional_info'},
    {'1': '_area_id'},
  ],
};

/// Descriptor for `UpdateLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateLocationRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVMb2NhdGlvblJlcXVlc3QSHwoLbG9jYXRpb25faWQYASABKAVSCmxvY2F0aW9uSW'
    'QSFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBEisKD2dvb2dsZV9tYXBzX3VybBgDIAEoCUgBUg1n'
    'b29nbGVNYXBzVXJsiAEBEiwKD2FkZGl0aW9uYWxfaW5mbxgEIAEoCUgCUg5hZGRpdGlvbmFsSW'
    '5mb4gBARIcCgdhcmVhX2lkGAUgASgFSANSBmFyZWFJZIgBAUIHCgVfbmFtZUISChBfZ29vZ2xl'
    'X21hcHNfdXJsQhIKEF9hZGRpdGlvbmFsX2luZm9CCgoIX2FyZWFfaWQ=');

@$core.Deprecated('Use updateLocationResponseDescriptor instead')
const UpdateLocationResponse$json = {
  '1': 'UpdateLocationResponse',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
  ],
};

/// Descriptor for `UpdateLocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateLocationResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVMb2NhdGlvblJlc3BvbnNlEiwKCGxvY2F0aW9uGAEgASgLMhAuYnN0LnYxLkxvY2'
    'F0aW9uUghsb2NhdGlvbg==');

@$core.Deprecated('Use deleteLocationRequestDescriptor instead')
const DeleteLocationRequest$json = {
  '1': 'DeleteLocationRequest',
  '2': [
    {'1': 'location_id', '3': 1, '4': 1, '5': 5, '10': 'locationId'},
  ],
};

/// Descriptor for `DeleteLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteLocationRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVMb2NhdGlvblJlcXVlc3QSHwoLbG9jYXRpb25faWQYASABKAVSCmxvY2F0aW9uSW'
    'Q=');

@$core.Deprecated('Use deleteLocationResponseDescriptor instead')
const DeleteLocationResponse$json = {
  '1': 'DeleteLocationResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteLocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteLocationResponseDescriptor = $convert.base64Decode(
    'ChZEZWxldGVMb2NhdGlvblJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

