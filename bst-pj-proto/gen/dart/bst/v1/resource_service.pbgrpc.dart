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

import 'resource_service.pb.dart' as $11;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$11.CreateResourceRequest, $11.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($11.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$11.GetResourceRequest, $11.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($11.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$11.ListResourcesRequest, $11.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($11.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$11.DeleteResourceRequest, $11.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($11.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateResourceResponse> createResource($11.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetResourceResponse> getResource($11.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListResourcesResponse> listResources($11.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteResourceResponse> deleteResource($11.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateResourceRequest, $11.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateResourceRequest.fromBuffer(value),
        ($11.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetResourceRequest, $11.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetResourceRequest.fromBuffer(value),
        ($11.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListResourcesRequest, $11.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListResourcesRequest.fromBuffer(value),
        ($11.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteResourceRequest, $11.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteResourceRequest.fromBuffer(value),
        ($11.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$11.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$11.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$11.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$11.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$11.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$11.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$11.CreateResourceResponse> createResource($grpc.ServiceCall call, $11.CreateResourceRequest request);
  $async.Future<$11.GetResourceResponse> getResource($grpc.ServiceCall call, $11.GetResourceRequest request);
  $async.Future<$11.ListResourcesResponse> listResources($grpc.ServiceCall call, $11.ListResourcesRequest request);
  $async.Future<$11.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $11.DeleteResourceRequest request);
}
