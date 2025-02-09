//
//  Generated code. Do not modify.
//  source: bst/v1/genre_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createGenreRequestDescriptor instead')
const CreateGenreRequest$json = {
  '1': 'CreateGenreRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateGenreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGenreRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVHZW5yZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use createGenreResponseDescriptor instead')
const CreateGenreResponse$json = {
  '1': 'CreateGenreResponse',
  '2': [
    {'1': 'genre', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
  ],
};

/// Descriptor for `CreateGenreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGenreResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVHZW5yZVJlc3BvbnNlEiMKBWdlbnJlGAEgASgLMg0uYnN0LnYxLkdlbnJlUgVnZW'
    '5yZQ==');

@$core.Deprecated('Use listGenresResponseDescriptor instead')
const ListGenresResponse$json = {
  '1': 'ListGenresResponse',
  '2': [
    {'1': 'genres', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Genre', '10': 'genres'},
  ],
};

/// Descriptor for `ListGenresResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGenresResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0R2VucmVzUmVzcG9uc2USJQoGZ2VucmVzGAEgAygLMg0uYnN0LnYxLkdlbnJlUgZnZW'
    '5yZXM=');

@$core.Deprecated('Use updateGenreRequestDescriptor instead')
const UpdateGenreRequest$json = {
  '1': 'UpdateGenreRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UpdateGenreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGenreRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVHZW5yZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use updateGenreResponseDescriptor instead')
const UpdateGenreResponse$json = {
  '1': 'UpdateGenreResponse',
  '2': [
    {'1': 'genre', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Genre', '10': 'genre'},
  ],
};

/// Descriptor for `UpdateGenreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGenreResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVHZW5yZVJlc3BvbnNlEiMKBWdlbnJlGAEgASgLMg0uYnN0LnYxLkdlbnJlUgVnZW'
    '5yZQ==');

