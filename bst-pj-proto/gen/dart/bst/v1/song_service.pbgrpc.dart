//
//  Generated code. Do not modify.
//  source: bst/v1/song_service.proto
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

import 'song_service.pb.dart' as $22;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$22.CreateSongRequest, $22.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($22.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$22.ListSongsRequest, $22.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($22.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$22.GetSongRequest, $22.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($22.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$22.UpdateSongRequest, $22.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($22.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$22.DeleteSongRequest, $22.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($22.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$22.AddSongResourceRequest, $22.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($22.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$22.ListSongResourcesRequest, $22.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($22.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$22.DeleteSongResourceRequest, $22.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($22.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$22.CreateSongResponse> createSong($22.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$22.ListSongsResponse> listSongs($22.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$22.GetSongResponse> getSong($22.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$22.UpdateSongResponse> updateSong($22.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$22.DeleteSongResponse> deleteSong($22.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$22.AddSongResourceResponse> addSongResource($22.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$22.ListSongResourcesResponse> listSongResources($22.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$22.DeleteSongResourceResponse> deleteSongResource($22.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$22.CreateSongRequest, $22.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.CreateSongRequest.fromBuffer(value),
        ($22.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.ListSongsRequest, $22.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.ListSongsRequest.fromBuffer(value),
        ($22.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.GetSongRequest, $22.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetSongRequest.fromBuffer(value),
        ($22.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.UpdateSongRequest, $22.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.UpdateSongRequest.fromBuffer(value),
        ($22.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.DeleteSongRequest, $22.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.DeleteSongRequest.fromBuffer(value),
        ($22.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.AddSongResourceRequest, $22.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.AddSongResourceRequest.fromBuffer(value),
        ($22.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.ListSongResourcesRequest, $22.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.ListSongResourcesRequest.fromBuffer(value),
        ($22.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.DeleteSongResourceRequest, $22.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.DeleteSongResourceRequest.fromBuffer(value),
        ($22.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$22.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$22.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$22.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$22.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$22.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$22.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$22.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$22.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$22.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$22.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$22.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$22.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$22.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$22.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$22.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$22.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$22.CreateSongResponse> createSong($grpc.ServiceCall call, $22.CreateSongRequest request);
  $async.Future<$22.ListSongsResponse> listSongs($grpc.ServiceCall call, $22.ListSongsRequest request);
  $async.Future<$22.GetSongResponse> getSong($grpc.ServiceCall call, $22.GetSongRequest request);
  $async.Future<$22.UpdateSongResponse> updateSong($grpc.ServiceCall call, $22.UpdateSongRequest request);
  $async.Future<$22.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $22.DeleteSongRequest request);
  $async.Future<$22.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $22.AddSongResourceRequest request);
  $async.Future<$22.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $22.ListSongResourcesRequest request);
  $async.Future<$22.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $22.DeleteSongResourceRequest request);
}
