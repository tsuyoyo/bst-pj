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

import 'user_rating_service.pb.dart' as $20;

export 'user_rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserRatingService')
class UserRatingServiceClient extends $grpc.Client {
  static final _$rateUser = $grpc.ClientMethod<$20.RateUserRequest, $20.RateUserResponse>(
      '/bst.v1.UserRatingService/RateUser',
      ($20.RateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.RateUserResponse.fromBuffer(value));
  static final _$getUserRatingBadges = $grpc.ClientMethod<$20.GetUserRatingBadgesRequest, $20.GetUserRatingBadgesResponse>(
      '/bst.v1.UserRatingService/GetUserRatingBadges',
      ($20.GetUserRatingBadgesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.GetUserRatingBadgesResponse.fromBuffer(value));

  UserRatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$20.RateUserResponse> rateUser($20.RateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rateUser, request, options: options);
  }

  $grpc.ResponseFuture<$20.GetUserRatingBadgesResponse> getUserRatingBadges($20.GetUserRatingBadgesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserRatingBadges, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserRatingService')
abstract class UserRatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserRatingService';

  UserRatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.RateUserRequest, $20.RateUserResponse>(
        'RateUser',
        rateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.RateUserRequest.fromBuffer(value),
        ($20.RateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetUserRatingBadgesRequest, $20.GetUserRatingBadgesResponse>(
        'GetUserRatingBadges',
        getUserRatingBadges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.GetUserRatingBadgesRequest.fromBuffer(value),
        ($20.GetUserRatingBadgesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$20.RateUserResponse> rateUser_Pre($grpc.ServiceCall call, $async.Future<$20.RateUserRequest> request) async {
    return rateUser(call, await request);
  }

  $async.Future<$20.GetUserRatingBadgesResponse> getUserRatingBadges_Pre($grpc.ServiceCall call, $async.Future<$20.GetUserRatingBadgesRequest> request) async {
    return getUserRatingBadges(call, await request);
  }

  $async.Future<$20.RateUserResponse> rateUser($grpc.ServiceCall call, $20.RateUserRequest request);
  $async.Future<$20.GetUserRatingBadgesResponse> getUserRatingBadges($grpc.ServiceCall call, $20.GetUserRatingBadgesRequest request);
}
