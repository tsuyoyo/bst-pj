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

import 'user_service.pb.dart' as $13;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$13.GetUserRequest, $13.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($13.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$13.UpdateUserRequest, $13.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($13.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$13.DeleteUserRequest, $13.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($13.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$13.GetMyselfRequest, $13.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($13.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.GetUserResponse> getUser($13.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateUserResponse> updateUser($13.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteUserResponse> deleteUser($13.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetMyselfResponse> getMyself($13.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.GetUserRequest, $13.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetUserRequest.fromBuffer(value),
        ($13.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateUserRequest, $13.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateUserRequest.fromBuffer(value),
        ($13.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteUserRequest, $13.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteUserRequest.fromBuffer(value),
        ($13.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetMyselfRequest, $13.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetMyselfRequest.fromBuffer(value),
        ($13.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$13.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$13.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$13.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$13.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$13.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$13.GetUserResponse> getUser($grpc.ServiceCall call, $13.GetUserRequest request);
  $async.Future<$13.UpdateUserResponse> updateUser($grpc.ServiceCall call, $13.UpdateUserRequest request);
  $async.Future<$13.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $13.DeleteUserRequest request);
  $async.Future<$13.GetMyselfResponse> getMyself($grpc.ServiceCall call, $13.GetMyselfRequest request);
}
