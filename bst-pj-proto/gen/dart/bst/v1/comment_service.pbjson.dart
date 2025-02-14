//
//  Generated code. Do not modify.
//  source: bst/v1/comment_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getCommentRequestDescriptor instead')
const GetCommentRequest$json = {
  '1': 'GetCommentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCommentRequestDescriptor = $convert.base64Decode(
    'ChFHZXRDb21tZW50UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use postCommentRequestDescriptor instead')
const PostCommentRequest$json = {
  '1': 'PostCommentRequest',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'thread_id', '3': 3, '4': 1, '5': 5, '10': 'threadId'},
  ],
};

/// Descriptor for `PostCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postCommentRequestDescriptor = $convert.base64Decode(
    'ChJQb3N0Q29tbWVudFJlcXVlc3QSGAoHY29udGVudBgBIAEoCVIHY29udGVudBIXCgd1c2VyX2'
    'lkGAIgASgFUgZ1c2VySWQSGwoJdGhyZWFkX2lkGAMgASgFUgh0aHJlYWRJZA==');

@$core.Deprecated('Use updateCommentRequestDescriptor instead')
const UpdateCommentRequest$json = {
  '1': 'UpdateCommentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `UpdateCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCommentRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVDb21tZW50UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSGAoHY29udGVudBgCIAEoCV'
    'IHY29udGVudA==');

@$core.Deprecated('Use deleteCommentRequestDescriptor instead')
const DeleteCommentRequest$json = {
  '1': 'DeleteCommentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCommentRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVDb21tZW50UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use deleteCommentResponseDescriptor instead')
const DeleteCommentResponse$json = {
  '1': 'DeleteCommentResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteCommentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCommentResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVDb21tZW50UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

