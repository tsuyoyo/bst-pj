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

import 'resource_service.pb.dart' as $13;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$13.CreateResourceRequest, $13.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($13.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$13.GetResourceRequest, $13.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($13.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$13.ListResourcesRequest, $13.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($13.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$13.DeleteResourceRequest, $13.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($13.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateResourceResponse> createResource($13.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetResourceResponse> getResource($13.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListResourcesResponse> listResources($13.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteResourceResponse> deleteResource($13.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateResourceRequest, $13.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateResourceRequest.fromBuffer(value),
        ($13.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetResourceRequest, $13.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetResourceRequest.fromBuffer(value),
        ($13.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListResourcesRequest, $13.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListResourcesRequest.fromBuffer(value),
        ($13.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteResourceRequest, $13.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteResourceRequest.fromBuffer(value),
        ($13.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$13.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$13.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$13.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$13.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$13.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$13.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$13.CreateResourceResponse> createResource($grpc.ServiceCall call, $13.CreateResourceRequest request);
  $async.Future<$13.GetResourceResponse> getResource($grpc.ServiceCall call, $13.GetResourceRequest request);
  $async.Future<$13.ListResourcesResponse> listResources($grpc.ServiceCall call, $13.ListResourcesRequest request);
  $async.Future<$13.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $13.DeleteResourceRequest request);
}
