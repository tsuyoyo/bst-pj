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

import 'studio_service.pb.dart' as $26;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$26.CreateStudioRequest, $26.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($26.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$26.ListStudiosRequest, $26.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($26.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$26.GetStudioRequest, $26.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($26.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$26.UpdateStudioRequest, $26.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($26.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$26.DeleteStudioRequest, $26.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($26.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$26.CreateStudioResponse> createStudio($26.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$26.ListStudiosResponse> listStudios($26.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$26.GetStudioResponse> getStudio($26.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$26.UpdateStudioResponse> updateStudio($26.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$26.DeleteStudioResponse> deleteStudio($26.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$26.CreateStudioRequest, $26.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.CreateStudioRequest.fromBuffer(value),
        ($26.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.ListStudiosRequest, $26.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.ListStudiosRequest.fromBuffer(value),
        ($26.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.GetStudioRequest, $26.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.GetStudioRequest.fromBuffer(value),
        ($26.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.UpdateStudioRequest, $26.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.UpdateStudioRequest.fromBuffer(value),
        ($26.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.DeleteStudioRequest, $26.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.DeleteStudioRequest.fromBuffer(value),
        ($26.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$26.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$26.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$26.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$26.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$26.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$26.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$26.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$26.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$26.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$26.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$26.CreateStudioResponse> createStudio($grpc.ServiceCall call, $26.CreateStudioRequest request);
  $async.Future<$26.ListStudiosResponse> listStudios($grpc.ServiceCall call, $26.ListStudiosRequest request);
  $async.Future<$26.GetStudioResponse> getStudio($grpc.ServiceCall call, $26.GetStudioRequest request);
  $async.Future<$26.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $26.UpdateStudioRequest request);
  $async.Future<$26.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $26.DeleteStudioRequest request);
}
