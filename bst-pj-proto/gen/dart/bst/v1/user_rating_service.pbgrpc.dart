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

import 'user_rating_service.pb.dart' as $15;

export 'user_rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserRatingService')
class UserRatingServiceClient extends $grpc.Client {
  static final _$rateUser = $grpc.ClientMethod<$15.RateUserRequest, $15.RateUserResponse>(
      '/bst.v1.UserRatingService/RateUser',
      ($15.RateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.RateUserResponse.fromBuffer(value));
  static final _$getUserRatingBadges = $grpc.ClientMethod<$15.GetUserRatingBadgesRequest, $15.GetUserRatingBadgesResponse>(
      '/bst.v1.UserRatingService/GetUserRatingBadges',
      ($15.GetUserRatingBadgesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetUserRatingBadgesResponse.fromBuffer(value));

  UserRatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.RateUserResponse> rateUser($15.RateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rateUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetUserRatingBadgesResponse> getUserRatingBadges($15.GetUserRatingBadgesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserRatingBadges, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserRatingService')
abstract class UserRatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserRatingService';

  UserRatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.RateUserRequest, $15.RateUserResponse>(
        'RateUser',
        rateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.RateUserRequest.fromBuffer(value),
        ($15.RateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetUserRatingBadgesRequest, $15.GetUserRatingBadgesResponse>(
        'GetUserRatingBadges',
        getUserRatingBadges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetUserRatingBadgesRequest.fromBuffer(value),
        ($15.GetUserRatingBadgesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.RateUserResponse> rateUser_Pre($grpc.ServiceCall call, $async.Future<$15.RateUserRequest> request) async {
    return rateUser(call, await request);
  }

  $async.Future<$15.GetUserRatingBadgesResponse> getUserRatingBadges_Pre($grpc.ServiceCall call, $async.Future<$15.GetUserRatingBadgesRequest> request) async {
    return getUserRatingBadges(call, await request);
  }

  $async.Future<$15.RateUserResponse> rateUser($grpc.ServiceCall call, $15.RateUserRequest request);
  $async.Future<$15.GetUserRatingBadgesResponse> getUserRatingBadges($grpc.ServiceCall call, $15.GetUserRatingBadgesRequest request);
}
