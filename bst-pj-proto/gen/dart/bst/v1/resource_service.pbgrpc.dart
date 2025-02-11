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

import 'resource_service.pb.dart' as $4;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$4.CreateResourceRequest, $4.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($4.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$4.GetResourceRequest, $4.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($4.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$4.ListResourcesRequest, $4.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($4.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$4.DeleteResourceRequest, $4.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($4.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateResourceResponse> createResource($4.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetResourceResponse> getResource($4.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListResourcesResponse> listResources($4.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteResourceResponse> deleteResource($4.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateResourceRequest, $4.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateResourceRequest.fromBuffer(value),
        ($4.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetResourceRequest, $4.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetResourceRequest.fromBuffer(value),
        ($4.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListResourcesRequest, $4.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListResourcesRequest.fromBuffer(value),
        ($4.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteResourceRequest, $4.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteResourceRequest.fromBuffer(value),
        ($4.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$4.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$4.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$4.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$4.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$4.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$4.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$4.CreateResourceResponse> createResource($grpc.ServiceCall call, $4.CreateResourceRequest request);
  $async.Future<$4.GetResourceResponse> getResource($grpc.ServiceCall call, $4.GetResourceRequest request);
  $async.Future<$4.ListResourcesResponse> listResources($grpc.ServiceCall call, $4.ListResourcesRequest request);
  $async.Future<$4.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $4.DeleteResourceRequest request);
}
