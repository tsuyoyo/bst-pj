//
//  Generated code. Do not modify.
//  source: bst/v1/rating_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createRatingRequestDescriptor instead')
const CreateRatingRequest$json = {
  '1': 'CreateRatingRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'targetType', '3': 2, '4': 1, '5': 14, '6': '.bst.v1.RatingTargetType', '10': 'targetType'},
    {'1': 'targetId', '3': 3, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'rating', '3': 4, '4': 1, '5': 5, '10': 'rating'},
    {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `CreateRatingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRatingRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVSYXRpbmdSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoBVIGdXNlcklkEjgKCnRhcmdldF'
    'R5cGUYAiABKA4yGC5ic3QudjEuUmF0aW5nVGFyZ2V0VHlwZVIKdGFyZ2V0VHlwZRIaCgh0YXJn'
    'ZXRJZBgDIAEoBVIIdGFyZ2V0SWQSFgoGcmF0aW5nGAQgASgFUgZyYXRpbmcSGAoHY29tbWVudB'
    'gFIAEoCVIHY29tbWVudA==');

@$core.Deprecated('Use listRatingsRequestDescriptor instead')
const ListRatingsRequest$json = {
  '1': 'ListRatingsRequest',
  '2': [
    {'1': 'targetType', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.RatingTargetType', '10': 'targetType'},
    {'1': 'targetId', '3': 2, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'userId', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'page', '3': 4, '4': 1, '5': 5, '10': 'page'},
    {'1': 'pageSize', '3': 5, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `ListRatingsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRatingsRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0UmF0aW5nc1JlcXVlc3QSOAoKdGFyZ2V0VHlwZRgBIAEoDjIYLmJzdC52MS5SYXRpbm'
    'dUYXJnZXRUeXBlUgp0YXJnZXRUeXBlEhoKCHRhcmdldElkGAIgASgFUgh0YXJnZXRJZBIWCgZ1'
    'c2VySWQYAyABKAVSBnVzZXJJZBISCgRwYWdlGAQgASgFUgRwYWdlEhoKCHBhZ2VTaXplGAUgAS'
    'gFUghwYWdlU2l6ZQ==');

@$core.Deprecated('Use listRatingsResponseDescriptor instead')
const ListRatingsResponse$json = {
  '1': 'ListRatingsResponse',
  '2': [
    {'1': 'ratings', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Rating', '10': 'ratings'},
    {'1': 'totalCount', '3': 2, '4': 1, '5': 5, '10': 'totalCount'},
    {'1': 'currentPage', '3': 3, '4': 1, '5': 5, '10': 'currentPage'},
    {'1': 'totalPages', '3': 4, '4': 1, '5': 5, '10': 'totalPages'},
  ],
};

/// Descriptor for `ListRatingsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRatingsResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0UmF0aW5nc1Jlc3BvbnNlEigKB3JhdGluZ3MYASADKAsyDi5ic3QudjEuUmF0aW5nUg'
    'dyYXRpbmdzEh4KCnRvdGFsQ291bnQYAiABKAVSCnRvdGFsQ291bnQSIAoLY3VycmVudFBhZ2UY'
    'AyABKAVSC2N1cnJlbnRQYWdlEh4KCnRvdGFsUGFnZXMYBCABKAVSCnRvdGFsUGFnZXM=');

@$core.Deprecated('Use updateRatingRequestDescriptor instead')
const UpdateRatingRequest$json = {
  '1': 'UpdateRatingRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'rating', '3': 2, '4': 1, '5': 5, '10': 'rating'},
    {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `UpdateRatingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRatingRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVSYXRpbmdSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBIWCgZyYXRpbmcYAiABKAVSBn'
    'JhdGluZxIYCgdjb21tZW50GAMgASgJUgdjb21tZW50');

@$core.Deprecated('Use deleteRatingRequestDescriptor instead')
const DeleteRatingRequest$json = {
  '1': 'DeleteRatingRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRatingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRatingRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVSYXRpbmdSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

