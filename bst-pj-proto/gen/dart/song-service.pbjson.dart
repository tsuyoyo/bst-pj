//
//  Generated code. Do not modify.
//  source: song-service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createSongRequestDescriptor instead')
const CreateSongRequest$json = {
  '1': 'CreateSongRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'artist', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Artist', '10': 'artist'},
    {'1': 'genre', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CreateSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSongRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVTb25nUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSJgoGYXJ0aXN0GAIgAS'
    'gLMg4uYnN0LnYxLkFydGlzdFIGYXJ0aXN0EiMKBWdlbnJlGAMgASgLMg0uYnN0LnYxLkdlbnJl'
    'UgVnZW5yZRIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24=');

@$core.Deprecated('Use createSongResponseDescriptor instead')
const CreateSongResponse$json = {
  '1': 'CreateSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Song', '10': 'song'},
  ],
};

/// Descriptor for `CreateSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSongResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVTb25nUmVzcG9uc2USIAoEc29uZxgBIAEoCzIMLmJzdC52MS5Tb25nUgRzb25n');

@$core.Deprecated('Use listSongsRequestDescriptor instead')
const ListSongsRequest$json = {
  '1': 'ListSongsRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 5, '10': 'pageToken'},
    {'1': 'query', '3': 3, '4': 1, '5': 9, '10': 'query'},
    {'1': 'genre', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
    {'1': 'artist_id', '3': 5, '4': 1, '5': 5, '10': 'artistId'},
  ],
};

/// Descriptor for `ListSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0U29uZ3NSZXF1ZXN0EhsKCXBhZ2Vfc2l6ZRgBIAEoBVIIcGFnZVNpemUSHQoKcGFnZV'
    '90b2tlbhgCIAEoBVIJcGFnZVRva2VuEhQKBXF1ZXJ5GAMgASgJUgVxdWVyeRIjCgVnZW5yZRgE'
    'IAEoCzINLmJzdC52MS5HZW5yZVIFZ2VucmUSGwoJYXJ0aXN0X2lkGAUgASgFUghhcnRpc3RJZA'
    '==');

@$core.Deprecated('Use listSongsResponseDescriptor instead')
const ListSongsResponse$json = {
  '1': 'ListSongsResponse',
  '2': [
    {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Song', '10': 'songs'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0U29uZ3NSZXNwb25zZRIiCgVzb25ncxgBIAMoCzIMLmJzdC52MS5Tb25nUgVzb25ncx'
    'ImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SHQoKdG90YWxfc2l6ZRgD'
    'IAEoBVIJdG90YWxTaXpl');

@$core.Deprecated('Use getSongRequestDescriptor instead')
const GetSongRequest$json = {
  '1': 'GetSongRequest',
  '2': [
    {'1': 'song_id', '3': 1, '4': 1, '5': 5, '10': 'songId'},
  ],
};

/// Descriptor for `GetSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSongRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRTb25nUmVxdWVzdBIXCgdzb25nX2lkGAEgASgFUgZzb25nSWQ=');

@$core.Deprecated('Use getSongResponseDescriptor instead')
const GetSongResponse$json = {
  '1': 'GetSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Song', '10': 'song'},
  ],
};

/// Descriptor for `GetSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSongResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRTb25nUmVzcG9uc2USIAoEc29uZxgBIAEoCzIMLmJzdC52MS5Tb25nUgRzb25n');

@$core.Deprecated('Use updateSongRequestDescriptor instead')
const UpdateSongRequest$json = {
  '1': 'UpdateSongRequest',
  '2': [
    {'1': 'song_id', '3': 1, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'artist', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Artist', '10': 'artist'},
    {'1': 'genre', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `UpdateSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVTb25nUmVxdWVzdBIXCgdzb25nX2lkGAEgASgFUgZzb25nSWQSFAoFdGl0bGUYAi'
    'ABKAlSBXRpdGxlEiYKBmFydGlzdBgDIAEoCzIOLmJzdC52MS5BcnRpc3RSBmFydGlzdBIjCgVn'
    'ZW5yZRgEIAEoCzINLmJzdC52MS5HZW5yZVIFZ2VucmUSIAoLZGVzY3JpcHRpb24YBSABKAlSC2'
    'Rlc2NyaXB0aW9u');

@$core.Deprecated('Use updateSongResponseDescriptor instead')
const UpdateSongResponse$json = {
  '1': 'UpdateSongResponse',
  '2': [
    {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Song', '10': 'song'},
  ],
};

/// Descriptor for `UpdateSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVTb25nUmVzcG9uc2USIAoEc29uZxgBIAEoCzIMLmJzdC52MS5Tb25nUgRzb25n');

@$core.Deprecated('Use deleteSongRequestDescriptor instead')
const DeleteSongRequest$json = {
  '1': 'DeleteSongRequest',
  '2': [
    {'1': 'song_id', '3': 1, '4': 1, '5': 5, '10': 'songId'},
  ],
};

/// Descriptor for `DeleteSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVTb25nUmVxdWVzdBIXCgdzb25nX2lkGAEgASgFUgZzb25nSWQ=');

@$core.Deprecated('Use deleteSongResponseDescriptor instead')
const DeleteSongResponse$json = {
  '1': 'DeleteSongResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVTb25nUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use addSongResourceRequestDescriptor instead')
const AddSongResourceRequest$json = {
  '1': 'AddSongResourceRequest',
  '2': [
    {'1': 'song_id', '3': 1, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'resource', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSongResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongResourceRequestDescriptor = $convert.base64Decode(
    'ChZBZGRTb25nUmVzb3VyY2VSZXF1ZXN0EhcKB3NvbmdfaWQYASABKAVSBnNvbmdJZBIsCghyZX'
    'NvdXJjZRgCIAEoCzIQLmJzdC52MS5SZXNvdXJjZVIIcmVzb3VyY2U=');

@$core.Deprecated('Use addSongResourceResponseDescriptor instead')
const AddSongResourceResponse$json = {
  '1': 'AddSongResourceResponse',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `AddSongResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongResourceResponseDescriptor = $convert.base64Decode(
    'ChdBZGRTb25nUmVzb3VyY2VSZXNwb25zZRIsCghyZXNvdXJjZRgBIAEoCzIQLmJzdC52MS5SZX'
    'NvdXJjZVIIcmVzb3VyY2U=');

@$core.Deprecated('Use listSongResourcesRequestDescriptor instead')
const ListSongResourcesRequest$json = {
  '1': 'ListSongResourcesRequest',
  '2': [
    {'1': 'song_id', '3': 1, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 3, '4': 1, '5': 5, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListSongResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongResourcesRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0U29uZ1Jlc291cmNlc1JlcXVlc3QSFwoHc29uZ19pZBgBIAEoBVIGc29uZ0lkEhsKCX'
    'BhZ2Vfc2l6ZRgCIAEoBVIIcGFnZVNpemUSHQoKcGFnZV90b2tlbhgDIAEoBVIJcGFnZVRva2Vu');

@$core.Deprecated('Use listSongResourcesResponseDescriptor instead')
const ListSongResourcesResponse$json = {
  '1': 'ListSongResourcesResponse',
  '2': [
    {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Resource', '10': 'resources'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListSongResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongResourcesResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0U29uZ1Jlc291cmNlc1Jlc3BvbnNlEi4KCXJlc291cmNlcxgBIAMoCzIQLmJzdC52MS'
    '5SZXNvdXJjZVIJcmVzb3VyY2VzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VU'
    'b2tlbhIdCgp0b3RhbF9zaXplGAMgASgFUgl0b3RhbFNpemU=');

@$core.Deprecated('Use deleteSongResourceRequestDescriptor instead')
const DeleteSongResourceRequest$json = {
  '1': 'DeleteSongResourceRequest',
  '2': [
    {'1': 'song_id', '3': 1, '4': 1, '5': 5, '10': 'songId'},
    {'1': 'resource_id', '3': 2, '4': 1, '5': 5, '10': 'resourceId'},
  ],
};

/// Descriptor for `DeleteSongResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongResourceRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVTb25nUmVzb3VyY2VSZXF1ZXN0EhcKB3NvbmdfaWQYASABKAVSBnNvbmdJZBIfCg'
    'tyZXNvdXJjZV9pZBgCIAEoBVIKcmVzb3VyY2VJZA==');

@$core.Deprecated('Use deleteSongResourceResponseDescriptor instead')
const DeleteSongResourceResponse$json = {
  '1': 'DeleteSongResourceResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSongResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongResourceResponseDescriptor = $convert.base64Decode(
    'ChpEZWxldGVTb25nUmVzb3VyY2VSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

