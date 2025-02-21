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

import 'studio_review_service.pb.dart' as $17;

export 'studio_review_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioReviewService')
class StudioReviewServiceClient extends $grpc.Client {
  static final _$createStudioReview = $grpc.ClientMethod<$17.CreateStudioReviewRequest, $17.CreateStudioReviewResponse>(
      '/bst.v1.StudioReviewService/CreateStudioReview',
      ($17.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$17.ListStudioReviewsRequest, $17.ListStudioReviewsResponse>(
      '/bst.v1.StudioReviewService/ListStudioReviews',
      ($17.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$17.DeleteStudioReviewRequest, $17.DeleteStudioReviewResponse>(
      '/bst.v1.StudioReviewService/DeleteStudioReview',
      ($17.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteStudioReviewResponse.fromBuffer(value));

  StudioReviewServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.CreateStudioReviewResponse> createStudioReview($17.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$17.ListStudioReviewsResponse> listStudioReviews($17.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteStudioReviewResponse> deleteStudioReview($17.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioReviewService')
abstract class StudioReviewServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioReviewService';

  StudioReviewServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.CreateStudioReviewRequest, $17.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.CreateStudioReviewRequest.fromBuffer(value),
        ($17.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.ListStudioReviewsRequest, $17.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ListStudioReviewsRequest.fromBuffer(value),
        ($17.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteStudioReviewRequest, $17.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteStudioReviewRequest.fromBuffer(value),
        ($17.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$17.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$17.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$17.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$17.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$17.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $17.CreateStudioReviewRequest request);
  $async.Future<$17.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $17.ListStudioReviewsRequest request);
  $async.Future<$17.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $17.DeleteStudioReviewRequest request);
}
