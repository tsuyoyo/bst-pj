//
//  Generated code. Do not modify.
//  source: bst/v1/session_titmetable_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getSessionTimetableRequestDescriptor instead')
const GetSessionTimetableRequest$json = {
  '1': 'GetSessionTimetableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetSessionTimetableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionTimetableRequestDescriptor = $convert.base64Decode(
    'ChpHZXRTZXNzaW9uVGltZXRhYmxlUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZXNzaW'
    '9uSWQ=');

@$core.Deprecated('Use getSessionTimetableResponseDescriptor instead')
const GetSessionTimetableResponse$json = {
  '1': 'GetSessionTimetableResponse',
  '2': [
    {'1': 'timetable', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `GetSessionTimetableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionTimetableResponseDescriptor = $convert.base64Decode(
    'ChtHZXRTZXNzaW9uVGltZXRhYmxlUmVzcG9uc2USLwoJdGltZXRhYmxlGAEgASgLMhEuYnN0Ln'
    'YxLlRpbWV0YWJsZVIJdGltZXRhYmxl');

@$core.Deprecated('Use updateSessionTimetableRequestDescriptor instead')
const UpdateSessionTimetableRequest$json = {
  '1': 'UpdateSessionTimetableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'timetable', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `UpdateSessionTimetableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionTimetableRequestDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVTZXNzaW9uVGltZXRhYmxlUmVxdWVzdBIdCgpzZXNzaW9uX2lkGAEgASgFUglzZX'
    'NzaW9uSWQSLwoJdGltZXRhYmxlGAIgASgLMhEuYnN0LnYxLlRpbWV0YWJsZVIJdGltZXRhYmxl');

@$core.Deprecated('Use updateSessionTimetableResponseDescriptor instead')
const UpdateSessionTimetableResponse$json = {
  '1': 'UpdateSessionTimetableResponse',
  '2': [
    {'1': 'timetable', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `UpdateSessionTimetableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionTimetableResponseDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVTZXNzaW9uVGltZXRhYmxlUmVzcG9uc2USLwoJdGltZXRhYmxlGAEgASgLMhEuYn'
    'N0LnYxLlRpbWV0YWJsZVIJdGltZXRhYmxl');

@$core.Deprecated('Use getOptimizedTimetableRequestDescriptor instead')
const GetOptimizedTimetableRequest$json = {
  '1': 'GetOptimizedTimetableRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'optimization_rules', '3': 2, '4': 3, '5': 9, '10': 'optimizationRules'},
  ],
};

/// Descriptor for `GetOptimizedTimetableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOptimizedTimetableRequestDescriptor = $convert.base64Decode(
    'ChxHZXRPcHRpbWl6ZWRUaW1ldGFibGVSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASABKAVSCXNlc3'
    'Npb25JZBItChJvcHRpbWl6YXRpb25fcnVsZXMYAiADKAlSEW9wdGltaXphdGlvblJ1bGVz');

@$core.Deprecated('Use getOptimizedTimetableResponseDescriptor instead')
const GetOptimizedTimetableResponse$json = {
  '1': 'GetOptimizedTimetableResponse',
  '2': [
    {'1': 'timetable', '3': 1, '4': 1, '5': 11, '6': '.bst.v1.Timetable', '10': 'timetable'},
  ],
};

/// Descriptor for `GetOptimizedTimetableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOptimizedTimetableResponseDescriptor = $convert.base64Decode(
    'Ch1HZXRPcHRpbWl6ZWRUaW1ldGFibGVSZXNwb25zZRIvCgl0aW1ldGFibGUYASABKAsyES5ic3'
    'QudjEuVGltZXRhYmxlUgl0aW1ldGFibGU=');

@$core.Deprecated('Use getTimetableProgressRequestDescriptor instead')
const GetTimetableProgressRequest$json = {
  '1': 'GetTimetableProgressRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
  ],
};

/// Descriptor for `GetTimetableProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTimetableProgressRequestDescriptor = $convert.base64Decode(
    'ChtHZXRUaW1ldGFibGVQcm9ncmVzc1JlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoBVIJc2Vzc2'
    'lvbklk');

@$core.Deprecated('Use getTimetableProgressResponseDescriptor instead')
const GetTimetableProgressResponse$json = {
  '1': 'GetTimetableProgressResponse',
  '2': [
    {'1': 'completed_entries', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.TimetableEntry', '10': 'completedEntries'},
    {'1': 'current_entry', '3': 2, '4': 1, '5': 11, '6': '.bst.v1.TimetableEntry', '10': 'currentEntry'},
  ],
};

/// Descriptor for `GetTimetableProgressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTimetableProgressResponseDescriptor = $convert.base64Decode(
    'ChxHZXRUaW1ldGFibGVQcm9ncmVzc1Jlc3BvbnNlEkMKEWNvbXBsZXRlZF9lbnRyaWVzGAEgAy'
    'gLMhYuYnN0LnYxLlRpbWV0YWJsZUVudHJ5UhBjb21wbGV0ZWRFbnRyaWVzEjsKDWN1cnJlbnRf'
    'ZW50cnkYAiABKAsyFi5ic3QudjEuVGltZXRhYmxlRW50cnlSDGN1cnJlbnRFbnRyeQ==');

@$core.Deprecated('Use updateTimetableProgressRequestDescriptor instead')
const UpdateTimetableProgressRequest$json = {
  '1': 'UpdateTimetableProgressRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 5, '10': 'sessionId'},
    {'1': 'current_entry_id', '3': 2, '4': 1, '5': 5, '10': 'currentEntryId'},
  ],
};

/// Descriptor for `UpdateTimetableProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTimetableProgressRequestDescriptor = $convert.base64Decode(
    'Ch5VcGRhdGVUaW1ldGFibGVQcm9ncmVzc1JlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoBVIJc2'
    'Vzc2lvbklkEigKEGN1cnJlbnRfZW50cnlfaWQYAiABKAVSDmN1cnJlbnRFbnRyeUlk');

@$core.Deprecated('Use updateTimetableProgressResponseDescriptor instead')
const UpdateTimetableProgressResponse$json = {
  '1': 'UpdateTimetableProgressResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UpdateTimetableProgressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTimetableProgressResponseDescriptor = $convert.base64Decode(
    'Ch9VcGRhdGVUaW1ldGFibGVQcm9ncmVzc1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2'
    'Nlc3M=');

