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

import 'user_service.pb.dart' as $16;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$16.GetUserRequest, $16.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($16.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$16.UpdateUserRequest, $16.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($16.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$16.DeleteUserRequest, $16.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($16.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$16.GetMyselfRequest, $16.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($16.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.GetUserResponse> getUser($16.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateUserResponse> updateUser($16.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteUserResponse> deleteUser($16.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetMyselfResponse> getMyself($16.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.GetUserRequest, $16.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetUserRequest.fromBuffer(value),
        ($16.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateUserRequest, $16.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateUserRequest.fromBuffer(value),
        ($16.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteUserRequest, $16.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteUserRequest.fromBuffer(value),
        ($16.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetMyselfRequest, $16.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetMyselfRequest.fromBuffer(value),
        ($16.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$16.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$16.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$16.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$16.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$16.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$16.GetUserResponse> getUser($grpc.ServiceCall call, $16.GetUserRequest request);
  $async.Future<$16.UpdateUserResponse> updateUser($grpc.ServiceCall call, $16.UpdateUserRequest request);
  $async.Future<$16.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $16.DeleteUserRequest request);
  $async.Future<$16.GetMyselfResponse> getMyself($grpc.ServiceCall call, $16.GetMyselfRequest request);
}
