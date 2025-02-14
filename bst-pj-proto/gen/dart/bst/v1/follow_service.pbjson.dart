//
//  Generated code. Do not modify.
//  source: bst/v1/follow_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use followUserRequestDescriptor instead')
const FollowUserRequest$json = {
  '1': 'FollowUserRequest',
  '2': [
    {'1': 'following_id', '3': 1, '4': 1, '5': 5, '10': 'followingId'},
  ],
};

/// Descriptor for `FollowUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followUserRequestDescriptor = $convert.base64Decode(
    'ChFGb2xsb3dVc2VyUmVxdWVzdBIhCgxmb2xsb3dpbmdfaWQYASABKAVSC2ZvbGxvd2luZ0lk');

@$core.Deprecated('Use followUserResponseDescriptor instead')
const FollowUserResponse$json = {
  '1': 'FollowUserResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `FollowUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followUserResponseDescriptor = $convert.base64Decode(
    'ChJGb2xsb3dVc2VyUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use listFollowersRequestDescriptor instead')
const ListFollowersRequest$json = {
  '1': 'ListFollowersRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `ListFollowersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFollowersRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0Rm9sbG93ZXJzUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgFUgZ1c2VySWQ=');

@$core.Deprecated('Use listFollowersResponseDescriptor instead')
const ListFollowersResponse$json = {
  '1': 'ListFollowersResponse',
  '2': [
    {'1': 'followers', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.User', '10': 'followers'},
  ],
};

/// Descriptor for `ListFollowersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFollowersResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0Rm9sbG93ZXJzUmVzcG9uc2USKgoJZm9sbG93ZXJzGAEgAygLMgwuYnN0LnYxLlVzZX'
    'JSCWZvbGxvd2Vycw==');

@$core.Deprecated('Use listFollowingRequestDescriptor instead')
const ListFollowingRequest$json = {
  '1': 'ListFollowingRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `ListFollowingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFollowingRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0Rm9sbG93aW5nUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgFUgZ1c2VySWQ=');

@$core.Deprecated('Use listFollowingResponseDescriptor instead')
const ListFollowingResponse$json = {
  '1': 'ListFollowingResponse',
  '2': [
    {'1': 'followings', '3': 1, '4': 3, '5': 11, '6': '.bst.v1.User', '10': 'followings'},
  ],
};

/// Descriptor for `ListFollowingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFollowingResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0Rm9sbG93aW5nUmVzcG9uc2USLAoKZm9sbG93aW5ncxgBIAMoCzIMLmJzdC52MS5Vc2'
    'VyUgpmb2xsb3dpbmdz');

