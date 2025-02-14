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

import 'studio_service.pb.dart' as $13;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$13.CreateStudioRequest, $13.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($13.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$13.ListStudiosRequest, $13.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($13.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$13.GetStudioRequest, $13.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($13.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$13.UpdateStudioRequest, $13.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($13.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$13.DeleteStudioRequest, $13.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($13.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$13.CreateStudioReviewRequest, $13.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($13.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$13.ListStudioReviewsRequest, $13.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($13.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$13.DeleteStudioReviewRequest, $13.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($13.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateStudioResponse> createStudio($13.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListStudiosResponse> listStudios($13.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetStudioResponse> getStudio($13.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateStudioResponse> updateStudio($13.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteStudioResponse> deleteStudio($13.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateStudioReviewResponse> createStudioReview($13.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListStudioReviewsResponse> listStudioReviews($13.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteStudioReviewResponse> deleteStudioReview($13.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateStudioRequest, $13.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateStudioRequest.fromBuffer(value),
        ($13.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListStudiosRequest, $13.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListStudiosRequest.fromBuffer(value),
        ($13.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetStudioRequest, $13.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetStudioRequest.fromBuffer(value),
        ($13.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateStudioRequest, $13.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateStudioRequest.fromBuffer(value),
        ($13.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteStudioRequest, $13.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteStudioRequest.fromBuffer(value),
        ($13.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateStudioReviewRequest, $13.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateStudioReviewRequest.fromBuffer(value),
        ($13.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListStudioReviewsRequest, $13.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListStudioReviewsRequest.fromBuffer(value),
        ($13.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteStudioReviewRequest, $13.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteStudioReviewRequest.fromBuffer(value),
        ($13.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$13.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$13.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$13.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$13.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$13.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$13.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$13.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$13.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$13.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$13.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$13.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$13.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$13.CreateStudioResponse> createStudio($grpc.ServiceCall call, $13.CreateStudioRequest request);
  $async.Future<$13.ListStudiosResponse> listStudios($grpc.ServiceCall call, $13.ListStudiosRequest request);
  $async.Future<$13.GetStudioResponse> getStudio($grpc.ServiceCall call, $13.GetStudioRequest request);
  $async.Future<$13.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $13.UpdateStudioRequest request);
  $async.Future<$13.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $13.DeleteStudioRequest request);
  $async.Future<$13.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $13.CreateStudioReviewRequest request);
  $async.Future<$13.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $13.ListStudioReviewsRequest request);
  $async.Future<$13.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $13.DeleteStudioReviewRequest request);
}
