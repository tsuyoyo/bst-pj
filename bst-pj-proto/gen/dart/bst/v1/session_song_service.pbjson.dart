//
//  Generated code. Do not modify.
//  source: bst/v1/session_song_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use addSessionSongRequestDescriptor instead')
const AddSessionSongRequest$json = {
  '1': 'AddSessionSongRequest',
  '2': [
    {'1': 'song_id', '3': 1, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'mandatory_part_ids', '3': 2, '4': 3, '5': 5, '10': 'mandatoryPartIds'},
  ],
};

/// Descriptor for `AddSessionSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionSongRequestDescriptor = $convert.base64Decode(
    'ChVBZGRTZXNzaW9uU29uZ1JlcXVlc3QSFwoHc29uZ19pZBgBIAEoBVIGc29uZ0lkEiwKEm1hbm'
    'RhdG9yeV9wYXJ0X2lkcxgCIAMoBVIQbWFuZGF0b3J5UGFydElkcw==');

@$core.Deprecated('Use addSessionSongResponseDescriptor instead')
const AddSessionSongResponse$json = {
  '1': 'AddSessionSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionSong', '10': 'song'},
  ],
};

/// Descriptor for `AddSessionSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionSongResponseDescriptor = $convert.base64Decode(
    'ChZBZGRTZXNzaW9uU29uZ1Jlc3BvbnNlEicKBHNvbmcYASABKAsyEy5ic3QudjEuU2Vzc2lvbl'
    'NvbmdSBHNvbmc=');

@$core.Deprecated('Use listSessionSongsRequestDescriptor instead')
const ListSessionSongsRequest$json = {
  '1': 'ListSessionSongsRequest',
};

/// Descriptor for `ListSessionSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongsRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0U2Vzc2lvblNvbmdzUmVxdWVzdA==');

@$core.Deprecated('Use listSessionSongsResponseDescriptor instead')
const ListSessionSongsResponse$json = {
  '1': 'ListSessionSongsResponse',
  '2': [
    {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.SessionSong', '10': 'songs'},
  ],
};

/// Descriptor for `ListSessionSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionSongsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0U2Vzc2lvblNvbmdzUmVzcG9uc2USKQoFc29uZ3MYASADKAsyEy5ic3QudjEuU2Vzc2'
    'lvblNvbmdSBXNvbmdz');

@$core.Deprecated('Use getSessionSongRequestDescriptor instead')
const GetSessionSongRequest$json = {
  '1': 'GetSessionSongRequest',
};

/// Descriptor for `GetSessionSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionSongRequestDescriptor = $convert.base64Decode(
    'ChVHZXRTZXNzaW9uU29uZ1JlcXVlc3Q=');

@$core.Deprecated('Use getSessionSongResponseDescriptor instead')
const GetSessionSongResponse$json = {
  '1': 'GetSessionSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionSong', '10': 'song'},
  ],
};

/// Descriptor for `GetSessionSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionSongResponseDescriptor = $convert.base64Decode(
    'ChZHZXRTZXNzaW9uU29uZ1Jlc3BvbnNlEicKBHNvbmcYASABKAsyEy5ic3QudjEuU2Vzc2lvbl'
    'NvbmdSBHNvbmc=');

@$core.Deprecated('Use updateSessionSongRequestDescriptor instead')
const UpdateSessionSongRequest$json = {
  '1': 'UpdateSessionSongRequest',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionSong', '10': 'song'},
  ],
};

/// Descriptor for `UpdateSessionSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionSongRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTZXNzaW9uU29uZ1JlcXVlc3QSJwoEc29uZxgBIAEoCzITLmJzdC52MS5TZXNzaW'
    '9uU29uZ1IEc29uZw==');

@$core.Deprecated('Use updateSessionSongResponseDescriptor instead')
const UpdateSessionSongResponse$json = {
  '1': 'UpdateSessionSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionSong', '10': 'song'},
  ],
};

/// Descriptor for `UpdateSessionSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionSongResponseDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVTZXNzaW9uU29uZ1Jlc3BvbnNlEicKBHNvbmcYASABKAsyEy5ic3QudjEuU2Vzc2'
    'lvblNvbmdSBHNvbmc=');

@$core.Deprecated('Use deleteSessionSongRequestDescriptor instead')
const DeleteSessionSongRequest$json = {
  '1': 'DeleteSessionSongRequest',
};

/// Descriptor for `DeleteSessionSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionSongRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVTZXNzaW9uU29uZ1JlcXVlc3Q=');

@$core.Deprecated('Use deleteSessionSongResponseDescriptor instead')
const DeleteSessionSongResponse$json = {
  '1': 'DeleteSessionSongResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionSongResponseDescriptor = $convert.base64Decode(
    'ChlEZWxldGVTZXNzaW9uU29uZ1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

