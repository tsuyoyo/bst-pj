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
    {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Location', '10': 'location'},
    {'1': 'overall_rating', '3': 3, '4': 1, '5': 5, '10': 'overallRating'},
  ],
};

/// Descriptor for `Studio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studioDescriptor = $convert.base64Decode(
    'CgZTdHVkaW8SDgoCaWQYASABKAVSAmlkEiwKCGxvY2F0aW9uGAIgASgLMhAuYnN0LnYxLkxvY2'
    'F0aW9uUghsb2NhdGlvbhIlCg5vdmVyYWxsX3JhdGluZxgDIAEoBVINb3ZlcmFsbFJhdGluZw==');

