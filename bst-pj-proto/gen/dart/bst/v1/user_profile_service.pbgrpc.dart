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

import 'user_profile_service.pb.dart' as $22;

export 'user_profile_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserProfileService')
class UserProfileServiceClient extends $grpc.Client {
  static final _$getUserProfile = $grpc.ClientMethod<$22.GetUserProfileRequest, $22.GetUserProfileResponse>(
      '/bst.v1.UserProfileService/GetUserProfile',
      ($22.GetUserProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetUserProfileResponse.fromBuffer(value));

  UserProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$22.GetUserProfileResponse> getUserProfile($22.GetUserProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserProfile, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserProfileService')
abstract class UserProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserProfileService';

  UserProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$22.GetUserProfileRequest, $22.GetUserProfileResponse>(
        'GetUserProfile',
        getUserProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetUserProfileRequest.fromBuffer(value),
        ($22.GetUserProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$22.GetUserProfileResponse> getUserProfile_Pre($grpc.ServiceCall call, $async.Future<$22.GetUserProfileRequest> request) async {
    return getUserProfile(call, await request);
  }

  $async.Future<$22.GetUserProfileResponse> getUserProfile($grpc.ServiceCall call, $22.GetUserProfileRequest request);
}
