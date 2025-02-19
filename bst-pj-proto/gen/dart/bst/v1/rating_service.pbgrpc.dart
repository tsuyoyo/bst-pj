//
//  Generated code. Do not modify.
//  source: bst/v1/rating_service.proto
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

import '../../google/protobuf/empty.pb.dart' as $11;
import 'rating.pb.dart' as $10;
import 'rating_service.pb.dart' as $9;

export 'rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.RatingService')
class RatingServiceClient extends $grpc.Client {
  static final _$createRating = $grpc.ClientMethod<$9.CreateRatingRequest, $10.Rating>(
      '/bst.v1.RatingService/CreateRating',
      ($9.CreateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Rating.fromBuffer(value));
  static final _$listRatings = $grpc.ClientMethod<$9.ListRatingsRequest, $9.ListRatingsResponse>(
      '/bst.v1.RatingService/ListRatings',
      ($9.ListRatingsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListRatingsResponse.fromBuffer(value));
  static final _$updateRating = $grpc.ClientMethod<$9.UpdateRatingRequest, $10.Rating>(
      '/bst.v1.RatingService/UpdateRating',
      ($9.UpdateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.Rating.fromBuffer(value));
  static final _$deleteRating = $grpc.ClientMethod<$9.DeleteRatingRequest, $11.Empty>(
      '/bst.v1.RatingService/DeleteRating',
      ($9.DeleteRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.Empty.fromBuffer(value));

  RatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.Rating> createRating($9.CreateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRating, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListRatingsResponse> listRatings($9.ListRatingsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRatings, request, options: options);
  }

  $grpc.ResponseFuture<$10.Rating> updateRating($9.UpdateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRating, request, options: options);
  }

  $grpc.ResponseFuture<$11.Empty> deleteRating($9.DeleteRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRating, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.RatingService')
abstract class RatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.RatingService';

  RatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateRatingRequest, $10.Rating>(
        'CreateRating',
        createRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateRatingRequest.fromBuffer(value),
        ($10.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListRatingsRequest, $9.ListRatingsResponse>(
        'ListRatings',
        listRatings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListRatingsRequest.fromBuffer(value),
        ($9.ListRatingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateRatingRequest, $10.Rating>(
        'UpdateRating',
        updateRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateRatingRequest.fromBuffer(value),
        ($10.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteRatingRequest, $11.Empty>(
        'DeleteRating',
        deleteRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteRatingRequest.fromBuffer(value),
        ($11.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$10.Rating> createRating_Pre($grpc.ServiceCall call, $async.Future<$9.CreateRatingRequest> request) async {
    return createRating(call, await request);
  }

  $async.Future<$9.ListRatingsResponse> listRatings_Pre($grpc.ServiceCall call, $async.Future<$9.ListRatingsRequest> request) async {
    return listRatings(call, await request);
  }

  $async.Future<$10.Rating> updateRating_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateRatingRequest> request) async {
    return updateRating(call, await request);
  }

  $async.Future<$11.Empty> deleteRating_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteRatingRequest> request) async {
    return deleteRating(call, await request);
  }

  $async.Future<$10.Rating> createRating($grpc.ServiceCall call, $9.CreateRatingRequest request);
  $async.Future<$9.ListRatingsResponse> listRatings($grpc.ServiceCall call, $9.ListRatingsRequest request);
  $async.Future<$10.Rating> updateRating($grpc.ServiceCall call, $9.UpdateRatingRequest request);
  $async.Future<$11.Empty> deleteRating($grpc.ServiceCall call, $9.DeleteRatingRequest request);
}
