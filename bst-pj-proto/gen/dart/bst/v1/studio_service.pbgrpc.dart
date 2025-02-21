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

import 'studio_service.pb.dart' as $19;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$19.CreateStudioRequest, $19.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($19.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$19.ListStudiosRequest, $19.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($19.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$19.GetStudioRequest, $19.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($19.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$19.UpdateStudioRequest, $19.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($19.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$19.DeleteStudioRequest, $19.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($19.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$19.CreateStudioResponse> createStudio($19.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$19.ListStudiosResponse> listStudios($19.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$19.GetStudioResponse> getStudio($19.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateStudioResponse> updateStudio($19.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$19.DeleteStudioResponse> deleteStudio($19.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.CreateStudioRequest, $19.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CreateStudioRequest.fromBuffer(value),
        ($19.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ListStudiosRequest, $19.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ListStudiosRequest.fromBuffer(value),
        ($19.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.GetStudioRequest, $19.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.GetStudioRequest.fromBuffer(value),
        ($19.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateStudioRequest, $19.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateStudioRequest.fromBuffer(value),
        ($19.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.DeleteStudioRequest, $19.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.DeleteStudioRequest.fromBuffer(value),
        ($19.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$19.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$19.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$19.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$19.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$19.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$19.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$19.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$19.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$19.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$19.CreateStudioResponse> createStudio($grpc.ServiceCall call, $19.CreateStudioRequest request);
  $async.Future<$19.ListStudiosResponse> listStudios($grpc.ServiceCall call, $19.ListStudiosRequest request);
  $async.Future<$19.GetStudioResponse> getStudio($grpc.ServiceCall call, $19.GetStudioRequest request);
  $async.Future<$19.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $19.UpdateStudioRequest request);
  $async.Future<$19.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $19.DeleteStudioRequest request);
}
