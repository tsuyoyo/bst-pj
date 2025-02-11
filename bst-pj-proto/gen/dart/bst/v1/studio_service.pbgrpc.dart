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

import 'studio_service.pb.dart' as $7;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$7.CreateStudioRequest, $7.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($7.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$7.ListStudiosRequest, $7.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($7.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$7.GetStudioRequest, $7.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($7.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$7.UpdateStudioRequest, $7.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($7.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$7.DeleteStudioRequest, $7.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($7.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$7.CreateStudioReviewRequest, $7.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($7.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$7.ListStudioReviewsRequest, $7.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($7.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$7.DeleteStudioReviewRequest, $7.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($7.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateStudioResponse> createStudio($7.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListStudiosResponse> listStudios($7.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetStudioResponse> getStudio($7.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateStudioResponse> updateStudio($7.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteStudioResponse> deleteStudio($7.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateStudioReviewResponse> createStudioReview($7.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListStudioReviewsResponse> listStudioReviews($7.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteStudioReviewResponse> deleteStudioReview($7.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateStudioRequest, $7.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateStudioRequest.fromBuffer(value),
        ($7.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListStudiosRequest, $7.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListStudiosRequest.fromBuffer(value),
        ($7.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetStudioRequest, $7.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetStudioRequest.fromBuffer(value),
        ($7.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateStudioRequest, $7.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateStudioRequest.fromBuffer(value),
        ($7.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteStudioRequest, $7.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteStudioRequest.fromBuffer(value),
        ($7.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateStudioReviewRequest, $7.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateStudioReviewRequest.fromBuffer(value),
        ($7.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListStudioReviewsRequest, $7.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListStudioReviewsRequest.fromBuffer(value),
        ($7.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteStudioReviewRequest, $7.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteStudioReviewRequest.fromBuffer(value),
        ($7.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$7.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$7.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$7.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$7.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$7.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$7.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$7.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$7.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$7.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$7.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$7.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$7.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$7.CreateStudioResponse> createStudio($grpc.ServiceCall call, $7.CreateStudioRequest request);
  $async.Future<$7.ListStudiosResponse> listStudios($grpc.ServiceCall call, $7.ListStudiosRequest request);
  $async.Future<$7.GetStudioResponse> getStudio($grpc.ServiceCall call, $7.GetStudioRequest request);
  $async.Future<$7.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $7.UpdateStudioRequest request);
  $async.Future<$7.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $7.DeleteStudioRequest request);
  $async.Future<$7.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $7.CreateStudioReviewRequest request);
  $async.Future<$7.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $7.ListStudioReviewsRequest request);
  $async.Future<$7.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $7.DeleteStudioReviewRequest request);
}
