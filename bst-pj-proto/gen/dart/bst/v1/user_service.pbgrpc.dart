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

import 'user_service.pb.dart' as $7;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$7.GetUserRequest, $7.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($7.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$7.UpdateUserRequest, $7.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($7.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$7.DeleteUserRequest, $7.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($7.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$7.GetMyselfRequest, $7.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($7.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.GetUserResponse> getUser($7.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateUserResponse> updateUser($7.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteUserResponse> deleteUser($7.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetMyselfResponse> getMyself($7.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetUserRequest, $7.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetUserRequest.fromBuffer(value),
        ($7.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateUserRequest, $7.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateUserRequest.fromBuffer(value),
        ($7.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteUserRequest, $7.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteUserRequest.fromBuffer(value),
        ($7.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMyselfRequest, $7.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetMyselfRequest.fromBuffer(value),
        ($7.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$7.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$7.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$7.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$7.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$7.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$7.GetUserResponse> getUser($grpc.ServiceCall call, $7.GetUserRequest request);
  $async.Future<$7.UpdateUserResponse> updateUser($grpc.ServiceCall call, $7.UpdateUserRequest request);
  $async.Future<$7.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $7.DeleteUserRequest request);
  $async.Future<$7.GetMyselfResponse> getMyself($grpc.ServiceCall call, $7.GetMyselfRequest request);
}
