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

import 'user_service.pb.dart' as $8;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$8.GetUserRequest, $8.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($8.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$8.UpdateUserRequest, $8.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($8.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$8.DeleteUserRequest, $8.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($8.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$8.GetMyselfRequest, $8.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($8.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.GetUserResponse> getUser($8.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateUserResponse> updateUser($8.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteUserResponse> deleteUser($8.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetMyselfResponse> getMyself($8.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.GetUserRequest, $8.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetUserRequest.fromBuffer(value),
        ($8.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateUserRequest, $8.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateUserRequest.fromBuffer(value),
        ($8.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteUserRequest, $8.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteUserRequest.fromBuffer(value),
        ($8.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetMyselfRequest, $8.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetMyselfRequest.fromBuffer(value),
        ($8.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$8.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$8.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$8.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$8.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$8.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$8.GetUserResponse> getUser($grpc.ServiceCall call, $8.GetUserRequest request);
  $async.Future<$8.UpdateUserResponse> updateUser($grpc.ServiceCall call, $8.UpdateUserRequest request);
  $async.Future<$8.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $8.DeleteUserRequest request);
  $async.Future<$8.GetMyselfResponse> getMyself($grpc.ServiceCall call, $8.GetMyselfRequest request);
}
