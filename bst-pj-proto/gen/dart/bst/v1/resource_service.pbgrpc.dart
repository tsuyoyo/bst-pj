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

import 'resource_service.pb.dart' as $12;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$12.CreateResourceRequest, $12.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($12.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$12.GetResourceRequest, $12.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($12.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$12.ListResourcesRequest, $12.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($12.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$12.DeleteResourceRequest, $12.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($12.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateResourceResponse> createResource($12.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetResourceResponse> getResource($12.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListResourcesResponse> listResources($12.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteResourceResponse> deleteResource($12.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateResourceRequest, $12.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateResourceRequest.fromBuffer(value),
        ($12.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetResourceRequest, $12.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetResourceRequest.fromBuffer(value),
        ($12.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListResourcesRequest, $12.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListResourcesRequest.fromBuffer(value),
        ($12.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteResourceRequest, $12.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteResourceRequest.fromBuffer(value),
        ($12.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$12.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$12.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$12.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$12.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$12.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$12.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$12.CreateResourceResponse> createResource($grpc.ServiceCall call, $12.CreateResourceRequest request);
  $async.Future<$12.GetResourceResponse> getResource($grpc.ServiceCall call, $12.GetResourceRequest request);
  $async.Future<$12.ListResourcesResponse> listResources($grpc.ServiceCall call, $12.ListResourcesRequest request);
  $async.Future<$12.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $12.DeleteResourceRequest request);
}
