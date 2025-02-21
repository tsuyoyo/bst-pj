//
//  Generated code. Do not modify.
//  source: bst/v1/user_rating_service.proto
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

import 'user_rating_service.pb.dart' as $23;

export 'user_rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserRatingService')
class UserRatingServiceClient extends $grpc.Client {
  static final _$rateUser = $grpc.ClientMethod<$23.RateUserRequest, $23.RateUserResponse>(
      '/bst.v1.UserRatingService/RateUser',
      ($23.RateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.RateUserResponse.fromBuffer(value));
  static final _$getUserRatingBadges = $grpc.ClientMethod<$23.GetUserRatingBadgesRequest, $23.GetUserRatingBadgesResponse>(
      '/bst.v1.UserRatingService/GetUserRatingBadges',
      ($23.GetUserRatingBadgesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.GetUserRatingBadgesResponse.fromBuffer(value));

  UserRatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$23.RateUserResponse> rateUser($23.RateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rateUser, request, options: options);
  }

  $grpc.ResponseFuture<$23.GetUserRatingBadgesResponse> getUserRatingBadges($23.GetUserRatingBadgesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserRatingBadges, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserRatingService')
abstract class UserRatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserRatingService';

  UserRatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$23.RateUserRequest, $23.RateUserResponse>(
        'RateUser',
        rateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.RateUserRequest.fromBuffer(value),
        ($23.RateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.GetUserRatingBadgesRequest, $23.GetUserRatingBadgesResponse>(
        'GetUserRatingBadges',
        getUserRatingBadges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.GetUserRatingBadgesRequest.fromBuffer(value),
        ($23.GetUserRatingBadgesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$23.RateUserResponse> rateUser_Pre($grpc.ServiceCall call, $async.Future<$23.RateUserRequest> request) async {
    return rateUser(call, await request);
  }

  $async.Future<$23.GetUserRatingBadgesResponse> getUserRatingBadges_Pre($grpc.ServiceCall call, $async.Future<$23.GetUserRatingBadgesRequest> request) async {
    return getUserRatingBadges(call, await request);
  }

  $async.Future<$23.RateUserResponse> rateUser($grpc.ServiceCall call, $23.RateUserRequest request);
  $async.Future<$23.GetUserRatingBadgesResponse> getUserRatingBadges($grpc.ServiceCall call, $23.GetUserRatingBadgesRequest request);
}
