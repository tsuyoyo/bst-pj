//
//  Generated code. Do not modify.
//  source: bst/v1/session_part_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listSessionPartsRequestDescriptor instead')
const ListSessionPartsRequest$json = {
  '1': 'ListSessionPartsRequest',
};

/// Descriptor for `ListSessionPartsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionPartsRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0U2Vzc2lvblBhcnRzUmVxdWVzdA==');

@$core.Deprecated('Use listSessionPartsResponseDescriptor instead')
const ListSessionPartsResponse$json = {
  '1': 'ListSessionPartsResponse',
  '2': [
    {'1': 'parts', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.SessionPart', '10': 'parts'},
  ],
};

/// Descriptor for `ListSessionPartsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionPartsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0U2Vzc2lvblBhcnRzUmVzcG9uc2USKQoFcGFydHMYASADKAsyEy5ic3QudjEuU2Vzc2'
    'lvblBhcnRSBXBhcnRz');

@$core.Deprecated('Use addSessionPartRequestDescriptor instead')
const AddSessionPartRequest$json = {
  '1': 'AddSessionPartRequest',
  '2': [
    {'1': 'part_id', '3': 1, '4': 1, '5': 5, '10': 'partId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'display_order', '3': 3, '4': 1, '5': 5, '10': 'displayOrder'},
    {'1': 'max_entry', '3': 4, '4': 1, '5': 5, '10': 'maxEntry'},
    {'1': 'transition_cost', '3': 5, '4': 1, '5': 5, '10': 'transitionCost'},
  ],
};

/// Descriptor for `AddSessionPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionPartRequestDescriptor = $convert.base64Decode(
    'ChVBZGRTZXNzaW9uUGFydFJlcXVlc3QSFwoHcGFydF9pZBgBIAEoBVIGcGFydElkEhIKBG5hbW'
    'UYAiABKAlSBG5hbWUSIwoNZGlzcGxheV9vcmRlchgDIAEoBVIMZGlzcGxheU9yZGVyEhsKCW1h'
    'eF9lbnRyeRgEIAEoBVIIbWF4RW50cnkSJwoPdHJhbnNpdGlvbl9jb3N0GAUgASgFUg50cmFuc2'
    'l0aW9uQ29zdA==');

@$core.Deprecated('Use addSessionPartResponseDescriptor instead')
const AddSessionPartResponse$json = {
  '1': 'AddSessionPartResponse',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
  ],
};

/// Descriptor for `AddSessionPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionPartResponseDescriptor = $convert.base64Decode(
    'ChZBZGRTZXNzaW9uUGFydFJlc3BvbnNlEicKBHBhcnQYASABKAsyEy5ic3QudjEuU2Vzc2lvbl'
    'BhcnRSBHBhcnQ=');

@$core.Deprecated('Use updateSessionPartRequestDescriptor instead')
const UpdateSessionPartRequest$json = {
  '1': 'UpdateSessionPartRequest',
  '2': [
    {'1': 'part_id', '3': 1, '4': 1, '5': 5, '10': 'partId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'display_order', '3': 3, '4': 1, '5': 5, '10': 'displayOrder'},
    {'1': 'max_entry', '3': 4, '4': 1, '5': 5, '10': 'maxEntry'},
  ],
};

/// Descriptor for `UpdateSessionPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionPartRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTZXNzaW9uUGFydFJlcXVlc3QSFwoHcGFydF9pZBgBIAEoBVIGcGFydElkEhIKBG'
    '5hbWUYAiABKAlSBG5hbWUSIwoNZGlzcGxheV9vcmRlchgDIAEoBVIMZGlzcGxheU9yZGVyEhsK'
    'CW1heF9lbnRyeRgEIAEoBVIIbWF4RW50cnk=');

@$core.Deprecated('Use updateSessionPartResponseDescriptor instead')
const UpdateSessionPartResponse$json = {
  '1': 'UpdateSessionPartResponse',
  '2': [
    {'1': 'part', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionPart', '10': 'part'},
  ],
};

/// Descriptor for `UpdateSessionPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionPartResponseDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVTZXNzaW9uUGFydFJlc3BvbnNlEicKBHBhcnQYASABKAsyEy5ic3QudjEuU2Vzc2'
    'lvblBhcnRSBHBhcnQ=');

@$core.Deprecated('Use deleteSessionPartRequestDescriptor instead')
const DeleteSessionPartRequest$json = {
  '1': 'DeleteSessionPartRequest',
};

/// Descriptor for `DeleteSessionPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionPartRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVTZXNzaW9uUGFydFJlcXVlc3Q=');

@$core.Deprecated('Use deleteSessionPartResponseDescriptor instead')
const DeleteSessionPartResponse$json = {
  '1': 'DeleteSessionPartResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteSessionPartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSessionPartResponseDescriptor = $convert.base64Decode(
    'ChlEZWxldGVTZXNzaW9uUGFydFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

