//
//  Generated code. Do not modify.
//  source: song-service.proto
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

import 'song-service.pb.dart' as $3;

export 'song-service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$3.CreateSongRequest, $3.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($3.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$3.ListSongsRequest, $3.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($3.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$3.GetSongRequest, $3.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($3.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$3.UpdateSongRequest, $3.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($3.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$3.DeleteSongRequest, $3.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($3.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$3.AddSongResourceRequest, $3.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($3.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$3.ListSongResourcesRequest, $3.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($3.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$3.DeleteSongResourceRequest, $3.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($3.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateSongResponse> createSong($3.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSongsResponse> listSongs($3.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSongResponse> getSong($3.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSongResponse> updateSong($3.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSongResponse> deleteSong($3.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSongResourceResponse> addSongResource($3.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSongResourcesResponse> listSongResources($3.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSongResourceResponse> deleteSongResource($3.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateSongRequest, $3.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateSongRequest.fromBuffer(value),
        ($3.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSongsRequest, $3.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSongsRequest.fromBuffer(value),
        ($3.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSongRequest, $3.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSongRequest.fromBuffer(value),
        ($3.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSongRequest, $3.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSongRequest.fromBuffer(value),
        ($3.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSongRequest, $3.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSongRequest.fromBuffer(value),
        ($3.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSongResourceRequest, $3.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSongResourceRequest.fromBuffer(value),
        ($3.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSongResourcesRequest, $3.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSongResourcesRequest.fromBuffer(value),
        ($3.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSongResourceRequest, $3.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSongResourceRequest.fromBuffer(value),
        ($3.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$3.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$3.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$3.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$3.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$3.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$3.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$3.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$3.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$3.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$3.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$3.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$3.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$3.CreateSongResponse> createSong($grpc.ServiceCall call, $3.CreateSongRequest request);
  $async.Future<$3.ListSongsResponse> listSongs($grpc.ServiceCall call, $3.ListSongsRequest request);
  $async.Future<$3.GetSongResponse> getSong($grpc.ServiceCall call, $3.GetSongRequest request);
  $async.Future<$3.UpdateSongResponse> updateSong($grpc.ServiceCall call, $3.UpdateSongRequest request);
  $async.Future<$3.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $3.DeleteSongRequest request);
  $async.Future<$3.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $3.AddSongResourceRequest request);
  $async.Future<$3.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $3.ListSongResourcesRequest request);
  $async.Future<$3.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $3.DeleteSongResourceRequest request);
}
