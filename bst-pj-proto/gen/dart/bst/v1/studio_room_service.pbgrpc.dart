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

import 'studio_room_service.pb.dart' as $25;

export 'studio_room_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
class StudioRoomServiceClient extends $grpc.Client {
  static final _$createStudioRoom = $grpc.ClientMethod<$25.CreateStudioRoomRequest, $25.CreateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoom',
      ($25.CreateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.CreateStudioRoomResponse.fromBuffer(value));
  static final _$listStudioRooms = $grpc.ClientMethod<$25.ListStudioRoomsRequest, $25.ListStudioRoomsResponse>(
      '/bst.v1.StudioRoomService/ListStudioRooms',
      ($25.ListStudioRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.ListStudioRoomsResponse.fromBuffer(value));
  static final _$updateStudioRoom = $grpc.ClientMethod<$25.UpdateStudioRoomRequest, $25.UpdateStudioRoomResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoom',
      ($25.UpdateStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.UpdateStudioRoomResponse.fromBuffer(value));
  static final _$deleteStudioRoom = $grpc.ClientMethod<$25.DeleteStudioRoomRequest, $25.DeleteStudioRoomResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoom',
      ($25.DeleteStudioRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.DeleteStudioRoomResponse.fromBuffer(value));
  static final _$createStudioRoomInfo = $grpc.ClientMethod<$25.CreateStudioRoomInfoRequest, $25.CreateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/CreateStudioRoomInfo',
      ($25.CreateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.CreateStudioRoomInfoResponse.fromBuffer(value));
  static final _$listStudioRoomInfos = $grpc.ClientMethod<$25.ListStudioRoomInfosRequest, $25.ListStudioRoomInfosResponse>(
      '/bst.v1.StudioRoomService/ListStudioRoomInfos',
      ($25.ListStudioRoomInfosRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.ListStudioRoomInfosResponse.fromBuffer(value));
  static final _$updateStudioRoomInfo = $grpc.ClientMethod<$25.UpdateStudioRoomInfoRequest, $25.UpdateStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/UpdateStudioRoomInfo',
      ($25.UpdateStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.UpdateStudioRoomInfoResponse.fromBuffer(value));
  static final _$deleteStudioRoomInfo = $grpc.ClientMethod<$25.DeleteStudioRoomInfoRequest, $25.DeleteStudioRoomInfoResponse>(
      '/bst.v1.StudioRoomService/DeleteStudioRoomInfo',
      ($25.DeleteStudioRoomInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $25.DeleteStudioRoomInfoResponse.fromBuffer(value));

  StudioRoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$25.CreateStudioRoomResponse> createStudioRoom($25.CreateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$25.ListStudioRoomsResponse> listStudioRooms($25.ListStudioRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRooms, request, options: options);
  }

  $grpc.ResponseFuture<$25.UpdateStudioRoomResponse> updateStudioRoom($25.UpdateStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$25.DeleteStudioRoomResponse> deleteStudioRoom($25.DeleteStudioRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoom, request, options: options);
  }

  $grpc.ResponseFuture<$25.CreateStudioRoomInfoResponse> createStudioRoomInfo($25.CreateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$25.ListStudioRoomInfosResponse> listStudioRoomInfos($25.ListStudioRoomInfosRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listStudioRoomInfos, request, options: options);
  }

  $grpc.ResponseFuture<$25.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($25.UpdateStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudioRoomInfo, request, options: options);
  }

  $grpc.ResponseFuture<$25.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($25.DeleteStudioRoomInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudioRoomInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.StudioRoomService')
abstract class StudioRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.StudioRoomService';

  StudioRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$25.CreateStudioRoomRequest, $25.CreateStudioRoomResponse>(
        'CreateStudioRoom',
        createStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.CreateStudioRoomRequest.fromBuffer(value),
        ($25.CreateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.ListStudioRoomsRequest, $25.ListStudioRoomsResponse>(
        'ListStudioRooms',
        listStudioRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.ListStudioRoomsRequest.fromBuffer(value),
        ($25.ListStudioRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.UpdateStudioRoomRequest, $25.UpdateStudioRoomResponse>(
        'UpdateStudioRoom',
        updateStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.UpdateStudioRoomRequest.fromBuffer(value),
        ($25.UpdateStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.DeleteStudioRoomRequest, $25.DeleteStudioRoomResponse>(
        'DeleteStudioRoom',
        deleteStudioRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.DeleteStudioRoomRequest.fromBuffer(value),
        ($25.DeleteStudioRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.CreateStudioRoomInfoRequest, $25.CreateStudioRoomInfoResponse>(
        'CreateStudioRoomInfo',
        createStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.CreateStudioRoomInfoRequest.fromBuffer(value),
        ($25.CreateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.ListStudioRoomInfosRequest, $25.ListStudioRoomInfosResponse>(
        'ListStudioRoomInfos',
        listStudioRoomInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.ListStudioRoomInfosRequest.fromBuffer(value),
        ($25.ListStudioRoomInfosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.UpdateStudioRoomInfoRequest, $25.UpdateStudioRoomInfoResponse>(
        'UpdateStudioRoomInfo',
        updateStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.UpdateStudioRoomInfoRequest.fromBuffer(value),
        ($25.UpdateStudioRoomInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.DeleteStudioRoomInfoRequest, $25.DeleteStudioRoomInfoResponse>(
        'DeleteStudioRoomInfo',
        deleteStudioRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $25.DeleteStudioRoomInfoRequest.fromBuffer(value),
        ($25.DeleteStudioRoomInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$25.CreateStudioRoomResponse> createStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$25.CreateStudioRoomRequest> request) async {
    return createStudioRoom(call, await request);
  }

  $async.Future<$25.ListStudioRoomsResponse> listStudioRooms_Pre($grpc.ServiceCall call, $async.Future<$25.ListStudioRoomsRequest> request) async {
    return listStudioRooms(call, await request);
  }

  $async.Future<$25.UpdateStudioRoomResponse> updateStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$25.UpdateStudioRoomRequest> request) async {
    return updateStudioRoom(call, await request);
  }

  $async.Future<$25.DeleteStudioRoomResponse> deleteStudioRoom_Pre($grpc.ServiceCall call, $async.Future<$25.DeleteStudioRoomRequest> request) async {
    return deleteStudioRoom(call, await request);
  }

  $async.Future<$25.CreateStudioRoomInfoResponse> createStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$25.CreateStudioRoomInfoRequest> request) async {
    return createStudioRoomInfo(call, await request);
  }

  $async.Future<$25.ListStudioRoomInfosResponse> listStudioRoomInfos_Pre($grpc.ServiceCall call, $async.Future<$25.ListStudioRoomInfosRequest> request) async {
    return listStudioRoomInfos(call, await request);
  }

  $async.Future<$25.UpdateStudioRoomInfoResponse> updateStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$25.UpdateStudioRoomInfoRequest> request) async {
    return updateStudioRoomInfo(call, await request);
  }

  $async.Future<$25.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo_Pre($grpc.ServiceCall call, $async.Future<$25.DeleteStudioRoomInfoRequest> request) async {
    return deleteStudioRoomInfo(call, await request);
  }

  $async.Future<$25.CreateStudioRoomResponse> createStudioRoom($grpc.ServiceCall call, $25.CreateStudioRoomRequest request);
  $async.Future<$25.ListStudioRoomsResponse> listStudioRooms($grpc.ServiceCall call, $25.ListStudioRoomsRequest request);
  $async.Future<$25.UpdateStudioRoomResponse> updateStudioRoom($grpc.ServiceCall call, $25.UpdateStudioRoomRequest request);
  $async.Future<$25.DeleteStudioRoomResponse> deleteStudioRoom($grpc.ServiceCall call, $25.DeleteStudioRoomRequest request);
  $async.Future<$25.CreateStudioRoomInfoResponse> createStudioRoomInfo($grpc.ServiceCall call, $25.CreateStudioRoomInfoRequest request);
  $async.Future<$25.ListStudioRoomInfosResponse> listStudioRoomInfos($grpc.ServiceCall call, $25.ListStudioRoomInfosRequest request);
  $async.Future<$25.UpdateStudioRoomInfoResponse> updateStudioRoomInfo($grpc.ServiceCall call, $25.UpdateStudioRoomInfoRequest request);
  $async.Future<$25.DeleteStudioRoomInfoResponse> deleteStudioRoomInfo($grpc.ServiceCall call, $25.DeleteStudioRoomInfoRequest request);
}
