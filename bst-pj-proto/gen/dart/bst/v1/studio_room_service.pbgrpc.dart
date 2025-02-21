//
//  Generated code. Do not modify.
//  source: bst/v1/studio_room_service.proto
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

import 'studio_room_service.pb.dart' as $18;

export 'studio_room_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
class StudioRoomServiceClient extends $grpc.Client {
  static final _$createStudioRoom = $grpc.ClientMethod<$18.CreateStudioRoomRequest, $18.CreateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoom',
      ($18.CreateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateStudioRoomResponse.fromBuffer(value));
  static final _$listStudioRooms = $grpc.ClientMethod<$18.ListStudioRoomsRequest, $18.ListStudioRoomsResponse>(
      '/bst.v1.StudioRoomService/ListStudioRooms',
      ($18.ListStudioRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListStudioRoomsResponse.fromBuffer(value));
  static final _$updateStudioRoom = $grpc.ClientMethod<$18.UpdateStudioRoomRequest, $18.UpdateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoom',
      ($18.UpdateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateStudioRoomResponse.fromBuffer(value));
  static final _$deleteStudioRoom = $grpc.ClientMethod<$18.DeleteStudioRoomRequest, $18.DeleteStudioRoomResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoom',
      ($18.DeleteStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteStudioRoomResponse.fromBuffer(value));
  static final _$createStudioRoomInfo = $grpc.ClientMethod<$18.CreateStudioRoomInfoRequest, $18.CreateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoomInfo',
      ($18.CreateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateStudioRoomInfoResponse.fromBuffer(value));
  static final _$listStudioRoomInfos = $grpc.ClientMethod<$18.ListStudioRoomInfosRequest, $18.ListStudioRoomInfosResponse>(
      '/bst.v1.StudioRoomService/ListStudioRoomInfos',
      ($18.ListStudioRoomInfosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListStudioRoomInfosResponse.fromBuffer(value));
  static final _$updateStudioRoomInfo = $grpc.ClientMethod<$18.UpdateStudioRoomInfoRequest, $18.UpdateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoomInfo',
      ($18.UpdateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateStudioRoomInfoResponse.fromBuffer(value));
  static final _$deleteStudioRoomInfo = $grpc.ClientMethod<$18.DeleteStudioRoomInfoRequest, $18.DeleteStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoomInfo',
      ($18.DeleteStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteStudioRoomInfoResponse.fromBuffer(value));

  StudioRoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.CreateStudioRoomResponse> createStudioRoom($18.CreateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$18.ListStudioRoomsResponse> listStudioRooms($18.ListStudioRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRooms, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateStudioRoomResponse> updateStudioRoom($18.UpdateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteStudioRoomResponse> deleteStudioRoom($18.DeleteStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$18.CreateStudioRoomInfoResponse> createStudioRoomInfo($18.CreateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$18.ListStudioRoomInfosResponse> listStudioRoomInfos($18.ListStudioRoomInfosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRoomInfos, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($18.UpdateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($18.DeleteStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoomInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
abstract class StudioRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioRoomService';

  StudioRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.CreateStudioRoomRequest, $18.CreateStudioRoomResponse>(
        'CreateStudioRoom',
        createStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateStudioRoomRequest.fromBuffer(value),
        ($18.CreateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ListStudioRoomsRequest, $18.ListStudioRoomsResponse>(
        'ListStudioRooms',
        listStudioRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListStudioRoomsRequest.fromBuffer(value),
        ($18.ListStudioRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateStudioRoomRequest, $18.UpdateStudioRoomResponse>(
        'UpdateStudioRoom',
        updateStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateStudioRoomRequest.fromBuffer(value),
        ($18.UpdateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteStudioRoomRequest, $18.DeleteStudioRoomResponse>(
        'DeleteStudioRoom',
        deleteStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteStudioRoomRequest.fromBuffer(value),
        ($18.DeleteStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.CreateStudioRoomInfoRequest, $18.CreateStudioRoomInfoResponse>(
        'CreateStudioRoomInfo',
        createStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateStudioRoomInfoRequest.fromBuffer(value),
        ($18.CreateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ListStudioRoomInfosRequest, $18.ListStudioRoomInfosResponse>(
        'ListStudioRoomInfos',
        listStudioRoomInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListStudioRoomInfosRequest.fromBuffer(value),
        ($18.ListStudioRoomInfosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateStudioRoomInfoRequest, $18.UpdateStudioRoomInfoResponse>(
        'UpdateStudioRoomInfo',
        updateStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateStudioRoomInfoRequest.fromBuffer(value),
        ($18.UpdateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteStudioRoomInfoRequest, $18.DeleteStudioRoomInfoResponse>(
        'DeleteStudioRoomInfo',
        deleteStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteStudioRoomInfoRequest.fromBuffer(value),
        ($18.DeleteStudioRoomInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.CreateStudioRoomResponse> createStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$18.CreateStudioRoomRequest> request) async {
    return createStudioRoom(call, await request);
  }

  $async.Future<$18.ListStudioRoomsResponse> listStudioRooms_Pre($grpc.ServiceCall call, $async.Future<$18.ListStudioRoomsRequest> request) async {
    return listStudioRooms(call, await request);
  }

  $async.Future<$18.UpdateStudioRoomResponse> updateStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateStudioRoomRequest> request) async {
    return updateStudioRoom(call, await request);
  }

  $async.Future<$18.DeleteStudioRoomResponse> deleteStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteStudioRoomRequest> request) async {
    return deleteStudioRoom(call, await request);
  }

  $async.Future<$18.CreateStudioRoomInfoResponse> createStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$18.CreateStudioRoomInfoRequest> request) async {
    return createStudioRoomInfo(call, await request);
  }

  $async.Future<$18.ListStudioRoomInfosResponse> listStudioRoomInfos_Pre($grpc.ServiceCall call, $async.Future<$18.ListStudioRoomInfosRequest> request) async {
    return listStudioRoomInfos(call, await request);
  }

  $async.Future<$18.UpdateStudioRoomInfoResponse> updateStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateStudioRoomInfoRequest> request) async {
    return updateStudioRoomInfo(call, await request);
  }

  $async.Future<$18.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteStudioRoomInfoRequest> request) async {
    return deleteStudioRoomInfo(call, await request);
  }

  $async.Future<$18.CreateStudioRoomResponse> createStudioRoom($grpc.ServiceCall call, $18.CreateStudioRoomRequest request);
  $async.Future<$18.ListStudioRoomsResponse> listStudioRooms($grpc.ServiceCall call, $18.ListStudioRoomsRequest request);
  $async.Future<$18.UpdateStudioRoomResponse> updateStudioRoom($grpc.ServiceCall call, $18.UpdateStudioRoomRequest request);
  $async.Future<$18.DeleteStudioRoomResponse> deleteStudioRoom($grpc.ServiceCall call, $18.DeleteStudioRoomRequest request);
  $async.Future<$18.CreateStudioRoomInfoResponse> createStudioRoomInfo($grpc.ServiceCall call, $18.CreateStudioRoomInfoRequest request);
  $async.Future<$18.ListStudioRoomInfosResponse> listStudioRoomInfos($grpc.ServiceCall call, $18.ListStudioRoomInfosRequest request);
  $async.Future<$18.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($grpc.ServiceCall call, $18.UpdateStudioRoomInfoRequest request);
  $async.Future<$18.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($grpc.ServiceCall call, $18.DeleteStudioRoomInfoRequest request);
}
