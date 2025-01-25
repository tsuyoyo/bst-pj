//
//  Generated code. Do not modify.
//  source: content.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resourceDescriptor instead')
const Resource$json = {
  '1': 'Resource',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.Resource.ResourceType', '10': 'type'},
    {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
  '4': [Resource_ResourceType$json],
};

@$core.Deprecated('Use resourceDescriptor instead')
const Resource_ResourceType$json = {
  '1': 'ResourceType',
  '2': [
    {'1': 'RESOURCE_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'RESOURCE_TYPE_IMAGE', '2': 1},
    {'1': 'RESOURCE_TYPE_VIDEO', '2': 2},
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode(
    'CghSZXNvdXJjZRIxCgR0eXBlGAEgASgOMh0uYnN0LnYxLlJlc291cmNlLlJlc291cmNlVHlwZV'
    'IEdHlwZRIOCgJpZBgCIAEoBVICaWQSEAoDdXJsGAMgASgJUgN1cmwSEgoEbmFtZRgEIAEoCVIE'
    'bmFtZRIgCgtkZXNjcmlwdGlvbhgFIAEoCVILZGVzY3JpcHRpb24iXwoMUmVzb3VyY2VUeXBlEh'
    '0KGVJFU09VUkNFX1RZUEVfVU5TUEVDSUZJRUQQABIXChNSRVNPVVJDRV9UWVBFX0lNQUdFEAES'
    'FwoTUkVTT1VSQ0VfVFlQRV9WSURFTxAC');

@$core.Deprecated('Use songDescriptor instead')
const Song$json = {
  '1': 'Song',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'artist', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Artist', '10': 'artist'},
    {'1': 'resources', '3': 4, '4': 3, '5': 11, '6': '.bst.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `Song`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songDescriptor = $convert.base64Decode(
    'CgRTb25nEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSJgoGYXJ0aXN0GA'
    'MgASgLMg4uYnN0LnYxLkFydGlzdFIGYXJ0aXN0Ei4KCXJlc291cmNlcxgEIAMoCzIQLmJzdC52'
    'MS5SZXNvdXJjZVIJcmVzb3VyY2Vz');

@$core.Deprecated('Use genreDescriptor instead')
const Genre$json = {
  '1': 'Genre',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Genre`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genreDescriptor = $convert.base64Decode(
    'CgVHZW5yZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use artistDescriptor instead')
const Artist$json = {
  '1': 'Artist',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'genre', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
    {'1': 'website', '3': 4, '4': 1, '5': 9, '10': 'website'},
  ],
};

/// Descriptor for `Artist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artistDescriptor = $convert.base64Decode(
    'CgZBcnRpc3QSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIwoFZ2VucmUYAy'
    'ABKAsyDS5ic3QudjEuR2VucmVSBWdlbnJlEhgKB3dlYnNpdGUYBCABKAlSB3dlYnNpdGU=');

@$core.Deprecated('Use partDescriptor instead')
const Part$json = {
  '1': 'Part',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Part`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partDescriptor = $convert.base64Decode(
    'CgRQYXJ0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW'
    '9uGAMgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use areaDescriptor instead')
const Area$json = {
  '1': 'Area',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'prefectureId', '3': 2, '4': 1, '5': 5, '10': 'prefectureId'},
  ],
};

/// Descriptor for `Area`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List areaDescriptor = $convert.base64Decode(
    'CgRBcmVhEhIKBG5hbWUYASABKAlSBG5hbWUSIgoMcHJlZmVjdHVyZUlkGAIgASgFUgxwcmVmZW'
    'N0dXJlSWQ=');

@$core.Deprecated('Use locationDescriptor instead')
const Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'additionalInfo', '3': 3, '4': 1, '5': 9, '10': 'additionalInfo'},
    {'1': 'area', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.Area', '10': 'area'},
    {'1': 'mapUrl', '3': 5, '4': 1, '5': 9, '10': 'mapUrl'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode(
    'CghMb2NhdGlvbhIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRImCg5hZGRpdG'
    'lvbmFsSW5mbxgDIAEoCVIOYWRkaXRpb25hbEluZm8SIAoEYXJlYRgEIAEoCzIMLmJzdC52MS5B'
    'cmVhUgRhcmVhEhYKBm1hcFVybBgFIAEoCVIGbWFwVXJs');

