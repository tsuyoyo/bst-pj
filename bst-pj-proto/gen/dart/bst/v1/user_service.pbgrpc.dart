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

import 'user_service.pb.dart' as $18;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$18.GetUserRequest, $18.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($18.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$18.UpdateUserRequest, $18.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($18.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$18.DeleteUserRequest, $18.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($18.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$18.GetMyselfRequest, $18.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($18.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.GetUserResponse> getUser($18.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateUserResponse> updateUser($18.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteUserResponse> deleteUser($18.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetMyselfResponse> getMyself($18.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.GetUserRequest, $18.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetUserRequest.fromBuffer(value),
        ($18.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateUserRequest, $18.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateUserRequest.fromBuffer(value),
        ($18.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteUserRequest, $18.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteUserRequest.fromBuffer(value),
        ($18.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetMyselfRequest, $18.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetMyselfRequest.fromBuffer(value),
        ($18.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$18.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$18.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$18.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$18.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$18.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$18.GetUserResponse> getUser($grpc.ServiceCall call, $18.GetUserRequest request);
  $async.Future<$18.UpdateUserResponse> updateUser($grpc.ServiceCall call, $18.UpdateUserRequest request);
  $async.Future<$18.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $18.DeleteUserRequest request);
  $async.Future<$18.GetMyselfResponse> getMyself($grpc.ServiceCall call, $18.GetMyselfRequest request);
}
