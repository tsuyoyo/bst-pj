//
//  Generated code. Do not modify.
//  source: bst/v1/studio_review_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createStudioReviewRequestDescriptor instead')
const CreateStudioReviewRequest$json = {
  '1': 'CreateStudioReviewRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `CreateStudioReviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioReviewRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVTdHVkaW9SZXZpZXdSZXF1ZXN0EhsKCXN0dWRpb19pZBgBIAEoBVIIc3R1ZGlvSW'
    'QSGAoHY29tbWVudBgCIAEoCVIHY29tbWVudA==');

@$core.Deprecated('Use createStudioReviewResponseDescriptor instead')
const CreateStudioReviewResponse$json = {
  '1': 'CreateStudioReviewResponse',
  '2': [
    {'1': 'review', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.StudioReview', '10': 'review'},
  ],
};

/// Descriptor for `CreateStudioReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioReviewResponseDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVTdHVkaW9SZXZpZXdSZXNwb25zZRIsCgZyZXZpZXcYASABKAsyFC5ic3QudjEuU3'
    'R1ZGlvUmV2aWV3UgZyZXZpZXc=');

@$core.Deprecated('Use listStudioReviewsRequestDescriptor instead')
const ListStudioReviewsRequest$json = {
  '1': 'ListStudioReviewsRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 3, '4': 1, '5': 5, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListStudioReviewsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioReviewsRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0U3R1ZGlvUmV2aWV3c1JlcXVlc3QSGwoJc3R1ZGlvX2lkGAEgASgFUghzdHVkaW9JZB'
    'IbCglwYWdlX3NpemUYAiABKAVSCHBhZ2VTaXplEh0KCnBhZ2VfdG9rZW4YAyABKAVSCXBhZ2VU'
    'b2tlbg==');

@$core.Deprecated('Use listStudioReviewsResponseDescriptor instead')
const ListStudioReviewsResponse$json = {
  '1': 'ListStudioReviewsResponse',
  '2': [
    {'1': 'reviews', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.StudioReview', '10': 'reviews'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListStudioReviewsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudioReviewsResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0U3R1ZGlvUmV2aWV3c1Jlc3BvbnNlEi4KB3Jldmlld3MYASADKAsyFC5ic3QudjEuU3'
    'R1ZGlvUmV2aWV3UgdyZXZpZXdzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VU'
    'b2tlbhIdCgp0b3RhbF9zaXplGAMgASgFUgl0b3RhbFNpemU=');

@$core.Deprecated('Use deleteStudioReviewRequestDescriptor instead')
const DeleteStudioReviewRequest$json = {
  '1': 'DeleteStudioReviewRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'review_id', '3': 2, '4': 1, '5': 5, '10': 'reviewId'},
  ],
};

/// Descriptor for `DeleteStudioReviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioReviewRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVTdHVkaW9SZXZpZXdSZXF1ZXN0EhsKCXN0dWRpb19pZBgBIAEoBVIIc3R1ZGlvSW'
    'QSGwoJcmV2aWV3X2lkGAIgASgFUghyZXZpZXdJZA==');

@$core.Deprecated('Use deleteStudioReviewResponseDescriptor instead')
const DeleteStudioReviewResponse$json = {
  '1': 'DeleteStudioReviewResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteStudioReviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioReviewResponseDescriptor = $convert.base64Decode(
    'ChpEZWxldGVTdHVkaW9SZXZpZXdSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

