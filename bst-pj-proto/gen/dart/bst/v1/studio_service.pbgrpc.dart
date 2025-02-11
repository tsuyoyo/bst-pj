//
//  Generated code. Do not modify.
//  source: bst/v1/studio_service.proto
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

import 'studio_service.pb.dart' as $5;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$5.CreateStudioRequest, $5.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($5.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$5.ListStudiosRequest, $5.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($5.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$5.GetStudioRequest, $5.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($5.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$5.UpdateStudioRequest, $5.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($5.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$5.DeleteStudioRequest, $5.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($5.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$5.CreateStudioReviewRequest, $5.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($5.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$5.ListStudioReviewsRequest, $5.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($5.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$5.DeleteStudioReviewRequest, $5.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($5.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateStudioResponse> createStudio($5.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListStudiosResponse> listStudios($5.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetStudioResponse> getStudio($5.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateStudioResponse> updateStudio($5.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteStudioResponse> deleteStudio($5.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateStudioReviewResponse> createStudioReview($5.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListStudioReviewsResponse> listStudioReviews($5.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteStudioReviewResponse> deleteStudioReview($5.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateStudioRequest, $5.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateStudioRequest.fromBuffer(value),
        ($5.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListStudiosRequest, $5.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListStudiosRequest.fromBuffer(value),
        ($5.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetStudioRequest, $5.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetStudioRequest.fromBuffer(value),
        ($5.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateStudioRequest, $5.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateStudioRequest.fromBuffer(value),
        ($5.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteStudioRequest, $5.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteStudioRequest.fromBuffer(value),
        ($5.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateStudioReviewRequest, $5.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateStudioReviewRequest.fromBuffer(value),
        ($5.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListStudioReviewsRequest, $5.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListStudioReviewsRequest.fromBuffer(value),
        ($5.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteStudioReviewRequest, $5.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteStudioReviewRequest.fromBuffer(value),
        ($5.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$5.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$5.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$5.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$5.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$5.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$5.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$5.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$5.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$5.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$5.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$5.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$5.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$5.CreateStudioResponse> createStudio($grpc.ServiceCall call, $5.CreateStudioRequest request);
  $async.Future<$5.ListStudiosResponse> listStudios($grpc.ServiceCall call, $5.ListStudiosRequest request);
  $async.Future<$5.GetStudioResponse> getStudio($grpc.ServiceCall call, $5.GetStudioRequest request);
  $async.Future<$5.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $5.UpdateStudioRequest request);
  $async.Future<$5.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $5.DeleteStudioRequest request);
  $async.Future<$5.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $5.CreateStudioReviewRequest request);
  $async.Future<$5.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $5.ListStudioReviewsRequest request);
  $async.Future<$5.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $5.DeleteStudioReviewRequest request);
}
