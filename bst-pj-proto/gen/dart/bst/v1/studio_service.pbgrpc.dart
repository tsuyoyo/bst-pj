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

import 'studio_service.pb.dart' as $20;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$20.CreateStudioRequest, $20.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($20.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$20.ListStudiosRequest, $20.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($20.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$20.GetStudioRequest, $20.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($20.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$20.UpdateStudioRequest, $20.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($20.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$20.DeleteStudioRequest, $20.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($20.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$20.CreateStudioResponse> createStudio($20.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$20.ListStudiosResponse> listStudios($20.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$20.GetStudioResponse> getStudio($20.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$20.UpdateStudioResponse> updateStudio($20.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$20.DeleteStudioResponse> deleteStudio($20.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.CreateStudioRequest, $20.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.CreateStudioRequest.fromBuffer(value),
        ($20.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.ListStudiosRequest, $20.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.ListStudiosRequest.fromBuffer(value),
        ($20.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetStudioRequest, $20.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.GetStudioRequest.fromBuffer(value),
        ($20.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.UpdateStudioRequest, $20.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.UpdateStudioRequest.fromBuffer(value),
        ($20.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.DeleteStudioRequest, $20.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.DeleteStudioRequest.fromBuffer(value),
        ($20.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$20.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$20.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$20.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$20.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$20.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$20.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$20.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$20.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$20.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$20.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$20.CreateStudioResponse> createStudio($grpc.ServiceCall call, $20.CreateStudioRequest request);
  $async.Future<$20.ListStudiosResponse> listStudios($grpc.ServiceCall call, $20.ListStudiosRequest request);
  $async.Future<$20.GetStudioResponse> getStudio($grpc.ServiceCall call, $20.GetStudioRequest request);
  $async.Future<$20.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $20.UpdateStudioRequest request);
  $async.Future<$20.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $20.DeleteStudioRequest request);
}
