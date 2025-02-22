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

import 'studio_service.pb.dart' as $22;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$22.CreateStudioRequest, $22.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($22.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$22.ListStudiosRequest, $22.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($22.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$22.GetStudioRequest, $22.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($22.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$22.UpdateStudioRequest, $22.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($22.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$22.DeleteStudioRequest, $22.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($22.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$22.CreateStudioResponse> createStudio($22.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$22.ListStudiosResponse> listStudios($22.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$22.GetStudioResponse> getStudio($22.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$22.UpdateStudioResponse> updateStudio($22.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$22.DeleteStudioResponse> deleteStudio($22.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$22.CreateStudioRequest, $22.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.CreateStudioRequest.fromBuffer(value),
        ($22.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.ListStudiosRequest, $22.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.ListStudiosRequest.fromBuffer(value),
        ($22.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.GetStudioRequest, $22.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetStudioRequest.fromBuffer(value),
        ($22.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.UpdateStudioRequest, $22.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.UpdateStudioRequest.fromBuffer(value),
        ($22.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.DeleteStudioRequest, $22.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.DeleteStudioRequest.fromBuffer(value),
        ($22.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$22.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$22.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$22.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$22.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$22.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$22.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$22.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$22.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$22.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$22.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$22.CreateStudioResponse> createStudio($grpc.ServiceCall call, $22.CreateStudioRequest request);
  $async.Future<$22.ListStudiosResponse> listStudios($grpc.ServiceCall call, $22.ListStudiosRequest request);
  $async.Future<$22.GetStudioResponse> getStudio($grpc.ServiceCall call, $22.GetStudioRequest request);
  $async.Future<$22.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $22.UpdateStudioRequest request);
  $async.Future<$22.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $22.DeleteStudioRequest request);
}
