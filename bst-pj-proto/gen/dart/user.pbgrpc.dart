//
//  Generated code. Do not modify.
//  source: user.proto
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

import 'user.pb.dart' as $2;

export 'user.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$2.CreateUserRequest, $2.CreateUserResponse>(
      '/bst.v1.UserService/CreateUser',
      ($2.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateUserResponse.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$2.GetUserRequest, $2.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($2.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$2.UpdateUserRequest, $2.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($2.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$2.DeleteUserRequest, $2.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($2.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateUserResponse> createUser($2.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetUserResponse> getUser($2.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateUserResponse> updateUser($2.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteUserResponse> deleteUser($2.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateUserRequest, $2.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateUserRequest.fromBuffer(value),
        ($2.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetUserRequest, $2.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetUserRequest.fromBuffer(value),
        ($2.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateUserRequest, $2.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateUserRequest.fromBuffer(value),
        ($2.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteUserRequest, $2.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteUserRequest.fromBuffer(value),
        ($2.DeleteUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$2.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$2.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$2.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$2.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$2.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$2.CreateUserResponse> createUser($grpc.ServiceCall call, $2.CreateUserRequest request);
  $async.Future<$2.GetUserResponse> getUser($grpc.ServiceCall call, $2.GetUserRequest request);
  $async.Future<$2.UpdateUserResponse> updateUser($grpc.ServiceCall call, $2.UpdateUserRequest request);
  $async.Future<$2.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $2.DeleteUserRequest request);
}
