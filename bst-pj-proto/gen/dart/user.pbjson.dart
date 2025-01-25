//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userParticipantStatusDescriptor instead')
const UserParticipantStatus$json = {
  '1': 'UserParticipantStatus',
  '2': [
    {'1': 'USER_PARTICIPANT_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'USER_PARTICIPANT_STATUS_PARTICIPANT', '2': 1},
    {'1': 'USER_PARTICIPANT_STATUS_CANCEL', '2': 2},
  ],
};

/// Descriptor for `UserParticipantStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userParticipantStatusDescriptor = $convert.base64Decode(
    'ChVVc2VyUGFydGljaXBhbnRTdGF0dXMSJwojVVNFUl9QQVJUSUNJUEFOVF9TVEFUVVNfVU5TUE'
    'VDSUZJRUQQABInCiNVU0VSX1BBUlRJQ0lQQU5UX1NUQVRVU19QQVJUSUNJUEFOVBABEiIKHlVT'
    'RVJfUEFSVElDSVBBTlRfU1RBVFVTX0NBTkNFTBAC');

@$core.Deprecated('Use userRoleDescriptor instead')
const UserRole$json = {
  '1': 'UserRole',
  '2': [
    {'1': 'USER_ROLE_UNSPECIFIED', '2': 0},
    {'1': 'USER_ROLE_ADMIN', '2': 1},
    {'1': 'USER_ROLE_ORGANIZER', '2': 2},
    {'1': 'USER_ROLE_MEMBER', '2': 3},
  ],
};

/// Descriptor for `UserRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userRoleDescriptor = $convert.base64Decode(
    'CghVc2VyUm9sZRIZChVVU0VSX1JPTEVfVU5TUEVDSUZJRUQQABITCg9VU0VSX1JPTEVfQURNSU'
    '4QARIXChNVU0VSX1JPTEVfT1JHQU5JWkVSEAISFAoQVVNFUl9ST0xFX01FTUJFUhAD');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'role', '3': 4, '4': 1, '5': 14, '6': '.bst.v1.UserRole', '10': 'role'},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.bst.v1.UserParticipantStatus', '10': 'status'},
    {'1': 'profile', '3': 6, '4': 1, '5': 11, '6': '.bst.v1.Profile', '10': 'profile'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWVtYWlsGAMgAS'
    'gJUgVlbWFpbBIkCgRyb2xlGAQgASgOMhAuYnN0LnYxLlVzZXJSb2xlUgRyb2xlEjUKBnN0YXR1'
    'cxgFIAEoDjIdLmJzdC52MS5Vc2VyUGFydGljaXBhbnRTdGF0dXNSBnN0YXR1cxIpCgdwcm9maW'
    'xlGAYgASgLMg8uYnN0LnYxLlByb2ZpbGVSB3Byb2ZpbGU=');

@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = {
  '1': 'Profile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'bio', '3': 2, '4': 1, '5': 9, '10': 'bio'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode(
    'CgdQcm9maWxlEg4KAmlkGAEgASgFUgJpZBIQCgNiaW8YAiABKAlSA2JpbxIWCgZhdmF0YXIYAy'
    'ABKAlSBmF2YXRhchIXCgd1c2VyX2lkGAQgASgFUgZ1c2VySWQ=');

@$core.Deprecated('Use ratingDescriptor instead')
const Rating$json = {
  '1': 'Rating',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'score', '3': 2, '4': 1, '5': 5, '10': 'score'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'target_id', '3': 4, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'target_type', '3': 5, '4': 1, '5': 9, '10': 'targetType'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `Rating`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ratingDescriptor = $convert.base64Decode(
    'CgZSYXRpbmcSDgoCaWQYASABKAVSAmlkEhQKBXNjb3JlGAIgASgFUgVzY29yZRIXCgd1c2VyX2'
    'lkGAMgASgFUgZ1c2VySWQSGwoJdGFyZ2V0X2lkGAQgASgFUgh0YXJnZXRJZBIfCgt0YXJnZXRf'
    'dHlwZRgFIAEoCVIKdGFyZ2V0VHlwZRI5CgpjcmVhdGVkX2F0GAYgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0');

@$core.Deprecated('Use ratingHistoryDescriptor instead')
const RatingHistory$json = {
  '1': 'RatingHistory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'rating_id', '3': 2, '4': 1, '5': 5, '10': 'ratingId'},
    {'1': 'previous_score', '3': 3, '4': 1, '5': 5, '10': 'previousScore'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `RatingHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ratingHistoryDescriptor = $convert.base64Decode(
    'Cg1SYXRpbmdIaXN0b3J5Eg4KAmlkGAEgASgFUgJpZBIbCglyYXRpbmdfaWQYAiABKAVSCHJhdG'
    'luZ0lkEiUKDnByZXZpb3VzX3Njb3JlGAMgASgFUg1wcmV2aW91c1Njb3JlEjkKCmNyZWF0ZWRf'
    'YXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

