//
//  Generated code. Do not modify.
//  source: bst/v1/resource_service.proto
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

import 'resource_service.pb.dart' as $10;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$10.CreateResourceRequest, $10.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($10.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$10.GetResourceRequest, $10.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($10.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$10.ListResourcesRequest, $10.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($10.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$10.DeleteResourceRequest, $10.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($10.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateResourceResponse> createResource($10.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetResourceResponse> getResource($10.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$10.ListResourcesResponse> listResources($10.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteResourceResponse> deleteResource($10.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateResourceRequest, $10.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateResourceRequest.fromBuffer(value),
        ($10.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetResourceRequest, $10.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetResourceRequest.fromBuffer(value),
        ($10.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListResourcesRequest, $10.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ListResourcesRequest.fromBuffer(value),
        ($10.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteResourceRequest, $10.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteResourceRequest.fromBuffer(value),
        ($10.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$10.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$10.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$10.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$10.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$10.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$10.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$10.CreateResourceResponse> createResource($grpc.ServiceCall call, $10.CreateResourceRequest request);
  $async.Future<$10.GetResourceResponse> getResource($grpc.ServiceCall call, $10.GetResourceRequest request);
  $async.Future<$10.ListResourcesResponse> listResources($grpc.ServiceCall call, $10.ListResourcesRequest request);
  $async.Future<$10.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $10.DeleteResourceRequest request);
}
