//
//  Generated code. Do not modify.
//  source: bst/v1/artist_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createArtistRequestDescriptor instead')
const CreateArtistRequest$json = {
  '1': 'CreateArtistRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'genre', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
    {'1': 'website', '3': 4, '4': 1, '5': 9, '10': 'website'},
  ],
};

/// Descriptor for `CreateArtistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createArtistRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVBcnRpc3RSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb2'
    '4YAiABKAlSC2Rlc2NyaXB0aW9uEiMKBWdlbnJlGAMgASgLMg0uYnN0LnYxLkdlbnJlUgVnZW5y'
    'ZRIYCgd3ZWJzaXRlGAQgASgJUgd3ZWJzaXRl');

@$core.Deprecated('Use createArtistResponseDescriptor instead')
const CreateArtistResponse$json = {
  '1': 'CreateArtistResponse',
  '2': [
    {'1': 'artist', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Artist', '10': 'artist'},
  ],
};

/// Descriptor for `CreateArtistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createArtistResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVBcnRpc3RSZXNwb25zZRImCgZhcnRpc3QYASABKAsyDi5ic3QudjEuQXJ0aXN0Ug'
    'ZhcnRpc3Q=');

@$core.Deprecated('Use listArtistsRequestDescriptor instead')
const ListArtistsRequest$json = {
  '1': 'ListArtistsRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 5, '10': 'pageToken'},
    {'1': 'query', '3': 3, '4': 1, '5': 9, '10': 'query'},
    {'1': 'genre', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
  ],
};

/// Descriptor for `ListArtistsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listArtistsRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0QXJ0aXN0c1JlcXVlc3QSGwoJcGFnZV9zaXplGAEgASgFUghwYWdlU2l6ZRIdCgpwYW'
    'dlX3Rva2VuGAIgASgFUglwYWdlVG9rZW4SFAoFcXVlcnkYAyABKAlSBXF1ZXJ5EiMKBWdlbnJl'
    'GAQgASgLMg0uYnN0LnYxLkdlbnJlUgVnZW5yZQ==');

@$core.Deprecated('Use listArtistsResponseDescriptor instead')
const ListArtistsResponse$json = {
  '1': 'ListArtistsResponse',
  '2': [
    {'1': 'artists', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Artist', '10': 'artists'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListArtistsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listArtistsResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0QXJ0aXN0c1Jlc3BvbnNlEigKB2FydGlzdHMYASADKAsyDi5ic3QudjEuQXJ0aXN0Ug'
    'dhcnRpc3RzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VUb2tlbhIdCgp0b3Rh'
    'bF9zaXplGAMgASgFUgl0b3RhbFNpemU=');

@$core.Deprecated('Use getArtistRequestDescriptor instead')
const GetArtistRequest$json = {
  '1': 'GetArtistRequest',
  '2': [
    {'1': 'artist_id', '3': 1, '4': 1, '5': 5, '10': 'artistId'},
  ],
};

/// Descriptor for `GetArtistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArtistRequestDescriptor = $convert.base64Decode(
    'ChBHZXRBcnRpc3RSZXF1ZXN0EhsKCWFydGlzdF9pZBgBIAEoBVIIYXJ0aXN0SWQ=');

@$core.Deprecated('Use getArtistResponseDescriptor instead')
const GetArtistResponse$json = {
  '1': 'GetArtistResponse',
  '2': [
    {'1': 'artist', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Artist', '10': 'artist'},
  ],
};

/// Descriptor for `GetArtistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArtistResponseDescriptor = $convert.base64Decode(
    'ChFHZXRBcnRpc3RSZXNwb25zZRImCgZhcnRpc3QYASABKAsyDi5ic3QudjEuQXJ0aXN0UgZhcn'
    'Rpc3Q=');

@$core.Deprecated('Use updateArtistRequestDescriptor instead')
const UpdateArtistRequest$json = {
  '1': 'UpdateArtistRequest',
  '2': [
    {'1': 'artist_id', '3': 1, '4': 1, '5': 5, '10': 'artistId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'genre', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
    {'1': 'website', '3': 5, '4': 1, '5': 9, '10': 'website'},
  ],
};

/// Descriptor for `UpdateArtistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateArtistRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVBcnRpc3RSZXF1ZXN0EhsKCWFydGlzdF9pZBgBIAEoBVIIYXJ0aXN0SWQSEgoEbm'
    'FtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SIwoFZ2Vu'
    'cmUYBCABKAsyDS5ic3QudjEuR2VucmVSBWdlbnJlEhgKB3dlYnNpdGUYBSABKAlSB3dlYnNpdG'
    'U=');

@$core.Deprecated('Use updateArtistResponseDescriptor instead')
const UpdateArtistResponse$json = {
  '1': 'UpdateArtistResponse',
  '2': [
    {'1': 'artist', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Artist', '10': 'artist'},
  ],
};

/// Descriptor for `UpdateArtistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateArtistResponseDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVBcnRpc3RSZXNwb25zZRImCgZhcnRpc3QYASABKAsyDi5ic3QudjEuQXJ0aXN0Ug'
    'ZhcnRpc3Q=');

@$core.Deprecated('Use deleteArtistRequestDescriptor instead')
const DeleteArtistRequest$json = {
  '1': 'DeleteArtistRequest',
  '2': [
    {'1': 'artist_id', '3': 1, '4': 1, '5': 5, '10': 'artistId'},
  ],
};

/// Descriptor for `DeleteArtistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteArtistRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVBcnRpc3RSZXF1ZXN0EhsKCWFydGlzdF9pZBgBIAEoBVIIYXJ0aXN0SWQ=');

@$core.Deprecated('Use deleteArtistResponseDescriptor instead')
const DeleteArtistResponse$json = {
  '1': 'DeleteArtistResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteArtistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteArtistResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVBcnRpc3RSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use listArtistSongsRequestDescriptor instead')
const ListArtistSongsRequest$json = {
  '1': 'ListArtistSongsRequest',
  '2': [
    {'1': 'artist_id', '3': 1, '4': 1, '5': 5, '10': 'artistId'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 3, '4': 1, '5': 5, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListArtistSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listArtistSongsRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0QXJ0aXN0U29uZ3NSZXF1ZXN0EhsKCWFydGlzdF9pZBgBIAEoBVIIYXJ0aXN0SWQSGw'
    'oJcGFnZV9zaXplGAIgASgFUghwYWdlU2l6ZRIdCgpwYWdlX3Rva2VuGAMgASgFUglwYWdlVG9r'
    'ZW4=');

@$core.Deprecated('Use listArtistSongsResponseDescriptor instead')
const ListArtistSongsResponse$json = {
  '1': 'ListArtistSongsResponse',
  '2': [
    {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Song', '10': 'songs'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListArtistSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listArtistSongsResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0QXJ0aXN0U29uZ3NSZXNwb25zZRIiCgVzb25ncxgBIAMoCzIMLmJzdC52MS5Tb25nUg'
    'Vzb25ncxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SHQoKdG90YWxf'
    'c2l6ZRgDIAEoBVIJdG90YWxTaXpl');

