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

import 'studio_service.pb.dart' as $15;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$15.CreateStudioRequest, $15.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($15.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$15.ListStudiosRequest, $15.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($15.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$15.GetStudioRequest, $15.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($15.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$15.UpdateStudioRequest, $15.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($15.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$15.DeleteStudioRequest, $15.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($15.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteStudioResponse.fromBuffer(value));
  static final _$createStudioReview = $grpc.ClientMethod<$15.CreateStudioReviewRequest, $15.CreateStudioReviewResponse>(
      '/bst.v1.StudioService/CreateStudioReview',
      ($15.CreateStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateStudioReviewResponse.fromBuffer(value));
  static final _$listStudioReviews = $grpc.ClientMethod<$15.ListStudioReviewsRequest, $15.ListStudioReviewsResponse>(
      '/bst.v1.StudioService/ListStudioReviews',
      ($15.ListStudioReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListStudioReviewsResponse.fromBuffer(value));
  static final _$deleteStudioReview = $grpc.ClientMethod<$15.DeleteStudioReviewRequest, $15.DeleteStudioReviewResponse>(
      '/bst.v1.StudioService/DeleteStudioReview',
      ($15.DeleteStudioReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteStudioReviewResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateStudioResponse> createStudio($15.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListStudiosResponse> listStudios($15.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetStudioResponse> getStudio($15.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateStudioResponse> updateStudio($15.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteStudioResponse> deleteStudio($15.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }

  $grpc.ResponseFuture<$15.CreateStudioReviewResponse> createStudioReview($15.CreateStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioReview, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListStudioReviewsResponse> listStudioReviews($15.ListStudioReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioReviews, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteStudioReviewResponse> deleteStudioReview($15.DeleteStudioReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioReview, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateStudioRequest, $15.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateStudioRequest.fromBuffer(value),
        ($15.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListStudiosRequest, $15.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListStudiosRequest.fromBuffer(value),
        ($15.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetStudioRequest, $15.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetStudioRequest.fromBuffer(value),
        ($15.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateStudioRequest, $15.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateStudioRequest.fromBuffer(value),
        ($15.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteStudioRequest, $15.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteStudioRequest.fromBuffer(value),
        ($15.DeleteStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CreateStudioReviewRequest, $15.CreateStudioReviewResponse>(
        'CreateStudioReview',
        createStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateStudioReviewRequest.fromBuffer(value),
        ($15.CreateStudioReviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListStudioReviewsRequest, $15.ListStudioReviewsResponse>(
        'ListStudioReviews',
        listStudioReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListStudioReviewsRequest.fromBuffer(value),
        ($15.ListStudioReviewsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteStudioReviewRequest, $15.DeleteStudioReviewResponse>(
        'DeleteStudioReview',
        deleteStudioReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteStudioReviewRequest.fromBuffer(value),
        ($15.DeleteStudioReviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$15.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$15.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$15.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$15.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$15.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$15.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$15.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$15.CreateStudioReviewResponse> createStudioReview_Pre($grpc.ServiceCall call, $async.Future<$15.CreateStudioReviewRequest> request) async {
    return createStudioReview(call, await request);
  }

  $async.Future<$15.ListStudioReviewsResponse> listStudioReviews_Pre($grpc.ServiceCall call, $async.Future<$15.ListStudioReviewsRequest> request) async {
    return listStudioReviews(call, await request);
  }

  $async.Future<$15.DeleteStudioReviewResponse> deleteStudioReview_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteStudioReviewRequest> request) async {
    return deleteStudioReview(call, await request);
  }

  $async.Future<$15.CreateStudioResponse> createStudio($grpc.ServiceCall call, $15.CreateStudioRequest request);
  $async.Future<$15.ListStudiosResponse> listStudios($grpc.ServiceCall call, $15.ListStudiosRequest request);
  $async.Future<$15.GetStudioResponse> getStudio($grpc.ServiceCall call, $15.GetStudioRequest request);
  $async.Future<$15.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $15.UpdateStudioRequest request);
  $async.Future<$15.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $15.DeleteStudioRequest request);
  $async.Future<$15.CreateStudioReviewResponse> createStudioReview($grpc.ServiceCall call, $15.CreateStudioReviewRequest request);
  $async.Future<$15.ListStudioReviewsResponse> listStudioReviews($grpc.ServiceCall call, $15.ListStudioReviewsRequest request);
  $async.Future<$15.DeleteStudioReviewResponse> deleteStudioReview($grpc.ServiceCall call, $15.DeleteStudioReviewRequest request);
}
