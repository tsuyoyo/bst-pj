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

import '../../google/protobuf/empty.pb.dart' as $8;
import 'rating.pb.dart' as $7;
import 'rating_service.pb.dart' as $6;

export 'rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.RatingService')
class RatingServiceClient extends $grpc.Client {
  static final _$createRating = $grpc.ClientMethod<$6.CreateRatingRequest, $7.Rating>(
      '/bst.v1.RatingService/CreateRating',
      ($6.CreateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Rating.fromBuffer(value));
  static final _$listRatings = $grpc.ClientMethod<$6.ListRatingsRequest, $6.ListRatingsResponse>(
      '/bst.v1.RatingService/ListRatings',
      ($6.ListRatingsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListRatingsResponse.fromBuffer(value));
  static final _$updateRating = $grpc.ClientMethod<$6.UpdateRatingRequest, $7.Rating>(
      '/bst.v1.RatingService/UpdateRating',
      ($6.UpdateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Rating.fromBuffer(value));
  static final _$deleteRating = $grpc.ClientMethod<$6.DeleteRatingRequest, $8.Empty>(
      '/bst.v1.RatingService/DeleteRating',
      ($6.DeleteRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.Empty.fromBuffer(value));

  RatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.Rating> createRating($6.CreateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRating, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListRatingsResponse> listRatings($6.ListRatingsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRatings, request, options: options);
  }

  $grpc.ResponseFuture<$7.Rating> updateRating($6.UpdateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRating, request, options: options);
  }

  $grpc.ResponseFuture<$8.Empty> deleteRating($6.DeleteRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRating, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.RatingService')
abstract class RatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.RatingService';

  RatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateRatingRequest, $7.Rating>(
        'CreateRating',
        createRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateRatingRequest.fromBuffer(value),
        ($7.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListRatingsRequest, $6.ListRatingsResponse>(
        'ListRatings',
        listRatings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListRatingsRequest.fromBuffer(value),
        ($6.ListRatingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateRatingRequest, $7.Rating>(
        'UpdateRating',
        updateRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateRatingRequest.fromBuffer(value),
        ($7.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRatingRequest, $8.Empty>(
        'DeleteRating',
        deleteRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRatingRequest.fromBuffer(value),
        ($8.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$7.Rating> createRating_Pre($grpc.ServiceCall call, $async.Future<$6.CreateRatingRequest> request) async {
    return createRating(call, await request);
  }

  $async.Future<$6.ListRatingsResponse> listRatings_Pre($grpc.ServiceCall call, $async.Future<$6.ListRatingsRequest> request) async {
    return listRatings(call, await request);
  }

  $async.Future<$7.Rating> updateRating_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateRatingRequest> request) async {
    return updateRating(call, await request);
  }

  $async.Future<$8.Empty> deleteRating_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRatingRequest> request) async {
    return deleteRating(call, await request);
  }

  $async.Future<$7.Rating> createRating($grpc.ServiceCall call, $6.CreateRatingRequest request);
  $async.Future<$6.ListRatingsResponse> listRatings($grpc.ServiceCall call, $6.ListRatingsRequest request);
  $async.Future<$7.Rating> updateRating($grpc.ServiceCall call, $6.UpdateRatingRequest request);
  $async.Future<$8.Empty> deleteRating($grpc.ServiceCall call, $6.DeleteRatingRequest request);
}
