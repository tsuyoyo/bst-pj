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

import 'studio_service.pb.dart' as $6;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$6.CreateStudioRequest, $6.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($6.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$6.ListStudiosRequest, $6.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($6.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$6.GetStudioRequest, $6.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($6.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$6.UpdateStudioRequest, $6.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($6.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$6.DeleteStudioRequest, $6.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($6.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$6.CreateStudioReviewRequest, $6.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($6.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$6.ListStudioReviewsRequest, $6.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($6.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$6.DeleteStudioReviewRequest, $6.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($6.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateStudioResponse> createStudio($6.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListStudiosResponse> listStudios($6.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetStudioResponse> getStudio($6.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateStudioResponse> updateStudio($6.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteStudioResponse> deleteStudio($6.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateStudioReviewResponse> createStudioReview($6.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListStudioReviewsResponse> listStudioReviews($6.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteStudioReviewResponse> deleteStudioReview($6.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateStudioRequest, $6.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateStudioRequest.fromBuffer(value),
        ($6.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListStudiosRequest, $6.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListStudiosRequest.fromBuffer(value),
        ($6.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetStudioRequest, $6.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetStudioRequest.fromBuffer(value),
        ($6.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateStudioRequest, $6.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateStudioRequest.fromBuffer(value),
        ($6.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteStudioRequest, $6.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteStudioRequest.fromBuffer(value),
        ($6.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateStudioReviewRequest, $6.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateStudioReviewRequest.fromBuffer(value),
        ($6.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListStudioReviewsRequest, $6.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListStudioReviewsRequest.fromBuffer(value),
        ($6.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteStudioReviewRequest, $6.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteStudioReviewRequest.fromBuffer(value),
        ($6.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$6.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$6.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$6.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$6.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$6.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$6.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$6.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$6.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$6.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$6.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$6.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$6.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$6.CreateStudioResponse> createStudio($grpc.ServiceCall call, $6.CreateStudioRequest request);
  $async.Future<$6.ListStudiosResponse> listStudios($grpc.ServiceCall call, $6.ListStudiosRequest request);
  $async.Future<$6.GetStudioResponse> getStudio($grpc.ServiceCall call, $6.GetStudioRequest request);
  $async.Future<$6.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $6.UpdateStudioRequest request);
  $async.Future<$6.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $6.DeleteStudioRequest request);
  $async.Future<$6.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $6.CreateStudioReviewRequest request);
  $async.Future<$6.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $6.ListStudioReviewsRequest request);
  $async.Future<$6.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $6.DeleteStudioReviewRequest request);
}
