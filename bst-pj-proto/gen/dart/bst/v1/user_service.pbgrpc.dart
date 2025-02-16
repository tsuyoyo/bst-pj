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

import 'user_service.pb.dart' as $19;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$19.GetUserRequest, $19.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($19.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$19.UpdateUserRequest, $19.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($19.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$19.DeleteUserRequest, $19.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($19.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$19.GetMyselfRequest, $19.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($19.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$19.GetUserResponse> getUser($19.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateUserResponse> updateUser($19.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$19.DeleteUserResponse> deleteUser($19.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$19.GetMyselfResponse> getMyself($19.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.GetUserRequest, $19.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.GetUserRequest.fromBuffer(value),
        ($19.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateUserRequest, $19.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateUserRequest.fromBuffer(value),
        ($19.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.DeleteUserRequest, $19.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.DeleteUserRequest.fromBuffer(value),
        ($19.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.GetMyselfRequest, $19.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.GetMyselfRequest.fromBuffer(value),
        ($19.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$19.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$19.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$19.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$19.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$19.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$19.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$19.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$19.GetUserResponse> getUser($grpc.ServiceCall call, $19.GetUserRequest request);
  $async.Future<$19.UpdateUserResponse> updateUser($grpc.ServiceCall call, $19.UpdateUserRequest request);
  $async.Future<$19.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $19.DeleteUserRequest request);
  $async.Future<$19.GetMyselfResponse> getMyself($grpc.ServiceCall call, $19.GetMyselfRequest request);
}
