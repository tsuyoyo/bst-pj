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

import 'studio_service.pb.dart' as $8;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$8.CreateStudioRequest, $8.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($8.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$8.ListStudiosRequest, $8.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($8.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$8.GetStudioRequest, $8.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($8.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$8.UpdateStudioRequest, $8.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($8.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$8.DeleteStudioRequest, $8.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($8.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$8.CreateStudioReviewRequest, $8.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($8.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$8.ListStudioReviewsRequest, $8.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($8.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$8.DeleteStudioReviewRequest, $8.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($8.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateStudioResponse> createStudio($8.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListStudiosResponse> listStudios($8.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetStudioResponse> getStudio($8.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateStudioResponse> updateStudio($8.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteStudioResponse> deleteStudio($8.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$8.CreateStudioReviewResponse> createStudioReview($8.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListStudioReviewsResponse> listStudioReviews($8.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteStudioReviewResponse> deleteStudioReview($8.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateStudioRequest, $8.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateStudioRequest.fromBuffer(value),
        ($8.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListStudiosRequest, $8.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListStudiosRequest.fromBuffer(value),
        ($8.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetStudioRequest, $8.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetStudioRequest.fromBuffer(value),
        ($8.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateStudioRequest, $8.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateStudioRequest.fromBuffer(value),
        ($8.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteStudioRequest, $8.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteStudioRequest.fromBuffer(value),
        ($8.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateStudioReviewRequest, $8.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateStudioReviewRequest.fromBuffer(value),
        ($8.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListStudioReviewsRequest, $8.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListStudioReviewsRequest.fromBuffer(value),
        ($8.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteStudioReviewRequest, $8.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteStudioReviewRequest.fromBuffer(value),
        ($8.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$8.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$8.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$8.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$8.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$8.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$8.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$8.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$8.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$8.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$8.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$8.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$8.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$8.CreateStudioResponse> createStudio($grpc.ServiceCall call, $8.CreateStudioRequest request);
  $async.Future<$8.ListStudiosResponse> listStudios($grpc.ServiceCall call, $8.ListStudiosRequest request);
  $async.Future<$8.GetStudioResponse> getStudio($grpc.ServiceCall call, $8.GetStudioRequest request);
  $async.Future<$8.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $8.UpdateStudioRequest request);
  $async.Future<$8.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $8.DeleteStudioRequest request);
  $async.Future<$8.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $8.CreateStudioReviewRequest request);
  $async.Future<$8.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $8.ListStudioReviewsRequest request);
  $async.Future<$8.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $8.DeleteStudioReviewRequest request);
}
