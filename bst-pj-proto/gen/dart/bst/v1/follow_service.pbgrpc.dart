//
//  Generated code. Do not modify.
//  source: bst/v1/follow_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'follow_service.pb.dart' as $4;

export 'follow_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.FollowService')
class FollowServiceClient extends $grpc.Client {
  static final _$followUser = $grpc.ClientMethod<$4.FollowUserRequest, $4.FollowUserResponse>(
      '/bst.v1.FollowService/FollowUser',
      ($4.FollowUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.FollowUserResponse.fromBuffer(value));
  static final _$listFollowers = $grpc.ClientMethod<$4.ListFollowersRequest, $4.ListFollowersResponse>(
      '/bst.v1.FollowService/ListFollowers',
      ($4.ListFollowersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListFollowersResponse.fromBuffer(value));
  static final _$listFollowing = $grpc.ClientMethod<$4.ListFollowingRequest, $4.ListFollowingResponse>(
      '/bst.v1.FollowService/ListFollowing',
      ($4.ListFollowingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListFollowingResponse.fromBuffer(value));

  FollowServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.FollowUserResponse> followUser($4.FollowUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$followUser, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListFollowersResponse> listFollowers($4.ListFollowersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFollowers, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListFollowingResponse> listFollowing($4.ListFollowingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFollowing, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.FollowService')
abstract class FollowServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.FollowService';

  FollowServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.FollowUserRequest, $4.FollowUserResponse>(
        'FollowUser',
        followUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.FollowUserRequest.fromBuffer(value),
        ($4.FollowUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListFollowersRequest, $4.ListFollowersResponse>(
        'ListFollowers',
        listFollowers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListFollowersRequest.fromBuffer(value),
        ($4.ListFollowersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListFollowingRequest, $4.ListFollowingResponse>(
        'ListFollowing',
        listFollowing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListFollowingRequest.fromBuffer(value),
        ($4.ListFollowingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.FollowUserResponse> followUser_Pre($grpc.ServiceCall call, $async.Future<$4.FollowUserRequest> request) async {
    return followUser(call, await request);
  }

  $async.Future<$4.ListFollowersResponse> listFollowers_Pre($grpc.ServiceCall call, $async.Future<$4.ListFollowersRequest> request) async {
    return listFollowers(call, await request);
  }

  $async.Future<$4.ListFollowingResponse> listFollowing_Pre($grpc.ServiceCall call, $async.Future<$4.ListFollowingRequest> request) async {
    return listFollowing(call, await request);
  }

  $async.Future<$4.FollowUserResponse> followUser($grpc.ServiceCall call, $4.FollowUserRequest request);
  $async.Future<$4.ListFollowersResponse> listFollowers($grpc.ServiceCall call, $4.ListFollowersRequest request);
  $async.Future<$4.ListFollowingResponse> listFollowing($grpc.ServiceCall call, $4.ListFollowingRequest request);
}
