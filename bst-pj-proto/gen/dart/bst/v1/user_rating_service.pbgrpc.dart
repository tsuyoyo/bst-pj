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

import 'user_rating_service.pb.dart' as $28;

export 'user_rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.UserRatingService')
class UserRatingServiceClient extends $grpc.Client {
  static final _$rateUser = $grpc.ClientMethod<$28.RateUserRequest, $28.RateUserResponse>(
      '/bst.v1.UserRatingService/RateUser',
      ($28.RateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $28.RateUserResponse.fromBuffer(value));
  static final _$getUserRatingBadges = $grpc.ClientMethod<$28.GetUserRatingBadgesRequest, $28.GetUserRatingBadgesResponse>(
      '/bst.v1.UserRatingService/GetUserRatingBadges',
      ($28.GetUserRatingBadgesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $28.GetUserRatingBadgesResponse.fromBuffer(value));

  UserRatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$28.RateUserResponse> rateUser($28.RateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rateUser, request, options: options);
  }

  $grpc.ResponseFuture<$28.GetUserRatingBadgesResponse> getUserRatingBadges($28.GetUserRatingBadgesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserRatingBadges, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.UserRatingService')
abstract class UserRatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.UserRatingService';

  UserRatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$28.RateUserRequest, $28.RateUserResponse>(
        'RateUser',
        rateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $28.RateUserRequest.fromBuffer(value),
        ($28.RateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$28.GetUserRatingBadgesRequest, $28.GetUserRatingBadgesResponse>(
        'GetUserRatingBadges',
        getUserRatingBadges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $28.GetUserRatingBadgesRequest.fromBuffer(value),
        ($28.GetUserRatingBadgesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$28.RateUserResponse> rateUser_Pre($grpc.ServiceCall call, $async.Future<$28.RateUserRequest> request) async {
    return rateUser(call, await request);
  }

  $async.Future<$28.GetUserRatingBadgesResponse> getUserRatingBadges_Pre($grpc.ServiceCall call, $async.Future<$28.GetUserRatingBadgesRequest> request) async {
    return getUserRatingBadges(call, await request);
  }

  $async.Future<$28.RateUserResponse> rateUser($grpc.ServiceCall call, $28.RateUserRequest request);
  $async.Future<$28.GetUserRatingBadgesResponse> getUserRatingBadges($grpc.ServiceCall call, $28.GetUserRatingBadgesRequest request);
}
