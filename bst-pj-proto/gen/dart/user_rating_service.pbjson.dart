//
//  Generated code. Do not modify.
//  source: user_rating_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rateUserRequestDescriptor instead')
const RateUserRequest$json = {
  '1': 'RateUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'score', '3': 3, '4': 1, '5': 5, '10': 'score'},
    {'1': 'comment', '3': 4, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `RateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rateUserRequestDescriptor = $convert.base64Decode(
    'Cg9SYXRlVXNlclJlcXVlc3QSFwoHdXNlcl9pZBgBIAEoBVIGdXNlcklkEh0KCnNlc3Npb25faW'
    'QYAiABKAVSCXNlc3Npb25JZBIUCgVzY29yZRgDIAEoBVIFc2NvcmUSGAoHY29tbWVudBgEIAEo'
    'CVIHY29tbWVudA==');

@$core.Deprecated('Use rateUserResponseDescriptor instead')
const RateUserResponse$json = {
  '1': 'RateUserResponse',
};

/// Descriptor for `RateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rateUserResponseDescriptor = $convert.base64Decode(
    'ChBSYXRlVXNlclJlc3BvbnNl');

@$core.Deprecated('Use getUserRatingBadgesRequestDescriptor instead')
const GetUserRatingBadgesRequest$json = {
  '1': 'GetUserRatingBadgesRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `GetUserRatingBadgesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRatingBadgesRequestDescriptor = $convert.base64Decode(
    'ChpHZXRVc2VyUmF0aW5nQmFkZ2VzUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgFUgZ1c2VySWQ=');

@$core.Deprecated('Use getUserRatingBadgesResponseDescriptor instead')
const GetUserRatingBadgesResponse$json = {
  '1': 'GetUserRatingBadgesResponse',
  '2': [
    {'1': 'badges', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.UserRatingBadge', '10': 'badges'},
  ],
};

/// Descriptor for `GetUserRatingBadgesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRatingBadgesResponseDescriptor = $convert.base64Decode(
    'ChtHZXRVc2VyUmF0aW5nQmFkZ2VzUmVzcG9uc2USLwoGYmFkZ2VzGAEgAygLMhcuYnN0LnYxLl'
    'VzZXJSYXRpbmdCYWRnZVIGYmFkZ2Vz');

