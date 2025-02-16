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

import 'studio_service.pb.dart' as $17;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$17.CreateStudioRequest, $17.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($17.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$17.ListStudiosRequest, $17.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($17.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$17.GetStudioRequest, $17.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($17.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$17.UpdateStudioRequest, $17.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($17.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$17.DeleteStudioRequest, $17.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($17.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.CreateStudioResponse> createStudio($17.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$17.ListStudiosResponse> listStudios($17.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetStudioResponse> getStudio($17.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateStudioResponse> updateStudio($17.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteStudioResponse> deleteStudio($17.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.CreateStudioRequest, $17.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.CreateStudioRequest.fromBuffer(value),
        ($17.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.ListStudiosRequest, $17.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ListStudiosRequest.fromBuffer(value),
        ($17.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetStudioRequest, $17.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetStudioRequest.fromBuffer(value),
        ($17.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateStudioRequest, $17.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateStudioRequest.fromBuffer(value),
        ($17.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteStudioRequest, $17.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteStudioRequest.fromBuffer(value),
        ($17.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$17.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$17.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$17.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$17.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$17.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$17.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$17.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$17.CreateStudioResponse> createStudio($grpc.ServiceCall call, $17.CreateStudioRequest request);
  $async.Future<$17.ListStudiosResponse> listStudios($grpc.ServiceCall call, $17.ListStudiosRequest request);
  $async.Future<$17.GetStudioResponse> getStudio($grpc.ServiceCall call, $17.GetStudioRequest request);
  $async.Future<$17.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $17.UpdateStudioRequest request);
  $async.Future<$17.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $17.DeleteStudioRequest request);
}
