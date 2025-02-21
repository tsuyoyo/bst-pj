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

import 'studio_room_service.pb.dart' as $19;

export 'studio_room_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
class StudioRoomServiceClient extends $grpc.Client {
  static final _$createStudioRoom = $grpc.ClientMethod<$19.CreateStudioRoomRequest, $19.CreateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoom',
      ($19.CreateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CreateStudioRoomResponse.fromBuffer(value));
  static final _$listStudioRooms = $grpc.ClientMethod<$19.ListStudioRoomsRequest, $19.ListStudioRoomsResponse>(
      '/bst.v1.StudioRoomService/ListStudioRooms',
      ($19.ListStudioRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ListStudioRoomsResponse.fromBuffer(value));
  static final _$updateStudioRoom = $grpc.ClientMethod<$19.UpdateStudioRoomRequest, $19.UpdateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoom',
      ($19.UpdateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateStudioRoomResponse.fromBuffer(value));
  static final _$deleteStudioRoom = $grpc.ClientMethod<$19.DeleteStudioRoomRequest, $19.DeleteStudioRoomResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoom',
      ($19.DeleteStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.DeleteStudioRoomResponse.fromBuffer(value));
  static final _$createStudioRoomInfo = $grpc.ClientMethod<$19.CreateStudioRoomInfoRequest, $19.CreateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoomInfo',
      ($19.CreateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CreateStudioRoomInfoResponse.fromBuffer(value));
  static final _$listStudioRoomInfos = $grpc.ClientMethod<$19.ListStudioRoomInfosRequest, $19.ListStudioRoomInfosResponse>(
      '/bst.v1.StudioRoomService/ListStudioRoomInfos',
      ($19.ListStudioRoomInfosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ListStudioRoomInfosResponse.fromBuffer(value));
  static final _$updateStudioRoomInfo = $grpc.ClientMethod<$19.UpdateStudioRoomInfoRequest, $19.UpdateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoomInfo',
      ($19.UpdateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateStudioRoomInfoResponse.fromBuffer(value));
  static final _$deleteStudioRoomInfo = $grpc.ClientMethod<$19.DeleteStudioRoomInfoRequest, $19.DeleteStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoomInfo',
      ($19.DeleteStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.DeleteStudioRoomInfoResponse.fromBuffer(value));

  StudioRoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$19.CreateStudioRoomResponse> createStudioRoom($19.CreateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$19.ListStudioRoomsResponse> listStudioRooms($19.ListStudioRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRooms, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateStudioRoomResponse> updateStudioRoom($19.UpdateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$19.DeleteStudioRoomResponse> deleteStudioRoom($19.DeleteStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$19.CreateStudioRoomInfoResponse> createStudioRoomInfo($19.CreateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$19.ListStudioRoomInfosResponse> listStudioRoomInfos($19.ListStudioRoomInfosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRoomInfos, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($19.UpdateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$19.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($19.DeleteStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoomInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
abstract class StudioRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioRoomService';

  StudioRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.CreateStudioRoomRequest, $19.CreateStudioRoomResponse>(
        'CreateStudioRoom',
        createStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CreateStudioRoomRequest.fromBuffer(value),
        ($19.CreateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ListStudioRoomsRequest, $19.ListStudioRoomsResponse>(
        'ListStudioRooms',
        listStudioRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ListStudioRoomsRequest.fromBuffer(value),
        ($19.ListStudioRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateStudioRoomRequest, $19.UpdateStudioRoomResponse>(
        'UpdateStudioRoom',
        updateStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateStudioRoomRequest.fromBuffer(value),
        ($19.UpdateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.DeleteStudioRoomRequest, $19.DeleteStudioRoomResponse>(
        'DeleteStudioRoom',
        deleteStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.DeleteStudioRoomRequest.fromBuffer(value),
        ($19.DeleteStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.CreateStudioRoomInfoRequest, $19.CreateStudioRoomInfoResponse>(
        'CreateStudioRoomInfo',
        createStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CreateStudioRoomInfoRequest.fromBuffer(value),
        ($19.CreateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ListStudioRoomInfosRequest, $19.ListStudioRoomInfosResponse>(
        'ListStudioRoomInfos',
        listStudioRoomInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ListStudioRoomInfosRequest.fromBuffer(value),
        ($19.ListStudioRoomInfosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateStudioRoomInfoRequest, $19.UpdateStudioRoomInfoResponse>(
        'UpdateStudioRoomInfo',
        updateStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateStudioRoomInfoRequest.fromBuffer(value),
        ($19.UpdateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.DeleteStudioRoomInfoRequest, $19.DeleteStudioRoomInfoResponse>(
        'DeleteStudioRoomInfo',
        deleteStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.DeleteStudioRoomInfoRequest.fromBuffer(value),
        ($19.DeleteStudioRoomInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$19.CreateStudioRoomResponse> createStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$19.CreateStudioRoomRequest> request) async {
    return createStudioRoom(call, await request);
  }

  $async.Future<$19.ListStudioRoomsResponse> listStudioRooms_Pre($grpc.ServiceCall call, $async.Future<$19.ListStudioRoomsRequest> request) async {
    return listStudioRooms(call, await request);
  }

  $async.Future<$19.UpdateStudioRoomResponse> updateStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateStudioRoomRequest> request) async {
    return updateStudioRoom(call, await request);
  }

  $async.Future<$19.DeleteStudioRoomResponse> deleteStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$19.DeleteStudioRoomRequest> request) async {
    return deleteStudioRoom(call, await request);
  }

  $async.Future<$19.CreateStudioRoomInfoResponse> createStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$19.CreateStudioRoomInfoRequest> request) async {
    return createStudioRoomInfo(call, await request);
  }

  $async.Future<$19.ListStudioRoomInfosResponse> listStudioRoomInfos_Pre($grpc.ServiceCall call, $async.Future<$19.ListStudioRoomInfosRequest> request) async {
    return listStudioRoomInfos(call, await request);
  }

  $async.Future<$19.UpdateStudioRoomInfoResponse> updateStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateStudioRoomInfoRequest> request) async {
    return updateStudioRoomInfo(call, await request);
  }

  $async.Future<$19.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$19.DeleteStudioRoomInfoRequest> request) async {
    return deleteStudioRoomInfo(call, await request);
  }

  $async.Future<$19.CreateStudioRoomResponse> createStudioRoom($grpc.ServiceCall call, $19.CreateStudioRoomRequest request);
  $async.Future<$19.ListStudioRoomsResponse> listStudioRooms($grpc.ServiceCall call, $19.ListStudioRoomsRequest request);
  $async.Future<$19.UpdateStudioRoomResponse> updateStudioRoom($grpc.ServiceCall call, $19.UpdateStudioRoomRequest request);
  $async.Future<$19.DeleteStudioRoomResponse> deleteStudioRoom($grpc.ServiceCall call, $19.DeleteStudioRoomRequest request);
  $async.Future<$19.CreateStudioRoomInfoResponse> createStudioRoomInfo($grpc.ServiceCall call, $19.CreateStudioRoomInfoRequest request);
  $async.Future<$19.ListStudioRoomInfosResponse> listStudioRoomInfos($grpc.ServiceCall call, $19.ListStudioRoomInfosRequest request);
  $async.Future<$19.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($grpc.ServiceCall call, $19.UpdateStudioRoomInfoRequest request);
  $async.Future<$19.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($grpc.ServiceCall call, $19.DeleteStudioRoomInfoRequest request);
}
