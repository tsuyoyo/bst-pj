//
//  Generated code. Do not modify.
//  source: bst/v1/studio_review_service.proto
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

import 'studio_review_service.pb.dart' as $23;

export 'studio_review_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioReviewService')
class StudioReviewServiceClient extends $grpc.Client {
  static final _$createStudioReview = $grpc.ClientMethod<$23.CreateStudioReviewRequest, $23.CreateStudioReviewResponse>(
      '/bst.v1.StudioReviewService/CreateStudioReview',
      ($23.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$23.ListStudioReviewsRequest, $23.ListStudioReviewsResponse>(
      '/bst.v1.StudioReviewService/ListStudioReviews',
      ($23.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$23.DeleteStudioReviewRequest, $23.DeleteStudioReviewResponse>(
      '/bst.v1.StudioReviewService/DeleteStudioReview',
      ($23.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.DeleteStudioReviewResponse.fromBuffer(value));

  StudioReviewServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$23.CreateStudioReviewResponse> createStudioReview($23.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$23.ListStudioReviewsResponse> listStudioReviews($23.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$23.DeleteStudioReviewResponse> deleteStudioReview($23.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioReviewService')
abstract class StudioReviewServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioReviewService';

  StudioReviewServiceBase() {
    $addMethod($grpc.ServiceMethod<$23.CreateStudioReviewRequest, $23.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.CreateStudioReviewRequest.fromBuffer(value),
        ($23.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.ListStudioReviewsRequest, $23.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.ListStudioReviewsRequest.fromBuffer(value),
        ($23.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.DeleteStudioReviewRequest, $23.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.DeleteStudioReviewRequest.fromBuffer(value),
        ($23.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$23.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$23.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$23.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$23.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$23.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$23.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$23.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $23.CreateStudioReviewRequest request);
  $async.Future<$23.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $23.ListStudioReviewsRequest request);
  $async.Future<$23.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $23.DeleteStudioReviewRequest request);
}
