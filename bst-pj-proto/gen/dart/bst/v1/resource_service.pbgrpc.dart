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

import 'resource_service.pb.dart' as $5;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$5.CreateResourceRequest, $5.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($5.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$5.GetResourceRequest, $5.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($5.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$5.ListResourcesRequest, $5.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($5.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$5.DeleteResourceRequest, $5.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($5.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateResourceResponse> createResource($5.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetResourceResponse> getResource($5.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListResourcesResponse> listResources($5.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteResourceResponse> deleteResource($5.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateResourceRequest, $5.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateResourceRequest.fromBuffer(value),
        ($5.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetResourceRequest, $5.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetResourceRequest.fromBuffer(value),
        ($5.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListResourcesRequest, $5.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListResourcesRequest.fromBuffer(value),
        ($5.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteResourceRequest, $5.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteResourceRequest.fromBuffer(value),
        ($5.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$5.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$5.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$5.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$5.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$5.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$5.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$5.CreateResourceResponse> createResource($grpc.ServiceCall call, $5.CreateResourceRequest request);
  $async.Future<$5.GetResourceResponse> getResource($grpc.ServiceCall call, $5.GetResourceRequest request);
  $async.Future<$5.ListResourcesResponse> listResources($grpc.ServiceCall call, $5.ListResourcesRequest request);
  $async.Future<$5.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $5.DeleteResourceRequest request);
}
