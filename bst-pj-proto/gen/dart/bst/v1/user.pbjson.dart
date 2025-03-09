//
//  Generated code. Do not modify.
//  source: bst/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'icon', '3': 3, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGljb24YAyABKA'
    'lSBGljb24=');

@$core.Deprecated('Use userFavoriteDescriptor instead')
const UserFavorite$json = {
  '1': 'UserFavorite',
  '2': [
    {'1': 'genres', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Genre', '10': 'genres'},
    {'1': 'artists', '3': 2, '4': 3, '5': 11, '6': '.bst.v1.Artist', '10': 'artists'},
    {'1': 'parts', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.Part', '10': 'parts'},
  ],
};

/// Descriptor for `UserFavorite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFavoriteDescriptor = $convert.base64Decode(
    'CgxVc2VyRmF2b3JpdGUSJQoGZ2VucmVzGAEgAygLMg0uYnN0LnYxLkdlbnJlUgZnZW5yZXMSKA'
    'oHYXJ0aXN0cxgCIAMoCzIOLmJzdC52MS5BcnRpc3RSB2FydGlzdHMSIgoFcGFydHMYAyADKAsy'
    'DC5ic3QudjEuUGFydFIFcGFydHM=');

@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile$json = {
  '1': 'UserProfile',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'introduction', '3': 2, '4': 1, '5': 9, '10': 'introduction'},
    {'1': 'areas', '3': 3, '4': 3, '5': 11, '6': '.bst.v1.Area', '10': 'areas'},
    {'1': 'favorite', '3': 4, '4': 1, '5': 11, '6': '.bst.v1.UserFavorite', '10': 'favorite'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'badges', '3': 6, '4': 3, '5': 11, '6': '.bst.v1.UserRatingBadge', '10': 'badges'},
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode(
    'CgtVc2VyUHJvZmlsZRIgCgR1c2VyGAEgASgLMgwuYnN0LnYxLlVzZXJSBHVzZXISIgoMaW50cm'
    '9kdWN0aW9uGAIgASgJUgxpbnRyb2R1Y3Rpb24SIgoFYXJlYXMYAyADKAsyDC5ic3QudjEuQXJl'
    'YVIFYXJlYXMSMAoIZmF2b3JpdGUYBCABKAsyFC5ic3QudjEuVXNlckZhdm9yaXRlUghmYXZvcm'
    'l0ZRI5CgpjcmVhdGVkX2F0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3Jl'
    'YXRlZEF0Ei8KBmJhZGdlcxgGIAMoCzIXLmJzdC52MS5Vc2VyUmF0aW5nQmFkZ2VSBmJhZGdlcw'
    '==');

@$core.Deprecated('Use myProfileDescriptor instead')
const MyProfile$json = {
  '1': 'MyProfile',
  '2': [
    {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.UserProfile', '10': 'profile'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `MyProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProfileDescriptor = $convert.base64Decode(
    'CglNeVByb2ZpbGUSLQoHcHJvZmlsZRgBIAEoCzITLmJzdC52MS5Vc2VyUHJvZmlsZVIHcHJvZm'
    'lsZRIUCgVlbWFpbBgCIAEoCVIFZW1haWw=');

@$core.Deprecated('Use userRatingBadgeDescriptor instead')
const UserRatingBadge$json = {
  '1': 'UserRatingBadge',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '10': 'color'},
  ],
};

/// Descriptor for `UserRatingBadge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRatingBadgeDescriptor = $convert.base64Decode(
    'Cg9Vc2VyUmF0aW5nQmFkZ2USDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFA'
    'oFY29sb3IYAyABKAlSBWNvbG9y');

