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

import 'studio_service.pb.dart' as $18;

export 'studio_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioService')
class StudioServiceClient extends $grpc.Client {
  static final _$createStudio = $grpc.ClientMethod<$18.CreateStudioRequest, $18.CreateStudioResponse>(
      '/bst.v1.StudioService/CreateStudio',
      ($18.CreateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateStudioResponse.fromBuffer(value));
  static final _$listStudios = $grpc.ClientMethod<$18.ListStudiosRequest, $18.ListStudiosResponse>(
      '/bst.v1.StudioService/ListStudios',
      ($18.ListStudiosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListStudiosResponse.fromBuffer(value));
  static final _$getStudio = $grpc.ClientMethod<$18.GetStudioRequest, $18.GetStudioResponse>(
      '/bst.v1.StudioService/GetStudio',
      ($18.GetStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetStudioResponse.fromBuffer(value));
  static final _$updateStudio = $grpc.ClientMethod<$18.UpdateStudioRequest, $18.UpdateStudioResponse>(
      '/bst.v1.StudioService/UpdateStudio',
      ($18.UpdateStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateStudioResponse.fromBuffer(value));
  static final _$deleteStudio = $grpc.ClientMethod<$18.DeleteStudioRequest, $18.DeleteStudioResponse>(
      '/bst.v1.StudioService/DeleteStudio',
      ($18.DeleteStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteStudioResponse.fromBuffer(value));

  StudioServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.CreateStudioResponse> createStudio($18.CreateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudio, request, options: options);
  }

  $grpc.ResponseFuture<$18.ListStudiosResponse> listStudios($18.ListStudiosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudios, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetStudioResponse> getStudio($18.GetStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStudio, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateStudioResponse> updateStudio($18.UpdateStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudio, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteStudioResponse> deleteStudio($18.DeleteStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudio, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioService')
abstract class StudioServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioService';

  StudioServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.CreateStudioRequest, $18.CreateStudioResponse>(
        'CreateStudio',
        createStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateStudioRequest.fromBuffer(value),
        ($18.CreateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ListStudiosRequest, $18.ListStudiosResponse>(
        'ListStudios',
        listStudios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListStudiosRequest.fromBuffer(value),
        ($18.ListStudiosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetStudioRequest, $18.GetStudioResponse>(
        'GetStudio',
        getStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetStudioRequest.fromBuffer(value),
        ($18.GetStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateStudioRequest, $18.UpdateStudioResponse>(
        'UpdateStudio',
        updateStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateStudioRequest.fromBuffer(value),
        ($18.UpdateStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteStudioRequest, $18.DeleteStudioResponse>(
        'DeleteStudio',
        deleteStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteStudioRequest.fromBuffer(value),
        ($18.DeleteStudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.CreateStudioResponse> createStudio_Pre($grpc.ServiceCall call, $async.Future<$18.CreateStudioRequest> request) async {
    return createStudio(call, await request);
  }

  $async.Future<$18.ListStudiosResponse> listStudios_Pre($grpc.ServiceCall call, $async.Future<$18.ListStudiosRequest> request) async {
    return listStudios(call, await request);
  }

  $async.Future<$18.GetStudioResponse> getStudio_Pre($grpc.ServiceCall call, $async.Future<$18.GetStudioRequest> request) async {
    return getStudio(call, await request);
  }

  $async.Future<$18.UpdateStudioResponse> updateStudio_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateStudioRequest> request) async {
    return updateStudio(call, await request);
  }

  $async.Future<$18.DeleteStudioResponse> deleteStudio_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteStudioRequest> request) async {
    return deleteStudio(call, await request);
  }

  $async.Future<$18.CreateStudioResponse> createStudio($grpc.ServiceCall call, $18.CreateStudioRequest request);
  $async.Future<$18.ListStudiosResponse> listStudios($grpc.ServiceCall call, $18.ListStudiosRequest request);
  $async.Future<$18.GetStudioResponse> getStudio($grpc.ServiceCall call, $18.GetStudioRequest request);
  $async.Future<$18.UpdateStudioResponse> updateStudio($grpc.ServiceCall call, $18.UpdateStudioRequest request);
  $async.Future<$18.DeleteStudioResponse> deleteStudio($grpc.ServiceCall call, $18.DeleteStudioRequest request);
}
