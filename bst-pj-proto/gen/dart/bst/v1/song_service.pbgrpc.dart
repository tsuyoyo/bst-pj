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

import 'song_service.pb.dart' as $13;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$13.CreateSongRequest, $13.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($13.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$13.ListSongsRequest, $13.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($13.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$13.GetSongRequest, $13.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($13.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$13.UpdateSongRequest, $13.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($13.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$13.DeleteSongRequest, $13.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($13.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$13.AddSongResourceRequest, $13.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($13.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$13.ListSongResourcesRequest, $13.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($13.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$13.DeleteSongResourceRequest, $13.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($13.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateSongResponse> createSong($13.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSongsResponse> listSongs($13.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetSongResponse> getSong($13.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSongResponse> updateSong($13.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSongResponse> deleteSong($13.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSongResourceResponse> addSongResource($13.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSongResourcesResponse> listSongResources($13.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSongResourceResponse> deleteSongResource($13.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateSongRequest, $13.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateSongRequest.fromBuffer(value),
        ($13.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSongsRequest, $13.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSongsRequest.fromBuffer(value),
        ($13.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetSongRequest, $13.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetSongRequest.fromBuffer(value),
        ($13.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSongRequest, $13.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSongRequest.fromBuffer(value),
        ($13.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSongRequest, $13.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSongRequest.fromBuffer(value),
        ($13.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSongResourceRequest, $13.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSongResourceRequest.fromBuffer(value),
        ($13.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSongResourcesRequest, $13.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSongResourcesRequest.fromBuffer(value),
        ($13.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSongResourceRequest, $13.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSongResourceRequest.fromBuffer(value),
        ($13.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$13.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$13.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$13.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$13.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$13.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$13.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$13.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$13.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$13.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$13.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$13.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$13.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$13.CreateSongResponse> createSong($grpc.ServiceCall call, $13.CreateSongRequest request);
  $async.Future<$13.ListSongsResponse> listSongs($grpc.ServiceCall call, $13.ListSongsRequest request);
  $async.Future<$13.GetSongResponse> getSong($grpc.ServiceCall call, $13.GetSongRequest request);
  $async.Future<$13.UpdateSongResponse> updateSong($grpc.ServiceCall call, $13.UpdateSongRequest request);
  $async.Future<$13.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $13.DeleteSongRequest request);
  $async.Future<$13.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $13.AddSongResourceRequest request);
  $async.Future<$13.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $13.ListSongResourcesRequest request);
  $async.Future<$13.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $13.DeleteSongResourceRequest request);
}
