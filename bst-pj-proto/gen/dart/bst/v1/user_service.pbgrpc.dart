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

import 'user_service.pb.dart' as $30;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$30.GetUserRequest, $30.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($30.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $30.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$30.UpdateUserRequest, $30.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($30.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $30.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$30.DeleteUserRequest, $30.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($30.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $30.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$30.GetMyselfRequest, $30.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($30.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $30.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$30.GetUserResponse> getUser($30.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$30.UpdateUserResponse> updateUser($30.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$30.DeleteUserResponse> deleteUser($30.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$30.GetMyselfResponse> getMyself($30.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$30.GetUserRequest, $30.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $30.GetUserRequest.fromBuffer(value),
        ($30.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$30.UpdateUserRequest, $30.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $30.UpdateUserRequest.fromBuffer(value),
        ($30.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$30.DeleteUserRequest, $30.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $30.DeleteUserRequest.fromBuffer(value),
        ($30.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$30.GetMyselfRequest, $30.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $30.GetMyselfRequest.fromBuffer(value),
        ($30.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$30.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$30.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$30.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$30.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$30.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$30.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$30.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$30.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$30.GetUserResponse> getUser($grpc.ServiceCall call, $30.GetUserRequest request);
  $async.Future<$30.UpdateUserResponse> updateUser($grpc.ServiceCall call, $30.UpdateUserRequest request);
  $async.Future<$30.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $30.DeleteUserRequest request);
  $async.Future<$30.GetMyselfResponse> getMyself($grpc.ServiceCall call, $30.GetMyselfRequest request);
}
