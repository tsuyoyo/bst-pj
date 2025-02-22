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

import 'user_service.pb.dart' as $29;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$29.GetUserRequest, $29.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($29.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $29.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$29.UpdateUserRequest, $29.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($29.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $29.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$29.DeleteUserRequest, $29.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($29.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $29.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$29.GetMyselfRequest, $29.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($29.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $29.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$29.GetUserResponse> getUser($29.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$29.UpdateUserResponse> updateUser($29.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$29.DeleteUserResponse> deleteUser($29.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$29.GetMyselfResponse> getMyself($29.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$29.GetUserRequest, $29.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $29.GetUserRequest.fromBuffer(value),
        ($29.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$29.UpdateUserRequest, $29.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $29.UpdateUserRequest.fromBuffer(value),
        ($29.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$29.DeleteUserRequest, $29.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $29.DeleteUserRequest.fromBuffer(value),
        ($29.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$29.GetMyselfRequest, $29.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $29.GetMyselfRequest.fromBuffer(value),
        ($29.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$29.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$29.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$29.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$29.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$29.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$29.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$29.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$29.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$29.GetUserResponse> getUser($grpc.ServiceCall call, $29.GetUserRequest request);
  $async.Future<$29.UpdateUserResponse> updateUser($grpc.ServiceCall call, $29.UpdateUserRequest request);
  $async.Future<$29.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $29.DeleteUserRequest request);
  $async.Future<$29.GetMyselfResponse> getMyself($grpc.ServiceCall call, $29.GetMyselfRequest request);
}
