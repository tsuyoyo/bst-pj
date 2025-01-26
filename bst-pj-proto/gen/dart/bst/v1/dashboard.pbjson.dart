//
//  Generated code. Do not modify.
//  source: bst/v1/dashboard.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dashboardDataDescriptor instead')
const DashboardData$json = {
  '1': 'DashboardData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'updated_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `DashboardData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardDataDescriptor = $convert.base64Decode(
    'Cg1EYXNoYm9hcmREYXRhEg4KAmlkGAEgASgFUgJpZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW'
    '50EhcKB3VzZXJfaWQYAyABKAVSBnVzZXJJZBI5Cgp1cGRhdGVkX2F0GAQgASgLMhouZ29vZ2xl'
    'LnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0');

@$core.Deprecated('Use searchIndexDescriptor instead')
const SearchIndex$json = {
  '1': 'SearchIndex',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'keywords', '3': 2, '4': 1, '5': 9, '10': 'keywords'},
    {'1': 'target_type', '3': 3, '4': 1, '5': 9, '10': 'targetType'},
    {'1': 'target_id', '3': 4, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'indexed_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'indexedAt'},
  ],
};

/// Descriptor for `SearchIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchIndexDescriptor = $convert.base64Decode(
    'CgtTZWFyY2hJbmRleBIOCgJpZBgBIAEoBVICaWQSGgoIa2V5d29yZHMYAiABKAlSCGtleXdvcm'
    'RzEh8KC3RhcmdldF90eXBlGAMgASgJUgp0YXJnZXRUeXBlEhsKCXRhcmdldF9pZBgEIAEoBVII'
    'dGFyZ2V0SWQSOQoKaW5kZXhlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbX'
    'BSCWluZGV4ZWRBdA==');

@$core.Deprecated('Use searchResultDescriptor instead')
const SearchResult$json = {
  '1': 'SearchResult',
  '2': [
    {'1': 'target_type', '3': 1, '4': 1, '5': 9, '10': 'targetType'},
    {'1': 'target_id', '3': 2, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'relevance_score', '3': 5, '4': 1, '5': 2, '10': 'relevanceScore'},
  ],
};

/// Descriptor for `SearchResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResultDescriptor = $convert.base64Decode(
    'CgxTZWFyY2hSZXN1bHQSHwoLdGFyZ2V0X3R5cGUYASABKAlSCnRhcmdldFR5cGUSGwoJdGFyZ2'
    'V0X2lkGAIgASgFUgh0YXJnZXRJZBIUCgV0aXRsZRgDIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRp'
    'b24YBCABKAlSC2Rlc2NyaXB0aW9uEicKD3JlbGV2YW5jZV9zY29yZRgFIAEoAlIOcmVsZXZhbm'
    'NlU2NvcmU=');

