//
//  Generated code. Do not modify.
//  source: bst/v1/thread_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getThreadRequestDescriptor instead')
const GetThreadRequest$json = {
  '1': 'GetThreadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThreadRequestDescriptor = $convert.base64Decode(
    'ChBHZXRUaHJlYWRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use getThreadsInSessionRequestDescriptor instead')
const GetThreadsInSessionRequest$json = {
  '1': 'GetThreadsInSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetThreadsInSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThreadsInSessionRequestDescriptor = $convert.base64Decode(
    'ChpHZXRUaHJlYWRzSW5TZXNzaW9uUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZXNzaW'
    '9uSWQ=');

@$core.Deprecated('Use getThreadsInSessionResponseDescriptor instead')
const GetThreadsInSessionResponse$json = {
  '1': 'GetThreadsInSessionResponse',
  '2': [
    {'1': 'threads', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Thread', '10': 'threads'},
  ],
};

/// Descriptor for `GetThreadsInSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThreadsInSessionResponseDescriptor = $convert.base64Decode(
    'ChtHZXRUaHJlYWRzSW5TZXNzaW9uUmVzcG9uc2USKAoHdGhyZWFkcxgBIAMoCzIOLmJzdC52MS'
    '5UaHJlYWRSB3RocmVhZHM=');

@$core.Deprecated('Use getThreadCommentsRequestDescriptor instead')
const GetThreadCommentsRequest$json = {
  '1': 'GetThreadCommentsRequest',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 5, '10': 'threadId'},
    {'1': 'page', '3': 2, '4': 1, '5': 5, '10': 'page'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `GetThreadCommentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThreadCommentsRequestDescriptor = $convert.base64Decode(
    'ChhHZXRUaHJlYWRDb21tZW50c1JlcXVlc3QSGwoJdGhyZWFkX2lkGAEgASgFUgh0aHJlYWRJZB'
    'ISCgRwYWdlGAIgASgFUgRwYWdlEhQKBWxpbWl0GAMgASgFUgVsaW1pdA==');

@$core.Deprecated('Use getThreadCommentsResponseDescriptor instead')
const GetThreadCommentsResponse$json = {
  '1': 'GetThreadCommentsResponse',
  '2': [
    {'1': 'comments', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Comment', '10': 'comments'},
    {'1': 'next_page', '3': 2, '4': 1, '5': 5, '10': 'nextPage'},
  ],
};

/// Descriptor for `GetThreadCommentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getThreadCommentsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRUaHJlYWRDb21tZW50c1Jlc3BvbnNlEisKCGNvbW1lbnRzGAEgAygLMg8uYnN0LnYxLk'
    'NvbW1lbnRSCGNvbW1lbnRzEhsKCW5leHRfcGFnZRgCIAEoBVIIbmV4dFBhZ2U=');

@$core.Deprecated('Use postThreadRequestDescriptor instead')
const PostThreadRequest$json = {
  '1': 'PostThreadRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'userId', '3': 3, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `PostThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postThreadRequestDescriptor = $convert.base64Decode(
    'ChFQb3N0VGhyZWFkUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb2'
    '4YAiABKAlSC2Rlc2NyaXB0aW9uEhYKBnVzZXJJZBgDIAEoBVIGdXNlcklk');

@$core.Deprecated('Use postThreadInSessionRequestDescriptor instead')
const PostThreadInSessionRequest$json = {
  '1': 'PostThreadInSessionRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'userId', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'sessionId', '3': 4, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `PostThreadInSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postThreadInSessionRequestDescriptor = $convert.base64Decode(
    'ChpQb3N0VGhyZWFkSW5TZXNzaW9uUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZG'
    'VzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhYKBnVzZXJJZBgDIAEoBVIGdXNlcklkEhwK'
    'CXNlc3Npb25JZBgEIAEoBVIJc2Vzc2lvbklk');

@$core.Deprecated('Use updateThreadTitleRequestDescriptor instead')
const UpdateThreadTitleRequest$json = {
  '1': 'UpdateThreadTitleRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `UpdateThreadTitleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateThreadTitleRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVUaHJlYWRUaXRsZVJlcXVlc3QSDgoCaWQYASABKAVSAmlkEhQKBXRpdGxlGAIgAS'
    'gJUgV0aXRsZQ==');

@$core.Deprecated('Use updateThreadRequestDescriptor instead')
const UpdateThreadRequest$json = {
  '1': 'UpdateThreadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `UpdateThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateThreadRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVUaHJlYWRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdG'
    'l0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use updateThreadDescriptionRequestDescriptor instead')
const UpdateThreadDescriptionRequest$json = {
  '1': 'UpdateThreadDescriptionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `UpdateThreadDescriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateThreadDescriptionRequestDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVUaHJlYWREZXNjcmlwdGlvblJlcXVlc3QSDgoCaWQYASABKAVSAmlkEiAKC2Rlc2'
    'NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use deleteThreadRequestDescriptor instead')
const DeleteThreadRequest$json = {
  '1': 'DeleteThreadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteThreadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteThreadRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVUaHJlYWRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use deleteThreadResponseDescriptor instead')
const DeleteThreadResponse$json = {
  '1': 'DeleteThreadResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteThreadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteThreadResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVUaHJlYWRSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

