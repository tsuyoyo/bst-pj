//
//  Generated code. Do not modify.
//  source: bst/v1/session_song_entry_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use addSongEntryRequestDescriptor instead')
const AddSongEntryRequest$json = {
  '1': 'AddSongEntryRequest',
  '2': [
    {'1': 'session_part_id', '3': 1, '4': 1, '5': 5, '10': 'sessionPartId'},
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `AddSongEntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongEntryRequestDescriptor = $convert.base64Decode(
    'ChNBZGRTb25nRW50cnlSZXF1ZXN0EiYKD3Nlc3Npb25fcGFydF9pZBgBIAEoBVINc2Vzc2lvbl'
    'BhcnRJZBIYCgdjb21tZW50GAIgASgJUgdjb21tZW50');

@$core.Deprecated('Use addSongEntryResponseDescriptor instead')
const AddSongEntryResponse$json = {
  '1': 'AddSongEntryResponse',
  '2': [
    {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionSongEntry', '10': 'entry'},
  ],
};

/// Descriptor for `AddSongEntryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongEntryResponseDescriptor = $convert.base64Decode(
    'ChRBZGRTb25nRW50cnlSZXNwb25zZRIuCgVlbnRyeRgBIAEoCzIYLmJzdC52MS5TZXNzaW9uU2'
    '9uZ0VudHJ5UgVlbnRyeQ==');

@$core.Deprecated('Use updateSongEntryRequestDescriptor instead')
const UpdateSongEntryRequest$json = {
  '1': 'UpdateSongEntryRequest',
  '2': [
    {'1': 'comment', '3': 1, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `UpdateSongEntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongEntryRequestDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVTb25nRW50cnlSZXF1ZXN0EhgKB2NvbW1lbnQYASABKAlSB2NvbW1lbnQ=');

@$core.Deprecated('Use updateSongEntryResponseDescriptor instead')
const UpdateSongEntryResponse$json = {
  '1': 'UpdateSongEntryResponse',
  '2': [
    {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionSongEntry', '10': 'entry'},
  ],
};

/// Descriptor for `UpdateSongEntryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongEntryResponseDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVTb25nRW50cnlSZXNwb25zZRIuCgVlbnRyeRgBIAEoCzIYLmJzdC52MS5TZXNzaW'
    '9uU29uZ0VudHJ5UgVlbnRyeQ==');

@$core.Deprecated('Use deleteSongEntryRequestDescriptor instead')
const DeleteSongEntryRequest$json = {
  '1': 'DeleteSongEntryRequest',
};

/// Descriptor for `DeleteSongEntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongEntryRequestDescriptor = $convert.base64Decode(
    'ChZEZWxldGVTb25nRW50cnlSZXF1ZXN0');

@$core.Deprecated('Use deleteSongEntryResponseDescriptor instead')
const DeleteSongEntryResponse$json = {
  '1': 'DeleteSongEntryResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSongEntryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongEntryResponseDescriptor = $convert.base64Decode(
    'ChdEZWxldGVTb25nRW50cnlSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

