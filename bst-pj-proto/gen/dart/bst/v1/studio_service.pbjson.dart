//
//  Generated code. Do not modify.
//  source: bst/v1/studio_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createStudioRequestDescriptor instead')
const CreateStudioRequest$json = {
  '1': 'CreateStudioRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'location', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
  ],
};

/// Descriptor for `CreateStudioRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVTdHVkaW9SZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb2'
    '4YAiABKAlSC2Rlc2NyaXB0aW9uEiwKCGxvY2F0aW9uGAMgASgLMhAuYnN0LnYxLkxvY2F0aW9u'
    'Ughsb2NhdGlvbg==');

@$core.Deprecated('Use createStudioResponseDescriptor instead')
const CreateStudioResponse$json = {
  '1': 'CreateStudioResponse',
  '2': [
    {'1': 'studio', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Studio', '10': 'studio'},
  ],
};

/// Descriptor for `CreateStudioResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudioResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTdHVkaW9SZXNwb25zZRImCgZzdHVkaW8YASABKAsyDi5ic3QudjEuU3R1ZGlvUg'
    'ZzdHVkaW8=');

@$core.Deprecated('Use listStudiosRequestDescriptor instead')
const ListStudiosRequest$json = {
  '1': 'ListStudiosRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 5, '10': 'pageToken'},
    {'1': 'area', '3': 3, '4': 1, '5': 11, '6': '.bst.v1.Area', '10': 'area'},
  ],
};

/// Descriptor for `ListStudiosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudiosRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0U3R1ZGlvc1JlcXVlc3QSGwoJcGFnZV9zaXplGAEgASgFUghwYWdlU2l6ZRIdCgpwYW'
    'dlX3Rva2VuGAIgASgFUglwYWdlVG9rZW4SIAoEYXJlYRgDIAEoCzIMLmJzdC52MS5BcmVhUgRh'
    'cmVh');

@$core.Deprecated('Use listStudiosResponseDescriptor instead')
const ListStudiosResponse$json = {
  '1': 'ListStudiosResponse',
  '2': [
    {'1': 'studios', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Studio', '10': 'studios'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListStudiosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listStudiosResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0U3R1ZGlvc1Jlc3BvbnNlEigKB3N0dWRpb3MYASADKAsyDi5ic3QudjEuU3R1ZGlvUg'
    'dzdHVkaW9zEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VUb2tlbhIdCgp0b3Rh'
    'bF9zaXplGAMgASgFUgl0b3RhbFNpemU=');

@$core.Deprecated('Use getStudioRequestDescriptor instead')
const GetStudioRequest$json = {
  '1': 'GetStudioRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
  ],
};

/// Descriptor for `GetStudioRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStudioRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTdHVkaW9SZXF1ZXN0EhsKCXN0dWRpb19pZBgBIAEoBVIIc3R1ZGlvSWQ=');

@$core.Deprecated('Use getStudioResponseDescriptor instead')
const GetStudioResponse$json = {
  '1': 'GetStudioResponse',
  '2': [
    {'1': 'studio', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Studio', '10': 'studio'},
  ],
};

/// Descriptor for `GetStudioResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStudioResponseDescriptor = $convert.base64Decode(
    'ChFHZXRTdHVkaW9SZXNwb25zZRImCgZzdHVkaW8YASABKAsyDi5ic3QudjEuU3R1ZGlvUgZzdH'
    'VkaW8=');

@$core.Deprecated('Use updateStudioRequestDescriptor instead')
const UpdateStudioRequest$json = {
  '1': 'UpdateStudioRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'location', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.Location', '9': 2, '10': 'location', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_location'},
  ],
};

/// Descriptor for `UpdateStudioRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVTdHVkaW9SZXF1ZXN0EhsKCXN0dWRpb19pZBgBIAEoBVIIc3R1ZGlvSWQSFwoEbm'
    'FtZRgCIAEoCUgAUgRuYW1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9u'
    'iAEBEjEKCGxvY2F0aW9uGAQgASgLMhAuYnN0LnYxLkxvY2F0aW9uSAJSCGxvY2F0aW9uiAEBQg'
    'cKBV9uYW1lQg4KDF9kZXNjcmlwdGlvbkILCglfbG9jYXRpb24=');

@$core.Deprecated('Use updateStudioResponseDescriptor instead')
const UpdateStudioResponse$json = {
  '1': 'UpdateStudioResponse',
  '2': [
    {'1': 'studio', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Studio', '10': 'studio'},
  ],
};

/// Descriptor for `UpdateStudioResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudioResponseDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTdHVkaW9SZXNwb25zZRImCgZzdHVkaW8YASABKAsyDi5ic3QudjEuU3R1ZGlvUg'
    'ZzdHVkaW8=');

@$core.Deprecated('Use deleteStudioRequestDescriptor instead')
const DeleteStudioRequest$json = {
  '1': 'DeleteStudioRequest',
  '2': [
    {'1': 'studio_id', '3': 1, '4': 1, '5': 5, '10': 'studioId'},
  ],
};

/// Descriptor for `DeleteStudioRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVTdHVkaW9SZXF1ZXN0EhsKCXN0dWRpb19pZBgBIAEoBVIIc3R1ZGlvSWQ=');

@$core.Deprecated('Use deleteStudioResponseDescriptor instead')
const DeleteStudioResponse$json = {
  '1': 'DeleteStudioResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteStudioResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudioResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVTdHVkaW9SZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

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

