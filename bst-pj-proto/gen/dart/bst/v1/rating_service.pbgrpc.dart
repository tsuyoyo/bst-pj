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

import '../../google/protobuf/empty.pb.dart' as $12;
import 'rating.pb.dart' as $11;
import 'rating_service.pb.dart' as $10;

export 'rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.RatingService')
class RatingServiceClient extends $grpc.Client {
  static final _$createRating = $grpc.ClientMethod<$10.CreateRatingRequest, $11.Rating>(
      '/bst.v1.RatingService/CreateRating',
      ($10.CreateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.Rating.fromBuffer(value));
  static final _$listRatings = $grpc.ClientMethod<$10.ListRatingsRequest, $10.ListRatingsResponse>(
      '/bst.v1.RatingService/ListRatings',
      ($10.ListRatingsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ListRatingsResponse.fromBuffer(value));
  static final _$updateRating = $grpc.ClientMethod<$10.UpdateRatingRequest, $11.Rating>(
      '/bst.v1.RatingService/UpdateRating',
      ($10.UpdateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.Rating.fromBuffer(value));
  static final _$deleteRating = $grpc.ClientMethod<$10.DeleteRatingRequest, $12.Empty>(
      '/bst.v1.RatingService/DeleteRating',
      ($10.DeleteRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.Empty.fromBuffer(value));

  RatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.Rating> createRating($10.CreateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRating, request, options: options);
  }

  $grpc.ResponseFuture<$10.ListRatingsResponse> listRatings($10.ListRatingsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRatings, request, options: options);
  }

  $grpc.ResponseFuture<$11.Rating> updateRating($10.UpdateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRating, request, options: options);
  }

  $grpc.ResponseFuture<$12.Empty> deleteRating($10.DeleteRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRating, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.RatingService')
abstract class RatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.RatingService';

  RatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateRatingRequest, $11.Rating>(
        'CreateRating',
        createRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateRatingRequest.fromBuffer(value),
        ($11.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListRatingsRequest, $10.ListRatingsResponse>(
        'ListRatings',
        listRatings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ListRatingsRequest.fromBuffer(value),
        ($10.ListRatingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateRatingRequest, $11.Rating>(
        'UpdateRating',
        updateRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateRatingRequest.fromBuffer(value),
        ($11.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteRatingRequest, $12.Empty>(
        'DeleteRating',
        deleteRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteRatingRequest.fromBuffer(value),
        ($12.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$11.Rating> createRating_Pre($grpc.ServiceCall call, $async.Future<$10.CreateRatingRequest> request) async {
    return createRating(call, await request);
  }

  $async.Future<$10.ListRatingsResponse> listRatings_Pre($grpc.ServiceCall call, $async.Future<$10.ListRatingsRequest> request) async {
    return listRatings(call, await request);
  }

  $async.Future<$11.Rating> updateRating_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateRatingRequest> request) async {
    return updateRating(call, await request);
  }

  $async.Future<$12.Empty> deleteRating_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteRatingRequest> request) async {
    return deleteRating(call, await request);
  }

  $async.Future<$11.Rating> createRating($grpc.ServiceCall call, $10.CreateRatingRequest request);
  $async.Future<$10.ListRatingsResponse> listRatings($grpc.ServiceCall call, $10.ListRatingsRequest request);
  $async.Future<$11.Rating> updateRating($grpc.ServiceCall call, $10.UpdateRatingRequest request);
  $async.Future<$12.Empty> deleteRating($grpc.ServiceCall call, $10.DeleteRatingRequest request);
}
