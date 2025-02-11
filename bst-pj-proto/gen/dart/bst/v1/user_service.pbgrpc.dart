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

import 'user_service.pb.dart' as $9;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$9.GetUserRequest, $9.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($9.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$9.UpdateUserRequest, $9.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($9.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$9.DeleteUserRequest, $9.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($9.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$9.GetMyselfRequest, $9.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($9.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.GetUserResponse> getUser($9.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateUserResponse> updateUser($9.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteUserResponse> deleteUser($9.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetMyselfResponse> getMyself($9.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.GetUserRequest, $9.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetUserRequest.fromBuffer(value),
        ($9.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateUserRequest, $9.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateUserRequest.fromBuffer(value),
        ($9.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteUserRequest, $9.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteUserRequest.fromBuffer(value),
        ($9.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetMyselfRequest, $9.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetMyselfRequest.fromBuffer(value),
        ($9.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$9.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$9.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$9.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$9.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$9.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$9.GetUserResponse> getUser($grpc.ServiceCall call, $9.GetUserRequest request);
  $async.Future<$9.UpdateUserResponse> updateUser($grpc.ServiceCall call, $9.UpdateUserRequest request);
  $async.Future<$9.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $9.DeleteUserRequest request);
  $async.Future<$9.GetMyselfResponse> getMyself($grpc.ServiceCall call, $9.GetMyselfRequest request);
}
