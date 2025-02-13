//
//  Generated code. Do not modify.
//  source: bst/v1/rating.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ratingTargetTypeDescriptor instead')
const RatingTargetType$json = {
  '1': 'RatingTargetType',
  '2': [
    {'1': 'RATING_TARGET_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'RATING_TARGET_TYPE_SESSION', '2': 1},
    {'1': 'RATING_TARGET_TYPE_USER', '2': 2},
    {'1': 'RATING_TARGET_TYPE_SONG_PERFORMANCE', '2': 3},
    {'1': 'RATING_TARGET_TYPE_PARTY', '2': 4},
  ],
};

/// Descriptor for `RatingTargetType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ratingTargetTypeDescriptor = $convert.base64Decode(
    'ChBSYXRpbmdUYXJnZXRUeXBlEiIKHlJBVElOR19UQVJHRVRfVFlQRV9VTlNQRUNJRklFRBAAEh'
    '4KGlJBVElOR19UQVJHRVRfVFlQRV9TRVNTSU9OEAESGwoXUkFUSU5HX1RBUkdFVF9UWVBFX1VT'
    'RVIQAhInCiNSQVRJTkdfVEFSR0VUX1RZUEVfU09OR19QRVJGT1JNQU5DRRADEhwKGFJBVElOR1'
    '9UQVJHRVRfVFlQRV9QQVJUWRAE');

@$core.Deprecated('Use ratingDescriptor instead')
const Rating$json = {
  '1': 'Rating',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'targetType', '3': 3, '4': 1, '5': 14, '6': '.bst.v1.RatingTargetType', '10': 'targetType'},
    {'1': 'targetId', '3': 4, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'rating', '3': 5, '4': 1, '5': 5, '10': 'rating'},
    {'1': 'comment', '3': 6, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'createdAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updatedAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `Rating`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ratingDescriptor = $convert.base64Decode(
    'CgZSYXRpbmcSDgoCaWQYASABKAVSAmlkEhYKBnVzZXJJZBgCIAEoBVIGdXNlcklkEjgKCnRhcm'
    'dldFR5cGUYAyABKA4yGC5ic3QudjEuUmF0aW5nVGFyZ2V0VHlwZVIKdGFyZ2V0VHlwZRIaCgh0'
    'YXJnZXRJZBgEIAEoBVIIdGFyZ2V0SWQSFgoGcmF0aW5nGAUgASgFUgZyYXRpbmcSGAoHY29tbW'
    'VudBgGIAEoCVIHY29tbWVudBI4CgljcmVhdGVkQXQYByABKAsyGi5nb29nbGUucHJvdG9idWYu'
    'VGltZXN0YW1wUgljcmVhdGVkQXQSOAoJdXBkYXRlZEF0GAggASgLMhouZ29vZ2xlLnByb3RvYn'
    'VmLlRpbWVzdGFtcFIJdXBkYXRlZEF0');

