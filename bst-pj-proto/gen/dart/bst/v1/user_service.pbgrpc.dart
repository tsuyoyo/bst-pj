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

import 'user_service.pb.dart' as $21;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$21.GetUserRequest, $21.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($21.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$21.UpdateUserRequest, $21.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($21.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$21.DeleteUserRequest, $21.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($21.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$21.GetMyselfRequest, $21.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($21.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$21.GetUserResponse> getUser($21.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$21.UpdateUserResponse> updateUser($21.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$21.DeleteUserResponse> deleteUser($21.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$21.GetMyselfResponse> getMyself($21.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.GetUserRequest, $21.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.GetUserRequest.fromBuffer(value),
        ($21.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.UpdateUserRequest, $21.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.UpdateUserRequest.fromBuffer(value),
        ($21.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.DeleteUserRequest, $21.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.DeleteUserRequest.fromBuffer(value),
        ($21.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.GetMyselfRequest, $21.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.GetMyselfRequest.fromBuffer(value),
        ($21.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$21.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$21.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$21.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$21.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$21.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$21.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$21.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$21.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$21.GetUserResponse> getUser($grpc.ServiceCall call, $21.GetUserRequest request);
  $async.Future<$21.UpdateUserResponse> updateUser($grpc.ServiceCall call, $21.UpdateUserRequest request);
  $async.Future<$21.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $21.DeleteUserRequest request);
  $async.Future<$21.GetMyselfResponse> getMyself($grpc.ServiceCall call, $21.GetMyselfRequest request);
}
