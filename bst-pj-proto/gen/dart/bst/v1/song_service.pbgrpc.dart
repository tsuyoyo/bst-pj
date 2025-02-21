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

import 'song_service.pb.dart' as $16;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$16.CreateSongRequest, $16.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($16.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$16.ListSongsRequest, $16.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($16.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$16.GetSongRequest, $16.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($16.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$16.UpdateSongRequest, $16.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($16.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$16.DeleteSongRequest, $16.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($16.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$16.AddSongResourceRequest, $16.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($16.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$16.ListSongResourcesRequest, $16.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($16.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$16.DeleteSongResourceRequest, $16.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($16.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.CreateSongResponse> createSong($16.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListSongsResponse> listSongs($16.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetSongResponse> getSong($16.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSongResponse> updateSong($16.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSongResponse> deleteSong($16.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddSongResourceResponse> addSongResource($16.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListSongResourcesResponse> listSongResources($16.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSongResourceResponse> deleteSongResource($16.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.CreateSongRequest, $16.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateSongRequest.fromBuffer(value),
        ($16.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListSongsRequest, $16.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSongsRequest.fromBuffer(value),
        ($16.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetSongRequest, $16.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetSongRequest.fromBuffer(value),
        ($16.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSongRequest, $16.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSongRequest.fromBuffer(value),
        ($16.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSongRequest, $16.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSongRequest.fromBuffer(value),
        ($16.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddSongResourceRequest, $16.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSongResourceRequest.fromBuffer(value),
        ($16.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListSongResourcesRequest, $16.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSongResourcesRequest.fromBuffer(value),
        ($16.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSongResourceRequest, $16.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSongResourceRequest.fromBuffer(value),
        ($16.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$16.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$16.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$16.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$16.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$16.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$16.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$16.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$16.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$16.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$16.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$16.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$16.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$16.CreateSongResponse> createSong($grpc.ServiceCall call, $16.CreateSongRequest request);
  $async.Future<$16.ListSongsResponse> listSongs($grpc.ServiceCall call, $16.ListSongsRequest request);
  $async.Future<$16.GetSongResponse> getSong($grpc.ServiceCall call, $16.GetSongRequest request);
  $async.Future<$16.UpdateSongResponse> updateSong($grpc.ServiceCall call, $16.UpdateSongRequest request);
  $async.Future<$16.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $16.DeleteSongRequest request);
  $async.Future<$16.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $16.AddSongResourceRequest request);
  $async.Future<$16.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $16.ListSongResourcesRequest request);
  $async.Future<$16.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $16.DeleteSongResourceRequest request);
}
