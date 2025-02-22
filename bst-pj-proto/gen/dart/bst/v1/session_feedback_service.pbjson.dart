//
//  Generated code. Do not modify.
//  source: bst/v1/session_feedback_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use addSessionFeedbackRequestDescriptor instead')
const AddSessionFeedbackRequest$json = {
  '1': 'AddSessionFeedbackRequest',
  '2': [
    {'1': 'feedback', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.SessionFeedback', '10': 'feedback'},
  ],
};

/// Descriptor for `AddSessionFeedbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionFeedbackRequestDescriptor = $convert.base64Decode(
    'ChlBZGRTZXNzaW9uRmVlZGJhY2tSZXF1ZXN0EjMKCGZlZWRiYWNrGAEgASgLMhcuYnN0LnYxLl'
    'Nlc3Npb25GZWVkYmFja1IIZmVlZGJhY2s=');

@$core.Deprecated('Use addSessionFeedbackResponseDescriptor instead')
const AddSessionFeedbackResponse$json = {
  '1': 'AddSessionFeedbackResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AddSessionFeedbackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSessionFeedbackResponseDescriptor = $convert.base64Decode(
    'ChpBZGRTZXNzaW9uRmVlZGJhY2tSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use listSessionFeedbacksRequestDescriptor instead')
const ListSessionFeedbacksRequest$json = {
  '1': 'ListSessionFeedbacksRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `ListSessionFeedbacksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionFeedbacksRequestDescriptor = $convert.base64Decode(
    'ChtMaXN0U2Vzc2lvbkZlZWRiYWNrc1JlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoBVIJc2Vzc2'
    'lvbklk');

@$core.Deprecated('Use listSessionFeedbacksResponseDescriptor instead')
const ListSessionFeedbacksResponse$json = {
  '1': 'ListSessionFeedbacksResponse',
  '2': [
    {'1': 'feedbacks', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.SessionFeedback', '10': 'feedbacks'},
  ],
};

/// Descriptor for `ListSessionFeedbacksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSessionFeedbacksResponseDescriptor = $convert.base64Decode(
    'ChxMaXN0U2Vzc2lvbkZlZWRiYWNrc1Jlc3BvbnNlEjUKCWZlZWRiYWNrcxgBIAMoCzIXLmJzdC'
    '52MS5TZXNzaW9uRmVlZGJhY2tSCWZlZWRiYWNrcw==');

