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

import 'resource_service.pb.dart' as $8;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$8.CreateResourceRequest, $8.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($8.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$8.GetResourceRequest, $8.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($8.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$8.ListResourcesRequest, $8.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($8.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$8.DeleteResourceRequest, $8.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($8.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateResourceResponse> createResource($8.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetResourceResponse> getResource($8.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListResourcesResponse> listResources($8.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteResourceResponse> deleteResource($8.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateResourceRequest, $8.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateResourceRequest.fromBuffer(value),
        ($8.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetResourceRequest, $8.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetResourceRequest.fromBuffer(value),
        ($8.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListResourcesRequest, $8.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListResourcesRequest.fromBuffer(value),
        ($8.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteResourceRequest, $8.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteResourceRequest.fromBuffer(value),
        ($8.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$8.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$8.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$8.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$8.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$8.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$8.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$8.CreateResourceResponse> createResource($grpc.ServiceCall call, $8.CreateResourceRequest request);
  $async.Future<$8.GetResourceResponse> getResource($grpc.ServiceCall call, $8.GetResourceRequest request);
  $async.Future<$8.ListResourcesResponse> listResources($grpc.ServiceCall call, $8.ListResourcesRequest request);
  $async.Future<$8.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $8.DeleteResourceRequest request);
}
