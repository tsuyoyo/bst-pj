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

import '../../google/protobuf/empty.pb.dart' as $9;
import 'rating.pb.dart' as $8;
import 'rating_service.pb.dart' as $7;

export 'rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.RatingService')
class RatingServiceClient extends $grpc.Client {
  static final _$createRating = $grpc.ClientMethod<$7.CreateRatingRequest, $8.Rating>(
      '/bst.v1.RatingService/CreateRating',
      ($7.CreateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.Rating.fromBuffer(value));
  static final _$listRatings = $grpc.ClientMethod<$7.ListRatingsRequest, $7.ListRatingsResponse>(
      '/bst.v1.RatingService/ListRatings',
      ($7.ListRatingsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListRatingsResponse.fromBuffer(value));
  static final _$updateRating = $grpc.ClientMethod<$7.UpdateRatingRequest, $8.Rating>(
      '/bst.v1.RatingService/UpdateRating',
      ($7.UpdateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.Rating.fromBuffer(value));
  static final _$deleteRating = $grpc.ClientMethod<$7.DeleteRatingRequest, $9.Empty>(
      '/bst.v1.RatingService/DeleteRating',
      ($7.DeleteRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.Empty.fromBuffer(value));

  RatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.Rating> createRating($7.CreateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRating, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListRatingsResponse> listRatings($7.ListRatingsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRatings, request, options: options);
  }

  $grpc.ResponseFuture<$8.Rating> updateRating($7.UpdateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRating, request, options: options);
  }

  $grpc.ResponseFuture<$9.Empty> deleteRating($7.DeleteRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRating, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.RatingService')
abstract class RatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.RatingService';

  RatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateRatingRequest, $8.Rating>(
        'CreateRating',
        createRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateRatingRequest.fromBuffer(value),
        ($8.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListRatingsRequest, $7.ListRatingsResponse>(
        'ListRatings',
        listRatings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListRatingsRequest.fromBuffer(value),
        ($7.ListRatingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateRatingRequest, $8.Rating>(
        'UpdateRating',
        updateRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateRatingRequest.fromBuffer(value),
        ($8.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteRatingRequest, $9.Empty>(
        'DeleteRating',
        deleteRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteRatingRequest.fromBuffer(value),
        ($9.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$8.Rating> createRating_Pre($grpc.ServiceCall call, $async.Future<$7.CreateRatingRequest> request) async {
    return createRating(call, await request);
  }

  $async.Future<$7.ListRatingsResponse> listRatings_Pre($grpc.ServiceCall call, $async.Future<$7.ListRatingsRequest> request) async {
    return listRatings(call, await request);
  }

  $async.Future<$8.Rating> updateRating_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateRatingRequest> request) async {
    return updateRating(call, await request);
  }

  $async.Future<$9.Empty> deleteRating_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteRatingRequest> request) async {
    return deleteRating(call, await request);
  }

  $async.Future<$8.Rating> createRating($grpc.ServiceCall call, $7.CreateRatingRequest request);
  $async.Future<$7.ListRatingsResponse> listRatings($grpc.ServiceCall call, $7.ListRatingsRequest request);
  $async.Future<$8.Rating> updateRating($grpc.ServiceCall call, $7.UpdateRatingRequest request);
  $async.Future<$9.Empty> deleteRating($grpc.ServiceCall call, $7.DeleteRatingRequest request);
}
