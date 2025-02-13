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

import '../../google/protobuf/empty.pb.dart' as $6;
import 'rating.pb.dart' as $5;
import 'rating_service.pb.dart' as $4;

export 'rating_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.RatingService')
class RatingServiceClient extends $grpc.Client {
  static final _$createRating = $grpc.ClientMethod<$4.CreateRatingRequest, $5.Rating>(
      '/bst.v1.RatingService/CreateRating',
      ($4.CreateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Rating.fromBuffer(value));
  static final _$listRatings = $grpc.ClientMethod<$4.ListRatingsRequest, $4.ListRatingsResponse>(
      '/bst.v1.RatingService/ListRatings',
      ($4.ListRatingsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListRatingsResponse.fromBuffer(value));
  static final _$updateRating = $grpc.ClientMethod<$4.UpdateRatingRequest, $5.Rating>(
      '/bst.v1.RatingService/UpdateRating',
      ($4.UpdateRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Rating.fromBuffer(value));
  static final _$deleteRating = $grpc.ClientMethod<$4.DeleteRatingRequest, $6.Empty>(
      '/bst.v1.RatingService/DeleteRating',
      ($4.DeleteRatingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.Empty.fromBuffer(value));

  RatingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.Rating> createRating($4.CreateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRating, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListRatingsResponse> listRatings($4.ListRatingsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRatings, request, options: options);
  }

  $grpc.ResponseFuture<$5.Rating> updateRating($4.UpdateRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRating, request, options: options);
  }

  $grpc.ResponseFuture<$6.Empty> deleteRating($4.DeleteRatingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRating, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.RatingService')
abstract class RatingServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.RatingService';

  RatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateRatingRequest, $5.Rating>(
        'CreateRating',
        createRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateRatingRequest.fromBuffer(value),
        ($5.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListRatingsRequest, $4.ListRatingsResponse>(
        'ListRatings',
        listRatings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListRatingsRequest.fromBuffer(value),
        ($4.ListRatingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateRatingRequest, $5.Rating>(
        'UpdateRating',
        updateRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateRatingRequest.fromBuffer(value),
        ($5.Rating value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteRatingRequest, $6.Empty>(
        'DeleteRating',
        deleteRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteRatingRequest.fromBuffer(value),
        ($6.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$5.Rating> createRating_Pre($grpc.ServiceCall call, $async.Future<$4.CreateRatingRequest> request) async {
    return createRating(call, await request);
  }

  $async.Future<$4.ListRatingsResponse> listRatings_Pre($grpc.ServiceCall call, $async.Future<$4.ListRatingsRequest> request) async {
    return listRatings(call, await request);
  }

  $async.Future<$5.Rating> updateRating_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateRatingRequest> request) async {
    return updateRating(call, await request);
  }

  $async.Future<$6.Empty> deleteRating_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteRatingRequest> request) async {
    return deleteRating(call, await request);
  }

  $async.Future<$5.Rating> createRating($grpc.ServiceCall call, $4.CreateRatingRequest request);
  $async.Future<$4.ListRatingsResponse> listRatings($grpc.ServiceCall call, $4.ListRatingsRequest request);
  $async.Future<$5.Rating> updateRating($grpc.ServiceCall call, $4.UpdateRatingRequest request);
  $async.Future<$6.Empty> deleteRating($grpc.ServiceCall call, $4.DeleteRatingRequest request);
}
