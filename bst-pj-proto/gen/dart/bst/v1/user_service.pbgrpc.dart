//
//  Generated code. Do not modify.
//  source: bst/v1/user_service.proto
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

import 'user_service.pb.dart' as $10;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$10.GetUserRequest, $10.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($10.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$10.UpdateUserRequest, $10.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($10.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$10.DeleteUserRequest, $10.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($10.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$10.GetMyselfRequest, $10.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($10.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.GetUserResponse> getUser($10.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateUserResponse> updateUser($10.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteUserResponse> deleteUser($10.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetMyselfResponse> getMyself($10.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.GetUserRequest, $10.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetUserRequest.fromBuffer(value),
        ($10.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateUserRequest, $10.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateUserRequest.fromBuffer(value),
        ($10.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteUserRequest, $10.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteUserRequest.fromBuffer(value),
        ($10.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetMyselfRequest, $10.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetMyselfRequest.fromBuffer(value),
        ($10.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$10.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$10.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$10.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$10.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$10.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$10.GetUserResponse> getUser($grpc.ServiceCall call, $10.GetUserRequest request);
  $async.Future<$10.UpdateUserResponse> updateUser($grpc.ServiceCall call, $10.UpdateUserRequest request);
  $async.Future<$10.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $10.DeleteUserRequest request);
  $async.Future<$10.GetMyselfResponse> getMyself($grpc.ServiceCall call, $10.GetMyselfRequest request);
}
