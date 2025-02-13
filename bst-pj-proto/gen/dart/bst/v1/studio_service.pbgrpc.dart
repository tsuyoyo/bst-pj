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

import 'studio_service.pb.dart' as $11;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$11.CreateStudioRequest, $11.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($11.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$11.ListStudiosRequest, $11.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($11.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$11.GetStudioRequest, $11.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($11.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$11.UpdateStudioRequest, $11.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($11.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$11.DeleteStudioRequest, $11.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($11.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$11.CreateStudioReviewRequest, $11.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($11.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$11.ListStudioReviewsRequest, $11.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($11.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$11.DeleteStudioReviewRequest, $11.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($11.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateStudioResponse> createStudio($11.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListStudiosResponse> listStudios($11.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetStudioResponse> getStudio($11.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateStudioResponse> updateStudio($11.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteStudioResponse> deleteStudio($11.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateStudioReviewResponse> createStudioReview($11.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListStudioReviewsResponse> listStudioReviews($11.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteStudioReviewResponse> deleteStudioReview($11.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateStudioRequest, $11.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateStudioRequest.fromBuffer(value),
        ($11.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListStudiosRequest, $11.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListStudiosRequest.fromBuffer(value),
        ($11.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetStudioRequest, $11.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetStudioRequest.fromBuffer(value),
        ($11.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateStudioRequest, $11.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateStudioRequest.fromBuffer(value),
        ($11.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteStudioRequest, $11.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteStudioRequest.fromBuffer(value),
        ($11.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateStudioReviewRequest, $11.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateStudioReviewRequest.fromBuffer(value),
        ($11.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListStudioReviewsRequest, $11.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListStudioReviewsRequest.fromBuffer(value),
        ($11.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteStudioReviewRequest, $11.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteStudioReviewRequest.fromBuffer(value),
        ($11.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$11.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$11.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$11.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$11.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$11.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$11.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$11.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$11.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$11.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$11.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$11.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$11.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$11.CreateStudioResponse> createStudio($grpc.ServiceCall call, $11.CreateStudioRequest request);
  $async.Future<$11.ListStudiosResponse> listStudios($grpc.ServiceCall call, $11.ListStudiosRequest request);
  $async.Future<$11.GetStudioResponse> getStudio($grpc.ServiceCall call, $11.GetStudioRequest request);
  $async.Future<$11.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $11.UpdateStudioRequest request);
  $async.Future<$11.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $11.DeleteStudioRequest request);
  $async.Future<$11.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $11.CreateStudioReviewRequest request);
  $async.Future<$11.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $11.ListStudioReviewsRequest request);
  $async.Future<$11.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $11.DeleteStudioReviewRequest request);
}
