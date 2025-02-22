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

import 'song_service.pb.dart' as $19;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$19.CreateSongRequest, $19.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($19.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$19.ListSongsRequest, $19.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($19.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$19.GetSongRequest, $19.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($19.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$19.UpdateSongRequest, $19.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($19.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$19.DeleteSongRequest, $19.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($19.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$19.AddSongResourceRequest, $19.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($19.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$19.ListSongResourcesRequest, $19.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($19.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$19.DeleteSongResourceRequest, $19.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($19.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$19.CreateSongResponse> createSong($19.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$19.ListSongsResponse> listSongs($19.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$19.GetSongResponse> getSong($19.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSongResponse> updateSong($19.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$19.DeleteSongResponse> deleteSong($19.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$19.AddSongResourceResponse> addSongResource($19.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$19.ListSongResourcesResponse> listSongResources($19.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$19.DeleteSongResourceResponse> deleteSongResource($19.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.CreateSongRequest, $19.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CreateSongRequest.fromBuffer(value),
        ($19.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ListSongsRequest, $19.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ListSongsRequest.fromBuffer(value),
        ($19.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.GetSongRequest, $19.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.GetSongRequest.fromBuffer(value),
        ($19.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSongRequest, $19.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSongRequest.fromBuffer(value),
        ($19.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.DeleteSongRequest, $19.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.DeleteSongRequest.fromBuffer(value),
        ($19.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.AddSongResourceRequest, $19.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.AddSongResourceRequest.fromBuffer(value),
        ($19.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ListSongResourcesRequest, $19.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ListSongResourcesRequest.fromBuffer(value),
        ($19.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.DeleteSongResourceRequest, $19.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.DeleteSongResourceRequest.fromBuffer(value),
        ($19.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$19.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$19.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$19.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$19.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$19.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$19.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$19.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$19.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$19.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$19.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$19.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$19.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$19.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$19.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$19.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$19.CreateSongResponse> createSong($grpc.ServiceCall call, $19.CreateSongRequest request);
  $async.Future<$19.ListSongsResponse> listSongs($grpc.ServiceCall call, $19.ListSongsRequest request);
  $async.Future<$19.GetSongResponse> getSong($grpc.ServiceCall call, $19.GetSongRequest request);
  $async.Future<$19.UpdateSongResponse> updateSong($grpc.ServiceCall call, $19.UpdateSongRequest request);
  $async.Future<$19.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $19.DeleteSongRequest request);
  $async.Future<$19.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $19.AddSongResourceRequest request);
  $async.Future<$19.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $19.ListSongResourcesRequest request);
  $async.Future<$19.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $19.DeleteSongResourceRequest request);
}
