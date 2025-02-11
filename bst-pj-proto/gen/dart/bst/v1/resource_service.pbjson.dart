//
//  Generated code. Do not modify.
//  source: bst/v1/resource_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createResourceRequestDescriptor instead')
const CreateResourceRequest$json = {
  '1': 'CreateResourceRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.bst.v1.Resource.ResourceType', '10': 'type'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CreateResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResourceRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVSZXNvdXJjZVJlcXVlc3QSMQoEdHlwZRgBIAEoDjIdLmJzdC52MS5SZXNvdXJjZS'
    '5SZXNvdXJjZVR5cGVSBHR5cGUSEAoDdXJsGAIgASgJUgN1cmwSEgoEbmFtZRgDIAEoCVIEbmFt'
    'ZRIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24=');

@$core.Deprecated('Use createResourceResponseDescriptor instead')
const CreateResourceResponse$json = {
  '1': 'CreateResourceResponse',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `CreateResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResourceResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVSZXNvdXJjZVJlc3BvbnNlEiwKCHJlc291cmNlGAEgASgLMhAuYnN0LnYxLlJlc2'
    '91cmNlUghyZXNvdXJjZQ==');

@$core.Deprecated('Use getResourceRequestDescriptor instead')
const GetResourceRequest$json = {
  '1': 'GetResourceRequest',
  '2': [
    {'1': 'resource_id', '3': 1, '4': 1, '5': 5, '10': 'resourceId'},
  ],
};

/// Descriptor for `GetResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResourceRequestDescriptor = $convert.base64Decode(
    'ChJHZXRSZXNvdXJjZVJlcXVlc3QSHwoLcmVzb3VyY2VfaWQYASABKAVSCnJlc291cmNlSWQ=');

@$core.Deprecated('Use getResourceResponseDescriptor instead')
const GetResourceResponse$json = {
  '1': 'GetResourceResponse',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `GetResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResourceResponseDescriptor = $convert.base64Decode(
    'ChNHZXRSZXNvdXJjZVJlc3BvbnNlEiwKCHJlc291cmNlGAEgASgLMhAuYnN0LnYxLlJlc291cm'
    'NlUghyZXNvdXJjZQ==');

@$core.Deprecated('Use listResourcesRequestDescriptor instead')
const ListResourcesRequest$json = {
  '1': 'ListResourcesRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
    {'1': 'resource_type', '3': 3, '4': 1, '5': 14, '6': '.bst.v1.Resource.ResourceType', '10': 'resourceType'},
  ],
};

/// Descriptor for `ListResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResourcesRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0UmVzb3VyY2VzUmVxdWVzdBIbCglwYWdlX3NpemUYASABKAVSCHBhZ2VTaXplEh0KCn'
    'BhZ2VfdG9rZW4YAiABKAlSCXBhZ2VUb2tlbhJCCg1yZXNvdXJjZV90eXBlGAMgASgOMh0uYnN0'
    'LnYxLlJlc291cmNlLlJlc291cmNlVHlwZVIMcmVzb3VyY2VUeXBl');

@$core.Deprecated('Use listResourcesResponseDescriptor instead')
const ListResourcesResponse$json = {
  '1': 'ListResourcesResponse',
  '2': [
    {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Resource', '10': 'resources'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResourcesResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0UmVzb3VyY2VzUmVzcG9uc2USLgoJcmVzb3VyY2VzGAEgAygLMhAuYnN0LnYxLlJlc2'
    '91cmNlUglyZXNvdXJjZXMSJgoPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2Vu'
    'Eh0KCnRvdGFsX3NpemUYAyABKAVSCXRvdGFsU2l6ZQ==');

@$core.Deprecated('Use deleteResourceRequestDescriptor instead')
const DeleteResourceRequest$json = {
  '1': 'DeleteResourceRequest',
  '2': [
    {'1': 'resource_id', '3': 1, '4': 1, '5': 5, '10': 'resourceId'},
  ],
};

/// Descriptor for `DeleteResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResourceRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVSZXNvdXJjZVJlcXVlc3QSHwoLcmVzb3VyY2VfaWQYASABKAVSCnJlc291cmNlSW'
    'Q=');

@$core.Deprecated('Use deleteResourceResponseDescriptor instead')
const DeleteResourceResponse$json = {
  '1': 'DeleteResourceResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResourceResponseDescriptor = $convert.base64Decode(
    'ChZEZWxldGVSZXNvdXJjZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

