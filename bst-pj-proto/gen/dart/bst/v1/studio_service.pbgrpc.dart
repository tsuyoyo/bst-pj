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

import 'studio_service.pb.dart' as $4;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$4.CreateStudioRequest, $4.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($4.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$4.ListStudiosRequest, $4.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($4.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$4.GetStudioRequest, $4.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($4.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$4.UpdateStudioRequest, $4.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($4.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$4.DeleteStudioRequest, $4.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($4.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$4.CreateStudioReviewRequest, $4.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($4.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$4.ListStudioReviewsRequest, $4.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($4.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$4.DeleteStudioReviewRequest, $4.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($4.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateStudioResponse> createStudio($4.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListStudiosResponse> listStudios($4.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetStudioResponse> getStudio($4.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateStudioResponse> updateStudio($4.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteStudioResponse> deleteStudio($4.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateStudioReviewResponse> createStudioReview($4.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListStudioReviewsResponse> listStudioReviews($4.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteStudioReviewResponse> deleteStudioReview($4.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateStudioRequest, $4.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateStudioRequest.fromBuffer(value),
        ($4.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListStudiosRequest, $4.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListStudiosRequest.fromBuffer(value),
        ($4.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetStudioRequest, $4.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetStudioRequest.fromBuffer(value),
        ($4.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateStudioRequest, $4.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateStudioRequest.fromBuffer(value),
        ($4.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteStudioRequest, $4.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteStudioRequest.fromBuffer(value),
        ($4.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateStudioReviewRequest, $4.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateStudioReviewRequest.fromBuffer(value),
        ($4.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListStudioReviewsRequest, $4.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListStudioReviewsRequest.fromBuffer(value),
        ($4.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteStudioReviewRequest, $4.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteStudioReviewRequest.fromBuffer(value),
        ($4.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$4.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$4.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$4.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$4.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$4.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$4.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$4.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$4.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$4.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$4.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$4.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$4.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$4.CreateStudioResponse> createStudio($grpc.ServiceCall call, $4.CreateStudioRequest request);
  $async.Future<$4.ListStudiosResponse> listStudios($grpc.ServiceCall call, $4.ListStudiosRequest request);
  $async.Future<$4.GetStudioResponse> getStudio($grpc.ServiceCall call, $4.GetStudioRequest request);
  $async.Future<$4.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $4.UpdateStudioRequest request);
  $async.Future<$4.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $4.DeleteStudioRequest request);
  $async.Future<$4.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $4.CreateStudioReviewRequest request);
  $async.Future<$4.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $4.ListStudioReviewsRequest request);
  $async.Future<$4.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $4.DeleteStudioReviewRequest request);
}
