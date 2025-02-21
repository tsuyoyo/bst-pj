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

import 'song_service.pb.dart' as $17;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$17.CreateSongRequest, $17.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($17.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$17.ListSongsRequest, $17.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($17.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$17.GetSongRequest, $17.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($17.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$17.UpdateSongRequest, $17.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($17.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$17.DeleteSongRequest, $17.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($17.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$17.AddSongResourceRequest, $17.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($17.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$17.ListSongResourcesRequest, $17.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($17.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$17.DeleteSongResourceRequest, $17.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($17.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.CreateSongResponse> createSong($17.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$17.ListSongsResponse> listSongs($17.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetSongResponse> getSong($17.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateSongResponse> updateSong($17.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteSongResponse> deleteSong($17.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$17.AddSongResourceResponse> addSongResource($17.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$17.ListSongResourcesResponse> listSongResources($17.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteSongResourceResponse> deleteSongResource($17.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.CreateSongRequest, $17.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.CreateSongRequest.fromBuffer(value),
        ($17.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.ListSongsRequest, $17.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ListSongsRequest.fromBuffer(value),
        ($17.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetSongRequest, $17.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetSongRequest.fromBuffer(value),
        ($17.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateSongRequest, $17.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateSongRequest.fromBuffer(value),
        ($17.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteSongRequest, $17.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteSongRequest.fromBuffer(value),
        ($17.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.AddSongResourceRequest, $17.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.AddSongResourceRequest.fromBuffer(value),
        ($17.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.ListSongResourcesRequest, $17.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ListSongResourcesRequest.fromBuffer(value),
        ($17.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteSongResourceRequest, $17.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteSongResourceRequest.fromBuffer(value),
        ($17.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$17.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$17.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$17.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$17.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$17.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$17.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$17.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$17.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$17.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$17.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$17.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$17.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$17.CreateSongResponse> createSong($grpc.ServiceCall call, $17.CreateSongRequest request);
  $async.Future<$17.ListSongsResponse> listSongs($grpc.ServiceCall call, $17.ListSongsRequest request);
  $async.Future<$17.GetSongResponse> getSong($grpc.ServiceCall call, $17.GetSongRequest request);
  $async.Future<$17.UpdateSongResponse> updateSong($grpc.ServiceCall call, $17.UpdateSongRequest request);
  $async.Future<$17.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $17.DeleteSongRequest request);
  $async.Future<$17.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $17.AddSongResourceRequest request);
  $async.Future<$17.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $17.ListSongResourcesRequest request);
  $async.Future<$17.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $17.DeleteSongResourceRequest request);
}
