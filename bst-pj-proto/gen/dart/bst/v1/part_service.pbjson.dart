//
//  Generated code. Do not modify.
//  source: bst/v1/part_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createPartRequestDescriptor instead')
const CreatePartRequest$json = {
  '1': 'CreatePartRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CreatePartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPartRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVQYXJ0UmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGA'
    'IgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use createPartResponseDescriptor instead')
const CreatePartResponse$json = {
  '1': 'CreatePartResponse',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Part', '10': 'part'},
  ],
};

/// Descriptor for `CreatePartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPartResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQYXJ0UmVzcG9uc2USIAoEcGFydBgBIAEoCzIMLmJzdC52MS5QYXJ0UgRwYXJ0');

@$core.Deprecated('Use listPartsRequestDescriptor instead')
const ListPartsRequest$json = {
  '1': 'ListPartsRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListPartsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPartsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0UGFydHNSZXF1ZXN0EhsKCXBhZ2Vfc2l6ZRgBIAEoBVIIcGFnZVNpemUSHQoKcGFnZV'
    '90b2tlbhgCIAEoCVIJcGFnZVRva2Vu');

@$core.Deprecated('Use listPartsResponseDescriptor instead')
const ListPartsResponse$json = {
  '1': 'ListPartsResponse',
  '2': [
    {'1': 'parts', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.Part', '10': 'parts'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 5, '10': 'totalSize'},
  ],
};

/// Descriptor for `ListPartsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPartsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0UGFydHNSZXNwb25zZRIiCgVwYXJ0cxgBIAMoCzIMLmJzdC52MS5QYXJ0UgVwYXJ0cx'
    'ImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4SHQoKdG90YWxfc2l6ZRgD'
    'IAEoBVIJdG90YWxTaXpl');

@$core.Deprecated('Use getPartRequestDescriptor instead')
const GetPartRequest$json = {
  '1': 'GetPartRequest',
  '2': [
    {'1': 'part_id', '3': 1, '4': 1, '5': 5, '10': 'partId'},
  ],
};

/// Descriptor for `GetPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPartRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRQYXJ0UmVxdWVzdBIXCgdwYXJ0X2lkGAEgASgFUgZwYXJ0SWQ=');

@$core.Deprecated('Use getPartResponseDescriptor instead')
const GetPartResponse$json = {
  '1': 'GetPartResponse',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Part', '10': 'part'},
  ],
};

/// Descriptor for `GetPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPartResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRQYXJ0UmVzcG9uc2USIAoEcGFydBgBIAEoCzIMLmJzdC52MS5QYXJ0UgRwYXJ0');

@$core.Deprecated('Use updatePartRequestDescriptor instead')
const UpdatePartRequest$json = {
  '1': 'UpdatePartRequest',
  '2': [
    {'1': 'part_id', '3': 1, '4': 1, '5': 5, '10': 'partId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
  ],
};

/// Descriptor for `UpdatePartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVQYXJ0UmVxdWVzdBIXCgdwYXJ0X2lkGAEgASgFUgZwYXJ0SWQSFwoEbmFtZRgCIA'
    'EoCUgAUgRuYW1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBQgcK'
    'BV9uYW1lQg4KDF9kZXNjcmlwdGlvbg==');

@$core.Deprecated('Use updatePartResponseDescriptor instead')
const UpdatePartResponse$json = {
  '1': 'UpdatePartResponse',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Part', '10': 'part'},
  ],
};

/// Descriptor for `UpdatePartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePartResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVQYXJ0UmVzcG9uc2USIAoEcGFydBgBIAEoCzIMLmJzdC52MS5QYXJ0UgRwYXJ0');

@$core.Deprecated('Use deletePartRequestDescriptor instead')
const DeletePartRequest$json = {
  '1': 'DeletePartRequest',
  '2': [
    {'1': 'part_id', '3': 1, '4': 1, '5': 5, '10': 'partId'},
  ],
};

/// Descriptor for `DeletePartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePartRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVQYXJ0UmVxdWVzdBIXCgdwYXJ0X2lkGAEgASgFUgZwYXJ0SWQ=');

@$core.Deprecated('Use deletePartResponseDescriptor instead')
const DeletePartResponse$json = {
  '1': 'DeletePartResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeletePartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePartResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVQYXJ0UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

