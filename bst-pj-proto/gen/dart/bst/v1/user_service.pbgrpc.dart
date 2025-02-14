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

import 'user_service.pb.dart' as $15;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$15.GetUserRequest, $15.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($15.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$15.UpdateUserRequest, $15.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($15.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$15.DeleteUserRequest, $15.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($15.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$15.GetMyselfRequest, $15.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($15.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.GetUserResponse> getUser($15.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateUserResponse> updateUser($15.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteUserResponse> deleteUser($15.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetMyselfResponse> getMyself($15.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.GetUserRequest, $15.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetUserRequest.fromBuffer(value),
        ($15.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateUserRequest, $15.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateUserRequest.fromBuffer(value),
        ($15.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteUserRequest, $15.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteUserRequest.fromBuffer(value),
        ($15.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetMyselfRequest, $15.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetMyselfRequest.fromBuffer(value),
        ($15.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$15.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$15.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$15.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$15.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$15.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$15.GetUserResponse> getUser($grpc.ServiceCall call, $15.GetUserRequest request);
  $async.Future<$15.UpdateUserResponse> updateUser($grpc.ServiceCall call, $15.UpdateUserRequest request);
  $async.Future<$15.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $15.DeleteUserRequest request);
  $async.Future<$15.GetMyselfResponse> getMyself($grpc.ServiceCall call, $15.GetMyselfRequest request);
}
