//
//  Generated code. Do not modify.
//  source: bst/v1/user_profile_service.proto
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

import 'user_profile_service.pb.dart' as $17;

export 'user_profile_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserProfileService')
class UserProfileServiceClient extends $grpc.Client {
  static final _$getUserProfile = $grpc.ClientMethod<$17.GetUserProfileRequest, $17.GetUserProfileResponse>(
      '/bst.v1.UserProfileService/GetUserProfile',
      ($17.GetUserProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetUserProfileResponse.fromBuffer(value));

  UserProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.GetUserProfileResponse> getUserProfile($17.GetUserProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserProfile, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserProfileService')
abstract class UserProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserProfileService';

  UserProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.GetUserProfileRequest, $17.GetUserProfileResponse>(
        'GetUserProfile',
        getUserProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetUserProfileRequest.fromBuffer(value),
        ($17.GetUserProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.GetUserProfileResponse> getUserProfile_Pre($grpc.ServiceCall call, $async.Future<$17.GetUserProfileRequest> request) async {
    return getUserProfile(call, await request);
  }

  $async.Future<$17.GetUserProfileResponse> getUserProfile($grpc.ServiceCall call, $17.GetUserProfileRequest request);
}
