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

import 'song_service.pb.dart' as $15;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$15.CreateSongRequest, $15.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($15.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$15.ListSongsRequest, $15.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($15.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$15.GetSongRequest, $15.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($15.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$15.UpdateSongRequest, $15.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($15.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$15.DeleteSongRequest, $15.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($15.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$15.AddSongResourceRequest, $15.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($15.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$15.ListSongResourcesRequest, $15.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($15.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$15.DeleteSongResourceRequest, $15.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($15.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateSongResponse> createSong($15.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSongsResponse> listSongs($15.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetSongResponse> getSong($15.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSongResponse> updateSong($15.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSongResponse> deleteSong($15.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSongResourceResponse> addSongResource($15.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSongResourcesResponse> listSongResources($15.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSongResourceResponse> deleteSongResource($15.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateSongRequest, $15.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateSongRequest.fromBuffer(value),
        ($15.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSongsRequest, $15.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSongsRequest.fromBuffer(value),
        ($15.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetSongRequest, $15.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetSongRequest.fromBuffer(value),
        ($15.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSongRequest, $15.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSongRequest.fromBuffer(value),
        ($15.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSongRequest, $15.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSongRequest.fromBuffer(value),
        ($15.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSongResourceRequest, $15.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSongResourceRequest.fromBuffer(value),
        ($15.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSongResourcesRequest, $15.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSongResourcesRequest.fromBuffer(value),
        ($15.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSongResourceRequest, $15.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSongResourceRequest.fromBuffer(value),
        ($15.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$15.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$15.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$15.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$15.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$15.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$15.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$15.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$15.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$15.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$15.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$15.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$15.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$15.CreateSongResponse> createSong($grpc.ServiceCall call, $15.CreateSongRequest request);
  $async.Future<$15.ListSongsResponse> listSongs($grpc.ServiceCall call, $15.ListSongsRequest request);
  $async.Future<$15.GetSongResponse> getSong($grpc.ServiceCall call, $15.GetSongRequest request);
  $async.Future<$15.UpdateSongResponse> updateSong($grpc.ServiceCall call, $15.UpdateSongRequest request);
  $async.Future<$15.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $15.DeleteSongRequest request);
  $async.Future<$15.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $15.AddSongResourceRequest request);
  $async.Future<$15.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $15.ListSongResourcesRequest request);
  $async.Future<$15.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $15.DeleteSongResourceRequest request);
}
