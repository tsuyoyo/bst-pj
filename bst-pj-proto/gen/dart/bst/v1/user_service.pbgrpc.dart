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

import 'user_service.pb.dart' as $22;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$22.GetUserRequest, $22.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($22.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$22.UpdateUserRequest, $22.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($22.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$22.DeleteUserRequest, $22.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($22.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$22.GetMyselfRequest, $22.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($22.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$22.GetUserResponse> getUser($22.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$22.UpdateUserResponse> updateUser($22.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$22.DeleteUserResponse> deleteUser($22.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$22.GetMyselfResponse> getMyself($22.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$22.GetUserRequest, $22.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetUserRequest.fromBuffer(value),
        ($22.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.UpdateUserRequest, $22.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.UpdateUserRequest.fromBuffer(value),
        ($22.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.DeleteUserRequest, $22.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.DeleteUserRequest.fromBuffer(value),
        ($22.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.GetMyselfRequest, $22.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetMyselfRequest.fromBuffer(value),
        ($22.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$22.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$22.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$22.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$22.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$22.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$22.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$22.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$22.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$22.GetUserResponse> getUser($grpc.ServiceCall call, $22.GetUserRequest request);
  $async.Future<$22.UpdateUserResponse> updateUser($grpc.ServiceCall call, $22.UpdateUserRequest request);
  $async.Future<$22.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $22.DeleteUserRequest request);
  $async.Future<$22.GetMyselfResponse> getMyself($grpc.ServiceCall call, $22.GetMyselfRequest request);
}
