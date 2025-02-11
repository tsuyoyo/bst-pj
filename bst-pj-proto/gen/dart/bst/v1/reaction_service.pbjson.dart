//
//  Generated code. Do not modify.
//  source: bst/v1/reaction_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createReactionTypeRequestDescriptor instead')
const CreateReactionTypeRequest$json = {
  '1': 'CreateReactionTypeRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'icon_url', '3': 3, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `CreateReactionTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReactionTypeRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVSZWFjdGlvblR5cGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3'
    'JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhkKCGljb25fdXJsGAMgASgJUgdpY29uVXJs');

@$core.Deprecated('Use createReactionTypeResponseDescriptor instead')
const CreateReactionTypeResponse$json = {
  '1': 'CreateReactionTypeResponse',
  '2': [
    {'1': 'reaction_type', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.ReactionType', '10': 'reactionType'},
  ],
};

/// Descriptor for `CreateReactionTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReactionTypeResponseDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVSZWFjdGlvblR5cGVSZXNwb25zZRI5Cg1yZWFjdGlvbl90eXBlGAEgASgLMhQuYn'
    'N0LnYxLlJlYWN0aW9uVHlwZVIMcmVhY3Rpb25UeXBl');

@$core.Deprecated('Use getReactionTypeRequestDescriptor instead')
const GetReactionTypeRequest$json = {
  '1': 'GetReactionTypeRequest',
  '2': [
    {'1': 'reaction_type_id', '3': 1, '4': 1, '5': 5, '10': 'reactionTypeId'},
  ],
};

/// Descriptor for `GetReactionTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReactionTypeRequestDescriptor = $convert.base64Decode(
    'ChZHZXRSZWFjdGlvblR5cGVSZXF1ZXN0EigKEHJlYWN0aW9uX3R5cGVfaWQYASABKAVSDnJlYW'
    'N0aW9uVHlwZUlk');

@$core.Deprecated('Use getReactionTypeResponseDescriptor instead')
const GetReactionTypeResponse$json = {
  '1': 'GetReactionTypeResponse',
  '2': [
    {'1': 'reaction_type', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.ReactionType', '10': 'reactionType'},
  ],
};

/// Descriptor for `GetReactionTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReactionTypeResponseDescriptor = $convert.base64Decode(
    'ChdHZXRSZWFjdGlvblR5cGVSZXNwb25zZRI5Cg1yZWFjdGlvbl90eXBlGAEgASgLMhQuYnN0Ln'
    'YxLlJlYWN0aW9uVHlwZVIMcmVhY3Rpb25UeXBl');

@$core.Deprecated('Use listReactionTypesRequestDescriptor instead')
const ListReactionTypesRequest$json = {
  '1': 'ListReactionTypesRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListReactionTypesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReactionTypesRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0UmVhY3Rpb25UeXBlc1JlcXVlc3QSGwoJcGFnZV9zaXplGAEgASgFUghwYWdlU2l6ZR'
    'IdCgpwYWdlX3Rva2VuGAIgASgJUglwYWdlVG9rZW4=');

@$core.Deprecated('Use listReactionTypesResponseDescriptor instead')
const ListReactionTypesResponse$json = {
  '1': 'ListReactionTypesResponse',
  '2': [
    {'1': 'reaction_types', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.ReactionType', '10': 'reactionTypes'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListReactionTypesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReactionTypesResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0UmVhY3Rpb25UeXBlc1Jlc3BvbnNlEjsKDnJlYWN0aW9uX3R5cGVzGAEgAygLMhQuYn'
    'N0LnYxLlJlYWN0aW9uVHlwZVINcmVhY3Rpb25UeXBlcxImCg9uZXh0X3BhZ2VfdG9rZW4YAiAB'
    'KAlSDW5leHRQYWdlVG9rZW4SHQoKdG90YWxfc2l6ZRgDIAEoBVIJdG90YWxTaXpl');

@$core.Deprecated('Use updateReactionTypeRequestDescriptor instead')
const UpdateReactionTypeRequest$json = {
  '1': 'UpdateReactionTypeRequest',
  '2': [
    {'1': 'reaction_type_id', '3': 1, '4': 1, '5': 5, '10': 'reactionTypeId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'iconUrl', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_icon_url'},
  ],
};

/// Descriptor for `UpdateReactionTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReactionTypeRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVSZWFjdGlvblR5cGVSZXF1ZXN0EigKEHJlYWN0aW9uX3R5cGVfaWQYASABKAVSDn'
    'JlYWN0aW9uVHlwZUlkEhcKBG5hbWUYAiABKAlIAFIEbmFtZYgBARIlCgtkZXNjcmlwdGlvbhgD'
    'IAEoCUgBUgtkZXNjcmlwdGlvbogBARIeCghpY29uX3VybBgEIAEoCUgCUgdpY29uVXJsiAEBQg'
    'cKBV9uYW1lQg4KDF9kZXNjcmlwdGlvbkILCglfaWNvbl91cmw=');

@$core.Deprecated('Use updateReactionTypeResponseDescriptor instead')
const UpdateReactionTypeResponse$json = {
  '1': 'UpdateReactionTypeResponse',
  '2': [
    {'1': 'reaction_type', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.ReactionType', '10': 'reactionType'},
  ],
};

/// Descriptor for `UpdateReactionTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReactionTypeResponseDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVSZWFjdGlvblR5cGVSZXNwb25zZRI5Cg1yZWFjdGlvbl90eXBlGAEgASgLMhQuYn'
    'N0LnYxLlJlYWN0aW9uVHlwZVIMcmVhY3Rpb25UeXBl');

@$core.Deprecated('Use deleteReactionTypeRequestDescriptor instead')
const DeleteReactionTypeRequest$json = {
  '1': 'DeleteReactionTypeRequest',
  '2': [
    {'1': 'reaction_type_id', '3': 1, '4': 1, '5': 5, '10': 'reactionTypeId'},
  ],
};

/// Descriptor for `DeleteReactionTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReactionTypeRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVSZWFjdGlvblR5cGVSZXF1ZXN0EigKEHJlYWN0aW9uX3R5cGVfaWQYASABKAVSDn'
    'JlYWN0aW9uVHlwZUlk');

@$core.Deprecated('Use deleteReactionTypeResponseDescriptor instead')
const DeleteReactionTypeResponse$json = {
  '1': 'DeleteReactionTypeResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteReactionTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReactionTypeResponseDescriptor = $convert.base64Decode(
    'ChpEZWxldGVSZWFjdGlvblR5cGVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use createReactionRequestDescriptor instead')
const CreateReactionRequest$json = {
  '1': 'CreateReactionRequest',
  '2': [
    {'1': 'target_id', '3': 1, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'reaction_type_id', '3': 2, '4': 1, '5': 5, '10': 'reactionTypeId'},
  ],
};

/// Descriptor for `CreateReactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReactionRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVSZWFjdGlvblJlcXVlc3QSGwoJdGFyZ2V0X2lkGAEgASgFUgh0YXJnZXRJZBIoCh'
    'ByZWFjdGlvbl90eXBlX2lkGAIgASgFUg5yZWFjdGlvblR5cGVJZA==');

@$core.Deprecated('Use createReactionResponseDescriptor instead')
const CreateReactionResponse$json = {
  '1': 'CreateReactionResponse',
  '2': [
    {'1': 'reaction', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Reaction', '10': 'reaction'},
  ],
};

/// Descriptor for `CreateReactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReactionResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVSZWFjdGlvblJlc3BvbnNlEiwKCHJlYWN0aW9uGAEgASgLMhAuYnN0LnYxLlJlYW'
    'N0aW9uUghyZWFjdGlvbg==');

@$core.Deprecated('Use getReactionRequestDescriptor instead')
const GetReactionRequest$json = {
  '1': 'GetReactionRequest',
  '2': [
    {'1': 'reaction_id', '3': 1, '4': 1, '5': 5, '10': 'reactionId'},
  ],
};

/// Descriptor for `GetReactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReactionRequestDescriptor = $convert.base64Decode(
    'ChJHZXRSZWFjdGlvblJlcXVlc3QSHwoLcmVhY3Rpb25faWQYASABKAVSCnJlYWN0aW9uSWQ=');

@$core.Deprecated('Use getReactionResponseDescriptor instead')
const GetReactionResponse$json = {
  '1': 'GetReactionResponse',
  '2': [
    {'1': 'reaction', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Reaction', '10': 'reaction'},
  ],
};

/// Descriptor for `GetReactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReactionResponseDescriptor = $convert.base64Decode(
    'ChNHZXRSZWFjdGlvblJlc3BvbnNlEiwKCHJlYWN0aW9uGAEgASgLMhAuYnN0LnYxLlJlYWN0aW'
    '9uUghyZWFjdGlvbg==');

@$core.Deprecated('Use listReactionsRequestDescriptor instead')
const ListReactionsRequest$json = {
  '1': 'ListReactionsRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
    {'1': 'target_id', '3': 3, '4': 1, '5': 5, '10': 'targetId'},
  ],
};

/// Descriptor for `ListReactionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReactionsRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0UmVhY3Rpb25zUmVxdWVzdBIbCglwYWdlX3NpemUYASABKAVSCHBhZ2VTaXplEh0KCn'
    'BhZ2VfdG9rZW4YAiABKAlSCXBhZ2VUb2tlbhIbCgl0YXJnZXRfaWQYAyABKAVSCHRhcmdldElk');

@$core.Deprecated('Use listReactionsResponseDescriptor instead')
const ListReactionsResponse$json = {
  '1': 'ListReactionsResponse',
  '2': [
    {'1': 'reactions', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Reaction', '10': 'reactions'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListReactionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReactionsResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0UmVhY3Rpb25zUmVzcG9uc2USLgoJcmVhY3Rpb25zGAEgAygLMhAuYnN0LnYxLlJlYW'
    'N0aW9uUglyZWFjdGlvbnMSJgoPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2Vu'
    'Eh0KCnRvdGFsX3NpemUYAyABKAVSCXRvdGFsU2l6ZQ==');

@$core.Deprecated('Use updateReactionRequestDescriptor instead')
const UpdateReactionRequest$json = {
  '1': 'UpdateReactionRequest',
  '2': [
    {'1': 'reaction_id', '3': 1, '4': 1, '5': 5, '10': 'reactionId'},
    {'1': 'reaction_type_id', '3': 2, '4': 1, '5': 5, '10': 'reactionTypeId'},
  ],
};

/// Descriptor for `UpdateReactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReactionRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVSZWFjdGlvblJlcXVlc3QSHwoLcmVhY3Rpb25faWQYASABKAVSCnJlYWN0aW9uSW'
    'QSKAoQcmVhY3Rpb25fdHlwZV9pZBgCIAEoBVIOcmVhY3Rpb25UeXBlSWQ=');

@$core.Deprecated('Use updateReactionResponseDescriptor instead')
const UpdateReactionResponse$json = {
  '1': 'UpdateReactionResponse',
  '2': [
    {'1': 'reaction', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Reaction', '10': 'reaction'},
  ],
};

/// Descriptor for `UpdateReactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReactionResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVSZWFjdGlvblJlc3BvbnNlEiwKCHJlYWN0aW9uGAEgASgLMhAuYnN0LnYxLlJlYW'
    'N0aW9uUghyZWFjdGlvbg==');

@$core.Deprecated('Use deleteReactionRequestDescriptor instead')
const DeleteReactionRequest$json = {
  '1': 'DeleteReactionRequest',
  '2': [
    {'1': 'reaction_id', '3': 1, '4': 1, '5': 5, '10': 'reactionId'},
  ],
};

/// Descriptor for `DeleteReactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReactionRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVSZWFjdGlvblJlcXVlc3QSHwoLcmVhY3Rpb25faWQYASABKAVSCnJlYWN0aW9uSW'
    'Q=');

@$core.Deprecated('Use deleteReactionResponseDescriptor instead')
const DeleteReactionResponse$json = {
  '1': 'DeleteReactionResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteReactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReactionResponseDescriptor = $convert.base64Decode(
    'ChZEZWxldGVSZWFjdGlvblJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

