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

import 'studio_service.pb.dart' as $25;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$25.CreateStudioRequest, $25.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($25.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$25.ListStudiosRequest, $25.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($25.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$25.GetStudioRequest, $25.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($25.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$25.UpdateStudioRequest, $25.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($25.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$25.DeleteStudioRequest, $25.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($25.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$25.CreateStudioResponse> createStudio($25.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$25.ListStudiosResponse> listStudios($25.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$25.GetStudioResponse> getStudio($25.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$25.UpdateStudioResponse> updateStudio($25.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$25.DeleteStudioResponse> deleteStudio($25.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$25.CreateStudioRequest, $25.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.CreateStudioRequest.fromBuffer(value),
        ($25.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.ListStudiosRequest, $25.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.ListStudiosRequest.fromBuffer(value),
        ($25.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.GetStudioRequest, $25.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.GetStudioRequest.fromBuffer(value),
        ($25.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.UpdateStudioRequest, $25.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.UpdateStudioRequest.fromBuffer(value),
        ($25.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.DeleteStudioRequest, $25.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.DeleteStudioRequest.fromBuffer(value),
        ($25.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$25.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$25.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$25.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$25.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$25.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$25.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$25.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$25.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$25.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$25.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$25.CreateStudioResponse> createStudio($grpc.ServiceCall call, $25.CreateStudioRequest request);
  $async.Future<$25.ListStudiosResponse> listStudios($grpc.ServiceCall call, $25.ListStudiosRequest request);
  $async.Future<$25.GetStudioResponse> getStudio($grpc.ServiceCall call, $25.GetStudioRequest request);
  $async.Future<$25.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $25.UpdateStudioRequest request);
  $async.Future<$25.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $25.DeleteStudioRequest request);
}
