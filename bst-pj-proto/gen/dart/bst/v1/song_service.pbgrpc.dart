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

import 'song_service.pb.dart' as $7;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$7.CreateSongRequest, $7.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($7.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$7.ListSongsRequest, $7.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($7.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$7.GetSongRequest, $7.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($7.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$7.UpdateSongRequest, $7.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($7.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$7.DeleteSongRequest, $7.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($7.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$7.AddSongResourceRequest, $7.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($7.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$7.ListSongResourcesRequest, $7.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($7.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$7.DeleteSongResourceRequest, $7.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($7.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateSongResponse> createSong($7.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListSongsResponse> listSongs($7.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetSongResponse> getSong($7.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateSongResponse> updateSong($7.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteSongResponse> deleteSong($7.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$7.AddSongResourceResponse> addSongResource($7.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListSongResourcesResponse> listSongResources($7.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteSongResourceResponse> deleteSongResource($7.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateSongRequest, $7.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateSongRequest.fromBuffer(value),
        ($7.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListSongsRequest, $7.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListSongsRequest.fromBuffer(value),
        ($7.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetSongRequest, $7.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetSongRequest.fromBuffer(value),
        ($7.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateSongRequest, $7.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateSongRequest.fromBuffer(value),
        ($7.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteSongRequest, $7.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteSongRequest.fromBuffer(value),
        ($7.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AddSongResourceRequest, $7.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.AddSongResourceRequest.fromBuffer(value),
        ($7.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListSongResourcesRequest, $7.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListSongResourcesRequest.fromBuffer(value),
        ($7.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteSongResourceRequest, $7.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteSongResourceRequest.fromBuffer(value),
        ($7.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$7.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$7.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$7.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$7.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$7.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$7.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$7.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$7.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$7.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$7.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$7.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$7.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$7.CreateSongResponse> createSong($grpc.ServiceCall call, $7.CreateSongRequest request);
  $async.Future<$7.ListSongsResponse> listSongs($grpc.ServiceCall call, $7.ListSongsRequest request);
  $async.Future<$7.GetSongResponse> getSong($grpc.ServiceCall call, $7.GetSongRequest request);
  $async.Future<$7.UpdateSongResponse> updateSong($grpc.ServiceCall call, $7.UpdateSongRequest request);
  $async.Future<$7.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $7.DeleteSongRequest request);
  $async.Future<$7.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $7.AddSongResourceRequest request);
  $async.Future<$7.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $7.ListSongResourcesRequest request);
  $async.Future<$7.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $7.DeleteSongResourceRequest request);
}
