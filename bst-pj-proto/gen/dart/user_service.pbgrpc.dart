//
//  Generated code. Do not modify.
//  source: user_service.proto
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

import 'user_service.pb.dart' as $6;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$6.GetUserRequest, $6.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($6.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$6.UpdateUserRequest, $6.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($6.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$6.DeleteUserRequest, $6.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($6.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$6.GetMyselfRequest, $6.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($6.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.GetUserResponse> getUser($6.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateUserResponse> updateUser($6.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteUserResponse> deleteUser($6.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetMyselfResponse> getMyself($6.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.GetUserRequest, $6.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetUserRequest.fromBuffer(value),
        ($6.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateUserRequest, $6.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateUserRequest.fromBuffer(value),
        ($6.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteUserRequest, $6.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteUserRequest.fromBuffer(value),
        ($6.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetMyselfRequest, $6.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetMyselfRequest.fromBuffer(value),
        ($6.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$6.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$6.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$6.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$6.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$6.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$6.GetUserResponse> getUser($grpc.ServiceCall call, $6.GetUserRequest request);
  $async.Future<$6.UpdateUserResponse> updateUser($grpc.ServiceCall call, $6.UpdateUserRequest request);
  $async.Future<$6.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $6.DeleteUserRequest request);
  $async.Future<$6.GetMyselfResponse> getMyself($grpc.ServiceCall call, $6.GetMyselfRequest request);
}
