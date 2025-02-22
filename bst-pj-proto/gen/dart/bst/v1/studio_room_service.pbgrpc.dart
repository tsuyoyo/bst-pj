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

import 'studio_room_service.pb.dart' as $20;

export 'studio_room_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
class StudioRoomServiceClient extends $grpc.Client {
  static final _$createStudioRoom = $grpc.ClientMethod<$20.CreateStudioRoomRequest, $20.CreateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoom',
      ($20.CreateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.CreateStudioRoomResponse.fromBuffer(value));
  static final _$listStudioRooms = $grpc.ClientMethod<$20.ListStudioRoomsRequest, $20.ListStudioRoomsResponse>(
      '/bst.v1.StudioRoomService/ListStudioRooms',
      ($20.ListStudioRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.ListStudioRoomsResponse.fromBuffer(value));
  static final _$updateStudioRoom = $grpc.ClientMethod<$20.UpdateStudioRoomRequest, $20.UpdateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoom',
      ($20.UpdateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.UpdateStudioRoomResponse.fromBuffer(value));
  static final _$deleteStudioRoom = $grpc.ClientMethod<$20.DeleteStudioRoomRequest, $20.DeleteStudioRoomResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoom',
      ($20.DeleteStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.DeleteStudioRoomResponse.fromBuffer(value));
  static final _$createStudioRoomInfo = $grpc.ClientMethod<$20.CreateStudioRoomInfoRequest, $20.CreateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoomInfo',
      ($20.CreateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.CreateStudioRoomInfoResponse.fromBuffer(value));
  static final _$listStudioRoomInfos = $grpc.ClientMethod<$20.ListStudioRoomInfosRequest, $20.ListStudioRoomInfosResponse>(
      '/bst.v1.StudioRoomService/ListStudioRoomInfos',
      ($20.ListStudioRoomInfosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.ListStudioRoomInfosResponse.fromBuffer(value));
  static final _$updateStudioRoomInfo = $grpc.ClientMethod<$20.UpdateStudioRoomInfoRequest, $20.UpdateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoomInfo',
      ($20.UpdateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.UpdateStudioRoomInfoResponse.fromBuffer(value));
  static final _$deleteStudioRoomInfo = $grpc.ClientMethod<$20.DeleteStudioRoomInfoRequest, $20.DeleteStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoomInfo',
      ($20.DeleteStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.DeleteStudioRoomInfoResponse.fromBuffer(value));

  StudioRoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$20.CreateStudioRoomResponse> createStudioRoom($20.CreateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$20.ListStudioRoomsResponse> listStudioRooms($20.ListStudioRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRooms, request, options: options);
  }

  $grpc.ResponseFuture<$20.UpdateStudioRoomResponse> updateStudioRoom($20.UpdateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$20.DeleteStudioRoomResponse> deleteStudioRoom($20.DeleteStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$20.CreateStudioRoomInfoResponse> createStudioRoomInfo($20.CreateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$20.ListStudioRoomInfosResponse> listStudioRoomInfos($20.ListStudioRoomInfosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRoomInfos, request, options: options);
  }

  $grpc.ResponseFuture<$20.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($20.UpdateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$20.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($20.DeleteStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoomInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
abstract class StudioRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioRoomService';

  StudioRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.CreateStudioRoomRequest, $20.CreateStudioRoomResponse>(
        'CreateStudioRoom',
        createStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.CreateStudioRoomRequest.fromBuffer(value),
        ($20.CreateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.ListStudioRoomsRequest, $20.ListStudioRoomsResponse>(
        'ListStudioRooms',
        listStudioRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.ListStudioRoomsRequest.fromBuffer(value),
        ($20.ListStudioRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.UpdateStudioRoomRequest, $20.UpdateStudioRoomResponse>(
        'UpdateStudioRoom',
        updateStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.UpdateStudioRoomRequest.fromBuffer(value),
        ($20.UpdateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.DeleteStudioRoomRequest, $20.DeleteStudioRoomResponse>(
        'DeleteStudioRoom',
        deleteStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.DeleteStudioRoomRequest.fromBuffer(value),
        ($20.DeleteStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.CreateStudioRoomInfoRequest, $20.CreateStudioRoomInfoResponse>(
        'CreateStudioRoomInfo',
        createStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.CreateStudioRoomInfoRequest.fromBuffer(value),
        ($20.CreateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.ListStudioRoomInfosRequest, $20.ListStudioRoomInfosResponse>(
        'ListStudioRoomInfos',
        listStudioRoomInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.ListStudioRoomInfosRequest.fromBuffer(value),
        ($20.ListStudioRoomInfosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.UpdateStudioRoomInfoRequest, $20.UpdateStudioRoomInfoResponse>(
        'UpdateStudioRoomInfo',
        updateStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.UpdateStudioRoomInfoRequest.fromBuffer(value),
        ($20.UpdateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.DeleteStudioRoomInfoRequest, $20.DeleteStudioRoomInfoResponse>(
        'DeleteStudioRoomInfo',
        deleteStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.DeleteStudioRoomInfoRequest.fromBuffer(value),
        ($20.DeleteStudioRoomInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$20.CreateStudioRoomResponse> createStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$20.CreateStudioRoomRequest> request) async {
    return createStudioRoom(call, await request);
  }

  $async.Future<$20.ListStudioRoomsResponse> listStudioRooms_Pre($grpc.ServiceCall call, $async.Future<$20.ListStudioRoomsRequest> request) async {
    return listStudioRooms(call, await request);
  }

  $async.Future<$20.UpdateStudioRoomResponse> updateStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$20.UpdateStudioRoomRequest> request) async {
    return updateStudioRoom(call, await request);
  }

  $async.Future<$20.DeleteStudioRoomResponse> deleteStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$20.DeleteStudioRoomRequest> request) async {
    return deleteStudioRoom(call, await request);
  }

  $async.Future<$20.CreateStudioRoomInfoResponse> createStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$20.CreateStudioRoomInfoRequest> request) async {
    return createStudioRoomInfo(call, await request);
  }

  $async.Future<$20.ListStudioRoomInfosResponse> listStudioRoomInfos_Pre($grpc.ServiceCall call, $async.Future<$20.ListStudioRoomInfosRequest> request) async {
    return listStudioRoomInfos(call, await request);
  }

  $async.Future<$20.UpdateStudioRoomInfoResponse> updateStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$20.UpdateStudioRoomInfoRequest> request) async {
    return updateStudioRoomInfo(call, await request);
  }

  $async.Future<$20.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$20.DeleteStudioRoomInfoRequest> request) async {
    return deleteStudioRoomInfo(call, await request);
  }

  $async.Future<$20.CreateStudioRoomResponse> createStudioRoom($grpc.ServiceCall call, $20.CreateStudioRoomRequest request);
  $async.Future<$20.ListStudioRoomsResponse> listStudioRooms($grpc.ServiceCall call, $20.ListStudioRoomsRequest request);
  $async.Future<$20.UpdateStudioRoomResponse> updateStudioRoom($grpc.ServiceCall call, $20.UpdateStudioRoomRequest request);
  $async.Future<$20.DeleteStudioRoomResponse> deleteStudioRoom($grpc.ServiceCall call, $20.DeleteStudioRoomRequest request);
  $async.Future<$20.CreateStudioRoomInfoResponse> createStudioRoomInfo($grpc.ServiceCall call, $20.CreateStudioRoomInfoRequest request);
  $async.Future<$20.ListStudioRoomInfosResponse> listStudioRoomInfos($grpc.ServiceCall call, $20.ListStudioRoomInfosRequest request);
  $async.Future<$20.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($grpc.ServiceCall call, $20.UpdateStudioRoomInfoRequest request);
  $async.Future<$20.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($grpc.ServiceCall call, $20.DeleteStudioRoomInfoRequest request);
}
