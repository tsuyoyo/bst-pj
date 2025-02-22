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

import 'studio_service.pb.dart' as $21;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$21.CreateStudioRequest, $21.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($21.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$21.ListStudiosRequest, $21.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($21.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$21.GetStudioRequest, $21.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($21.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$21.UpdateStudioRequest, $21.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($21.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$21.DeleteStudioRequest, $21.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($21.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$21.CreateStudioResponse> createStudio($21.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$21.ListStudiosResponse> listStudios($21.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$21.GetStudioResponse> getStudio($21.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$21.UpdateStudioResponse> updateStudio($21.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$21.DeleteStudioResponse> deleteStudio($21.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.CreateStudioRequest, $21.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.CreateStudioRequest.fromBuffer(value),
        ($21.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.ListStudiosRequest, $21.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.ListStudiosRequest.fromBuffer(value),
        ($21.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.GetStudioRequest, $21.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.GetStudioRequest.fromBuffer(value),
        ($21.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.UpdateStudioRequest, $21.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.UpdateStudioRequest.fromBuffer(value),
        ($21.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.DeleteStudioRequest, $21.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.DeleteStudioRequest.fromBuffer(value),
        ($21.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$21.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$21.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$21.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$21.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$21.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$21.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$21.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$21.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$21.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$21.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$21.CreateStudioResponse> createStudio($grpc.ServiceCall call, $21.CreateStudioRequest request);
  $async.Future<$21.ListStudiosResponse> listStudios($grpc.ServiceCall call, $21.ListStudiosRequest request);
  $async.Future<$21.GetStudioResponse> getStudio($grpc.ServiceCall call, $21.GetStudioRequest request);
  $async.Future<$21.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $21.UpdateStudioRequest request);
  $async.Future<$21.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $21.DeleteStudioRequest request);
}
