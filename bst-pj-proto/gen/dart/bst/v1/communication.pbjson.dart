//
//  Generated code. Do not modify.
//  source: bst/v1/communication.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use commentDescriptor instead')
const Comment$json = {
  '1': 'Comment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'thread_id', '3': 4, '4': 1, '5': 5, '10': 'threadId'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'mentions', '3': 6, '4': 3, '5': 11, '6': '.bst.v1.Mention', '10': 'mentions'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode(
    'CgdDb21tZW50Eg4KAmlkGAEgASgFUgJpZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW50EhcKB3'
    'VzZXJfaWQYAyABKAVSBnVzZXJJZBIbCgl0aHJlYWRfaWQYBCABKAVSCHRocmVhZElkEjkKCmNy'
    'ZWF0ZWRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSKw'
    'oIbWVudGlvbnMYBiADKAsyDy5ic3QudjEuTWVudGlvblIIbWVudGlvbnM=');

@$core.Deprecated('Use threadDescriptor instead')
const Thread$json = {
  '1': 'Thread',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'comments', '3': 4, '4': 3, '5': 11, '6': '.bst.v1.Comment', '10': 'comments'},
    {'1': 'created_by', '3': 5, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'createdBy'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `Thread`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadDescriptor = $convert.base64Decode(
    'CgZUaHJlYWQSDgoCaWQYASABKAVSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIgCgtkZXNjcm'
    'lwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SKwoIY29tbWVudHMYBCADKAsyDy5ic3QudjEuQ29t'
    'bWVudFIIY29tbWVudHMSKwoKY3JlYXRlZF9ieRgFIAEoCzIMLmJzdC52MS5Vc2VyUgljcmVhdG'
    'VkQnkSOQoKY3JlYXRlZF9hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNy'
    'ZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcF'
    'IJdXBkYXRlZEF0');

@$core.Deprecated('Use mentionDescriptor instead')
const Mention$json = {
  '1': 'Mention',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.Mention.MentionType', '10': 'type'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'thread_id', '3': 4, '4': 1, '5': 5, '10': 'threadId'},
  ],
  '4': [Mention_MentionType$json],
};

@$core.Deprecated('Use mentionDescriptor instead')
const Mention_MentionType$json = {
  '1': 'MentionType',
  '2': [
    {'1': 'MENTION_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'MENTION_TYPE_USER', '2': 1},
    {'1': 'MENTION_TYPE_ALL_SESSION_PARTICIPANTS', '2': 2},
    {'1': 'MENTION_TYPE_ALL_THREAD_PARTICIPANTS', '2': 3},
  ],
};

/// Descriptor for `Mention`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mentionDescriptor = $convert.base64Decode(
    'CgdNZW50aW9uEi8KBHR5cGUYASABKA4yGy5ic3QudjEuTWVudGlvbi5NZW50aW9uVHlwZVIEdH'
    'lwZRIgCgR1c2VyGAIgASgLMgwuYnN0LnYxLlVzZXJSBHVzZXISHQoKc2Vzc2lvbl9pZBgDIAEo'
    'BVIJc2Vzc2lvbklkEhsKCXRocmVhZF9pZBgEIAEoBVIIdGhyZWFkSWQilwEKC01lbnRpb25UeX'
    'BlEhwKGE1FTlRJT05fVFlQRV9VTlNQRUNJRklFRBAAEhUKEU1FTlRJT05fVFlQRV9VU0VSEAES'
    'KQolTUVOVElPTl9UWVBFX0FMTF9TRVNTSU9OX1BBUlRJQ0lQQU5UUxACEigKJE1FTlRJT05fVF'
    'lQRV9BTExfVEhSRUFEX1BBUlRJQ0lQQU5UUxAD');

@$core.Deprecated('Use reactionTypeDescriptor instead')
const ReactionType$json = {
  '1': 'ReactionType',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `ReactionType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionTypeDescriptor = $convert.base64Decode(
    'CgxSZWFjdGlvblR5cGUSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZG'
    'VzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhkKCGljb25fdXJsGAQgASgJUgdpY29uVXJs');

@$core.Deprecated('Use reactionDescriptor instead')
const Reaction$json = {
  '1': 'Reaction',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.User', '10': 'user'},
    {'1': 'reaction_type_id', '3': 3, '4': 1, '5': 5, '10': 'reactionTypeId'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `Reaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionDescriptor = $convert.base64Decode(
    'CghSZWFjdGlvbhIOCgJpZBgBIAEoBVICaWQSIAoEdXNlchgCIAEoCzIMLmJzdC52MS5Vc2VyUg'
    'R1c2VyEigKEHJlYWN0aW9uX3R5cGVfaWQYAyABKAVSDnJlYWN0aW9uVHlwZUlkEjkKCmNyZWF0'
    'ZWRfYXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

