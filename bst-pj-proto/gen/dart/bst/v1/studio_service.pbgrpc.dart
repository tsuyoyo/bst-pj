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

import 'studio_service.pb.dart' as $14;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$14.CreateStudioRequest, $14.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($14.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$14.ListStudiosRequest, $14.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($14.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$14.GetStudioRequest, $14.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($14.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$14.UpdateStudioRequest, $14.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($14.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$14.DeleteStudioRequest, $14.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($14.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$14.CreateStudioReviewRequest, $14.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($14.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$14.ListStudioReviewsRequest, $14.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($14.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$14.DeleteStudioReviewRequest, $14.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($14.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateStudioResponse> createStudio($14.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListStudiosResponse> listStudios($14.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetStudioResponse> getStudio($14.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateStudioResponse> updateStudio($14.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteStudioResponse> deleteStudio($14.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$14.CreateStudioReviewResponse> createStudioReview($14.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListStudioReviewsResponse> listStudioReviews($14.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteStudioReviewResponse> deleteStudioReview($14.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateStudioRequest, $14.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateStudioRequest.fromBuffer(value),
        ($14.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListStudiosRequest, $14.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListStudiosRequest.fromBuffer(value),
        ($14.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetStudioRequest, $14.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetStudioRequest.fromBuffer(value),
        ($14.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateStudioRequest, $14.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateStudioRequest.fromBuffer(value),
        ($14.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteStudioRequest, $14.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteStudioRequest.fromBuffer(value),
        ($14.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.CreateStudioReviewRequest, $14.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateStudioReviewRequest.fromBuffer(value),
        ($14.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListStudioReviewsRequest, $14.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListStudioReviewsRequest.fromBuffer(value),
        ($14.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteStudioReviewRequest, $14.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteStudioReviewRequest.fromBuffer(value),
        ($14.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$14.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$14.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$14.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$14.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$14.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$14.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$14.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$14.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$14.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$14.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$14.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$14.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$14.CreateStudioResponse> createStudio($grpc.ServiceCall call, $14.CreateStudioRequest request);
  $async.Future<$14.ListStudiosResponse> listStudios($grpc.ServiceCall call, $14.ListStudiosRequest request);
  $async.Future<$14.GetStudioResponse> getStudio($grpc.ServiceCall call, $14.GetStudioRequest request);
  $async.Future<$14.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $14.UpdateStudioRequest request);
  $async.Future<$14.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $14.DeleteStudioRequest request);
  $async.Future<$14.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $14.CreateStudioReviewRequest request);
  $async.Future<$14.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $14.ListStudioReviewsRequest request);
  $async.Future<$14.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $14.DeleteStudioReviewRequest request);
}
