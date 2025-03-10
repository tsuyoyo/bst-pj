//
//  Generated code. Do not modify.
//  source: bst/v1/location.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use locationDescriptor instead')
const Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'additional_info', '3': 3, '4': 1, '5': 9, '10': 'additionalInfo'},
    {'1': 'area', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.Area', '10': 'area'},
    {'1': 'map_url', '3': 5, '4': 1, '5': 9, '10': 'mapUrl'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode(
    'CghMb2NhdGlvbhIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRInCg9hZGRpdG'
    'lvbmFsX2luZm8YAyABKAlSDmFkZGl0aW9uYWxJbmZvEiAKBGFyZWEYBCABKAsyDC5ic3QudjEu'
    'QXJlYVIEYXJlYRIXCgdtYXBfdXJsGAUgASgJUgZtYXBVcmw=');

@$core.Deprecated('Use studioReviewDescriptor instead')
const StudioReview$json = {
  '1': 'StudioReview',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'review', '3': 2, '4': 1, '5': 9, '10': 'review'},
    {'1': 'rating', '3': 3, '4': 1, '5': 5, '10': 'rating'},
    {'1': 'resources', '3': 4, '4': 3, '5': 11, '6': '.bst.v1.Resource', '10': 'resources'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `StudioReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studioReviewDescriptor = $convert.base64Decode(
    'CgxTdHVkaW9SZXZpZXcSIAoEdXNlchgBIAEoCzIMLmJzdC52MS5Vc2VyUgR1c2VyEhYKBnJldm'
    'lldxgCIAEoCVIGcmV2aWV3EhYKBnJhdGluZxgDIAEoBVIGcmF0aW5nEi4KCXJlc291cmNlcxgE'
    'IAMoCzIQLmJzdC52MS5SZXNvdXJjZVIJcmVzb3VyY2VzEjkKCmNyZWF0ZWRfYXQYBSABKAsyGi'
    '5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use studioDescriptor instead')
const Studio$json = {
  '1': 'Studio',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'google_maps_url', '3': 4, '4': 1, '5': 9, '10': 'googleMapsUrl'},
    {'1': 'additional_info', '3': 5, '4': 1, '5': 9, '10': 'additionalInfo'},
    {'1': 'area', '3': 6, '4': 1, '5': 11, '6': '.bst.v1.Area', '10': 'area'},
    {'1': 'overall_rating', '3': 7, '4': 1, '5': 5, '10': 'overallRating'},
    {'1': 'rooms', '3': 8, '4': 3, '5': 11, '6': '.bst.v1.StudioRoom', '10': 'rooms'},
  ],
};

/// Descriptor for `Studio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studioDescriptor = $convert.base64Decode(
    'CgZTdHVkaW8SDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcH'
    'Rpb24YAyABKAlSC2Rlc2NyaXB0aW9uEiYKD2dvb2dsZV9tYXBzX3VybBgEIAEoCVINZ29vZ2xl'
    'TWFwc1VybBInCg9hZGRpdGlvbmFsX2luZm8YBSABKAlSDmFkZGl0aW9uYWxJbmZvEiAKBGFyZW'
    'EYBiABKAsyDC5ic3QudjEuQXJlYVIEYXJlYRIlCg5vdmVyYWxsX3JhdGluZxgHIAEoBVINb3Zl'
    'cmFsbFJhdGluZxIoCgVyb29tcxgIIAMoCzISLmJzdC52MS5TdHVkaW9Sb29tUgVyb29tcw==');

@$core.Deprecated('Use studioRoomDescriptor instead')
const StudioRoom$json = {
  '1': 'StudioRoom',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'capacity', '3': 3, '4': 1, '5': 5, '10': 'capacity'},
    {'1': 'price', '3': 4, '4': 1, '5': 5, '10': 'price'},
    {'1': 'size', '3': 5, '4': 1, '5': 5, '10': 'size'},
    {'1': 'infos', '3': 6, '4': 3, '5': 11, '6': '.bst.v1.StudioRoomInfo', '10': 'infos'},
  ],
};

/// Descriptor for `StudioRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studioRoomDescriptor = $convert.base64Decode(
    'CgpTdHVkaW9Sb29tEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhoKCGNhcG'
    'FjaXR5GAMgASgFUghjYXBhY2l0eRIUCgVwcmljZRgEIAEoBVIFcHJpY2USEgoEc2l6ZRgFIAEo'
    'BVIEc2l6ZRIsCgVpbmZvcxgGIAMoCzIWLmJzdC52MS5TdHVkaW9Sb29tSW5mb1IFaW5mb3M=');

@$core.Deprecated('Use studioRoomInfoDescriptor instead')
const StudioRoomInfo$json = {
  '1': 'StudioRoomInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.StudioRoomInfoType', '10': 'type'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 4, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `StudioRoomInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studioRoomInfoDescriptor = $convert.base64Decode(
    'Cg5TdHVkaW9Sb29tSW5mbxIOCgJpZBgBIAEoBVICaWQSLgoEdHlwZRgCIAEoCzIaLmJzdC52MS'
    '5TdHVkaW9Sb29tSW5mb1R5cGVSBHR5cGUSEAoDa2V5GAMgASgJUgNrZXkSFAoFdmFsdWUYBCAB'
    'KAlSBXZhbHVl');

@$core.Deprecated('Use studioRoomInfoTypeDescriptor instead')
const StudioRoomInfoType$json = {
  '1': 'StudioRoomInfoType',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `StudioRoomInfoType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studioRoomInfoTypeDescriptor = $convert.base64Decode(
    'ChJTdHVkaW9Sb29tSW5mb1R5cGUSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'U=');

