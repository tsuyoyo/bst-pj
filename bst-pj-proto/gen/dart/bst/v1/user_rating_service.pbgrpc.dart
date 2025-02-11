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

import 'user_rating_service.pb.dart' as $9;

export 'user_rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserRatingService')
class UserRatingServiceClient extends $grpc.Client {
  static final _$rateUser = $grpc.ClientMethod<$9.RateUserRequest, $9.RateUserResponse>(
      '/bst.v1.UserRatingService/RateUser',
      ($9.RateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.RateUserResponse.fromBuffer(value));
  static final _$getUserRatingBadges = $grpc.ClientMethod<$9.GetUserRatingBadgesRequest, $9.GetUserRatingBadgesResponse>(
      '/bst.v1.UserRatingService/GetUserRatingBadges',
      ($9.GetUserRatingBadgesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetUserRatingBadgesResponse.fromBuffer(value));

  UserRatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.RateUserResponse> rateUser($9.RateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rateUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetUserRatingBadgesResponse> getUserRatingBadges($9.GetUserRatingBadgesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserRatingBadges, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserRatingService')
abstract class UserRatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserRatingService';

  UserRatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.RateUserRequest, $9.RateUserResponse>(
        'RateUser',
        rateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.RateUserRequest.fromBuffer(value),
        ($9.RateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetUserRatingBadgesRequest, $9.GetUserRatingBadgesResponse>(
        'GetUserRatingBadges',
        getUserRatingBadges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetUserRatingBadgesRequest.fromBuffer(value),
        ($9.GetUserRatingBadgesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.RateUserResponse> rateUser_Pre($grpc.ServiceCall call, $async.Future<$9.RateUserRequest> request) async {
    return rateUser(call, await request);
  }

  $async.Future<$9.GetUserRatingBadgesResponse> getUserRatingBadges_Pre($grpc.ServiceCall call, $async.Future<$9.GetUserRatingBadgesRequest> request) async {
    return getUserRatingBadges(call, await request);
  }

  $async.Future<$9.RateUserResponse> rateUser($grpc.ServiceCall call, $9.RateUserRequest request);
  $async.Future<$9.GetUserRatingBadgesResponse> getUserRatingBadges($grpc.ServiceCall call, $9.GetUserRatingBadgesRequest request);
}
