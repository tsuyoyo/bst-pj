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

import 'studio_room_service.pb.dart' as $21;

export 'studio_room_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
class StudioRoomServiceClient extends $grpc.Client {
  static final _$createStudioRoom = $grpc.ClientMethod<$21.CreateStudioRoomRequest, $21.CreateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoom',
      ($21.CreateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.CreateStudioRoomResponse.fromBuffer(value));
  static final _$listStudioRooms = $grpc.ClientMethod<$21.ListStudioRoomsRequest, $21.ListStudioRoomsResponse>(
      '/bst.v1.StudioRoomService/ListStudioRooms',
      ($21.ListStudioRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.ListStudioRoomsResponse.fromBuffer(value));
  static final _$updateStudioRoom = $grpc.ClientMethod<$21.UpdateStudioRoomRequest, $21.UpdateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoom',
      ($21.UpdateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.UpdateStudioRoomResponse.fromBuffer(value));
  static final _$deleteStudioRoom = $grpc.ClientMethod<$21.DeleteStudioRoomRequest, $21.DeleteStudioRoomResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoom',
      ($21.DeleteStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.DeleteStudioRoomResponse.fromBuffer(value));
  static final _$createStudioRoomInfo = $grpc.ClientMethod<$21.CreateStudioRoomInfoRequest, $21.CreateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoomInfo',
      ($21.CreateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.CreateStudioRoomInfoResponse.fromBuffer(value));
  static final _$listStudioRoomInfos = $grpc.ClientMethod<$21.ListStudioRoomInfosRequest, $21.ListStudioRoomInfosResponse>(
      '/bst.v1.StudioRoomService/ListStudioRoomInfos',
      ($21.ListStudioRoomInfosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.ListStudioRoomInfosResponse.fromBuffer(value));
  static final _$updateStudioRoomInfo = $grpc.ClientMethod<$21.UpdateStudioRoomInfoRequest, $21.UpdateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoomInfo',
      ($21.UpdateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.UpdateStudioRoomInfoResponse.fromBuffer(value));
  static final _$deleteStudioRoomInfo = $grpc.ClientMethod<$21.DeleteStudioRoomInfoRequest, $21.DeleteStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoomInfo',
      ($21.DeleteStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.DeleteStudioRoomInfoResponse.fromBuffer(value));

  StudioRoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$21.CreateStudioRoomResponse> createStudioRoom($21.CreateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$21.ListStudioRoomsResponse> listStudioRooms($21.ListStudioRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRooms, request, options: options);
  }

  $grpc.ResponseFuture<$21.UpdateStudioRoomResponse> updateStudioRoom($21.UpdateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$21.DeleteStudioRoomResponse> deleteStudioRoom($21.DeleteStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$21.CreateStudioRoomInfoResponse> createStudioRoomInfo($21.CreateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$21.ListStudioRoomInfosResponse> listStudioRoomInfos($21.ListStudioRoomInfosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRoomInfos, request, options: options);
  }

  $grpc.ResponseFuture<$21.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($21.UpdateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$21.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($21.DeleteStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoomInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
abstract class StudioRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioRoomService';

  StudioRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.CreateStudioRoomRequest, $21.CreateStudioRoomResponse>(
        'CreateStudioRoom',
        createStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.CreateStudioRoomRequest.fromBuffer(value),
        ($21.CreateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.ListStudioRoomsRequest, $21.ListStudioRoomsResponse>(
        'ListStudioRooms',
        listStudioRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.ListStudioRoomsRequest.fromBuffer(value),
        ($21.ListStudioRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.UpdateStudioRoomRequest, $21.UpdateStudioRoomResponse>(
        'UpdateStudioRoom',
        updateStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.UpdateStudioRoomRequest.fromBuffer(value),
        ($21.UpdateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.DeleteStudioRoomRequest, $21.DeleteStudioRoomResponse>(
        'DeleteStudioRoom',
        deleteStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.DeleteStudioRoomRequest.fromBuffer(value),
        ($21.DeleteStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.CreateStudioRoomInfoRequest, $21.CreateStudioRoomInfoResponse>(
        'CreateStudioRoomInfo',
        createStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.CreateStudioRoomInfoRequest.fromBuffer(value),
        ($21.CreateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.ListStudioRoomInfosRequest, $21.ListStudioRoomInfosResponse>(
        'ListStudioRoomInfos',
        listStudioRoomInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.ListStudioRoomInfosRequest.fromBuffer(value),
        ($21.ListStudioRoomInfosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.UpdateStudioRoomInfoRequest, $21.UpdateStudioRoomInfoResponse>(
        'UpdateStudioRoomInfo',
        updateStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.UpdateStudioRoomInfoRequest.fromBuffer(value),
        ($21.UpdateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.DeleteStudioRoomInfoRequest, $21.DeleteStudioRoomInfoResponse>(
        'DeleteStudioRoomInfo',
        deleteStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.DeleteStudioRoomInfoRequest.fromBuffer(value),
        ($21.DeleteStudioRoomInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$21.CreateStudioRoomResponse> createStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$21.CreateStudioRoomRequest> request) async {
    return createStudioRoom(call, await request);
  }

  $async.Future<$21.ListStudioRoomsResponse> listStudioRooms_Pre($grpc.ServiceCall call, $async.Future<$21.ListStudioRoomsRequest> request) async {
    return listStudioRooms(call, await request);
  }

  $async.Future<$21.UpdateStudioRoomResponse> updateStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$21.UpdateStudioRoomRequest> request) async {
    return updateStudioRoom(call, await request);
  }

  $async.Future<$21.DeleteStudioRoomResponse> deleteStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$21.DeleteStudioRoomRequest> request) async {
    return deleteStudioRoom(call, await request);
  }

  $async.Future<$21.CreateStudioRoomInfoResponse> createStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$21.CreateStudioRoomInfoRequest> request) async {
    return createStudioRoomInfo(call, await request);
  }

  $async.Future<$21.ListStudioRoomInfosResponse> listStudioRoomInfos_Pre($grpc.ServiceCall call, $async.Future<$21.ListStudioRoomInfosRequest> request) async {
    return listStudioRoomInfos(call, await request);
  }

  $async.Future<$21.UpdateStudioRoomInfoResponse> updateStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$21.UpdateStudioRoomInfoRequest> request) async {
    return updateStudioRoomInfo(call, await request);
  }

  $async.Future<$21.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$21.DeleteStudioRoomInfoRequest> request) async {
    return deleteStudioRoomInfo(call, await request);
  }

  $async.Future<$21.CreateStudioRoomResponse> createStudioRoom($grpc.ServiceCall call, $21.CreateStudioRoomRequest request);
  $async.Future<$21.ListStudioRoomsResponse> listStudioRooms($grpc.ServiceCall call, $21.ListStudioRoomsRequest request);
  $async.Future<$21.UpdateStudioRoomResponse> updateStudioRoom($grpc.ServiceCall call, $21.UpdateStudioRoomRequest request);
  $async.Future<$21.DeleteStudioRoomResponse> deleteStudioRoom($grpc.ServiceCall call, $21.DeleteStudioRoomRequest request);
  $async.Future<$21.CreateStudioRoomInfoResponse> createStudioRoomInfo($grpc.ServiceCall call, $21.CreateStudioRoomInfoRequest request);
  $async.Future<$21.ListStudioRoomInfosResponse> listStudioRoomInfos($grpc.ServiceCall call, $21.ListStudioRoomInfosRequest request);
  $async.Future<$21.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($grpc.ServiceCall call, $21.UpdateStudioRoomInfoRequest request);
  $async.Future<$21.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($grpc.ServiceCall call, $21.DeleteStudioRoomInfoRequest request);
}
