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

import 'user_service.pb.dart' as $26;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$26.GetUserRequest, $26.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($26.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$26.UpdateUserRequest, $26.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($26.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$26.DeleteUserRequest, $26.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($26.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$26.GetMyselfRequest, $26.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($26.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$26.GetUserResponse> getUser($26.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$26.UpdateUserResponse> updateUser($26.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$26.DeleteUserResponse> deleteUser($26.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$26.GetMyselfResponse> getMyself($26.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$26.GetUserRequest, $26.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.GetUserRequest.fromBuffer(value),
        ($26.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.UpdateUserRequest, $26.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.UpdateUserRequest.fromBuffer(value),
        ($26.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.DeleteUserRequest, $26.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.DeleteUserRequest.fromBuffer(value),
        ($26.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.GetMyselfRequest, $26.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.GetMyselfRequest.fromBuffer(value),
        ($26.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$26.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$26.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$26.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$26.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$26.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$26.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$26.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$26.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$26.GetUserResponse> getUser($grpc.ServiceCall call, $26.GetUserRequest request);
  $async.Future<$26.UpdateUserResponse> updateUser($grpc.ServiceCall call, $26.UpdateUserRequest request);
  $async.Future<$26.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $26.DeleteUserRequest request);
  $async.Future<$26.GetMyselfResponse> getMyself($grpc.ServiceCall call, $26.GetMyselfRequest request);
}
