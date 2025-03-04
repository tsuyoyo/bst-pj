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

import 'resource_service.pb.dart' as $14;

export 'resource_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$createResource = $grpc.ClientMethod<$14.CreateResourceRequest, $14.CreateResourceResponse>(
      '/bst.v1.ResourceService/CreateResource',
      ($14.CreateResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateResourceResponse.fromBuffer(value));
  static final _$getResource = $grpc.ClientMethod<$14.GetResourceRequest, $14.GetResourceResponse>(
      '/bst.v1.ResourceService/GetResource',
      ($14.GetResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetResourceResponse.fromBuffer(value));
  static final _$listResources = $grpc.ClientMethod<$14.ListResourcesRequest, $14.ListResourcesResponse>(
      '/bst.v1.ResourceService/ListResources',
      ($14.ListResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListResourcesResponse.fromBuffer(value));
  static final _$deleteResource = $grpc.ClientMethod<$14.DeleteResourceRequest, $14.DeleteResourceResponse>(
      '/bst.v1.ResourceService/DeleteResource',
      ($14.DeleteResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteResourceResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateResourceResponse> createResource($14.CreateResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResource, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetResourceResponse> getResource($14.GetResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResource, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListResourcesResponse> listResources($14.ListResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResources, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteResourceResponse> deleteResource($14.DeleteResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateResourceRequest, $14.CreateResourceResponse>(
        'CreateResource',
        createResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateResourceRequest.fromBuffer(value),
        ($14.CreateResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetResourceRequest, $14.GetResourceResponse>(
        'GetResource',
        getResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetResourceRequest.fromBuffer(value),
        ($14.GetResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListResourcesRequest, $14.ListResourcesResponse>(
        'ListResources',
        listResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListResourcesRequest.fromBuffer(value),
        ($14.ListResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteResourceRequest, $14.DeleteResourceResponse>(
        'DeleteResource',
        deleteResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteResourceRequest.fromBuffer(value),
        ($14.DeleteResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateResourceResponse> createResource_Pre($grpc.ServiceCall call, $async.Future<$14.CreateResourceRequest> request) async {
    return createResource(call, await request);
  }

  $async.Future<$14.GetResourceResponse> getResource_Pre($grpc.ServiceCall call, $async.Future<$14.GetResourceRequest> request) async {
    return getResource(call, await request);
  }

  $async.Future<$14.ListResourcesResponse> listResources_Pre($grpc.ServiceCall call, $async.Future<$14.ListResourcesRequest> request) async {
    return listResources(call, await request);
  }

  $async.Future<$14.DeleteResourceResponse> deleteResource_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteResourceRequest> request) async {
    return deleteResource(call, await request);
  }

  $async.Future<$14.CreateResourceResponse> createResource($grpc.ServiceCall call, $14.CreateResourceRequest request);
  $async.Future<$14.GetResourceResponse> getResource($grpc.ServiceCall call, $14.GetResourceRequest request);
  $async.Future<$14.ListResourcesResponse> listResources($grpc.ServiceCall call, $14.ListResourcesRequest request);
  $async.Future<$14.DeleteResourceResponse> deleteResource($grpc.ServiceCall call, $14.DeleteResourceRequest request);
}
