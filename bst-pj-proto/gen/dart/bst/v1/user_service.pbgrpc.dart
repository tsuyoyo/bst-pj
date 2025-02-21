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

import 'user_service.pb.dart' as $24;

export 'user_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$24.GetUserRequest, $24.GetUserResponse>(
      '/bst.v1.UserService/GetUser',
      ($24.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $24.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$24.UpdateUserRequest, $24.UpdateUserResponse>(
      '/bst.v1.UserService/UpdateUser',
      ($24.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $24.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$24.DeleteUserRequest, $24.DeleteUserResponse>(
      '/bst.v1.UserService/DeleteUser',
      ($24.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $24.DeleteUserResponse.fromBuffer(value));
  static final _$getMyself = $grpc.ClientMethod<$24.GetMyselfRequest, $24.GetMyselfResponse>(
      '/bst.v1.UserService/GetMyself',
      ($24.GetMyselfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $24.GetMyselfResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$24.GetUserResponse> getUser($24.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$24.UpdateUserResponse> updateUser($24.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$24.DeleteUserResponse> deleteUser($24.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$24.GetMyselfResponse> getMyself($24.GetMyselfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyself, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$24.GetUserRequest, $24.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $24.GetUserRequest.fromBuffer(value),
        ($24.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$24.UpdateUserRequest, $24.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $24.UpdateUserRequest.fromBuffer(value),
        ($24.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$24.DeleteUserRequest, $24.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $24.DeleteUserRequest.fromBuffer(value),
        ($24.DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$24.GetMyselfRequest, $24.GetMyselfResponse>(
        'GetMyself',
        getMyself_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $24.GetMyselfRequest.fromBuffer(value),
        ($24.GetMyselfResponse value) => value.writeToBuffer()));
  }

  $async.Future<$24.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$24.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$24.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$24.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$24.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$24.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$24.GetMyselfResponse> getMyself_Pre($grpc.ServiceCall call, $async.Future<$24.GetMyselfRequest> request) async {
    return getMyself(call, await request);
  }

  $async.Future<$24.GetUserResponse> getUser($grpc.ServiceCall call, $24.GetUserRequest request);
  $async.Future<$24.UpdateUserResponse> updateUser($grpc.ServiceCall call, $24.UpdateUserRequest request);
  $async.Future<$24.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $24.DeleteUserRequest request);
  $async.Future<$24.GetMyselfResponse> getMyself($grpc.ServiceCall call, $24.GetMyselfRequest request);
}
