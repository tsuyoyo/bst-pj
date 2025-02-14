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

import 'song_service.pb.dart' as $12;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$12.CreateSongRequest, $12.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($12.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$12.ListSongsRequest, $12.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($12.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$12.GetSongRequest, $12.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($12.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$12.UpdateSongRequest, $12.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($12.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$12.DeleteSongRequest, $12.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($12.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$12.AddSongResourceRequest, $12.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($12.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$12.ListSongResourcesRequest, $12.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($12.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$12.DeleteSongResourceRequest, $12.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($12.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateSongResponse> createSong($12.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSongsResponse> listSongs($12.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetSongResponse> getSong($12.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSongResponse> updateSong($12.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSongResponse> deleteSong($12.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSongResourceResponse> addSongResource($12.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSongResourcesResponse> listSongResources($12.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSongResourceResponse> deleteSongResource($12.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateSongRequest, $12.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateSongRequest.fromBuffer(value),
        ($12.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSongsRequest, $12.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSongsRequest.fromBuffer(value),
        ($12.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetSongRequest, $12.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetSongRequest.fromBuffer(value),
        ($12.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSongRequest, $12.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSongRequest.fromBuffer(value),
        ($12.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSongRequest, $12.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSongRequest.fromBuffer(value),
        ($12.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSongResourceRequest, $12.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSongResourceRequest.fromBuffer(value),
        ($12.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSongResourcesRequest, $12.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSongResourcesRequest.fromBuffer(value),
        ($12.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSongResourceRequest, $12.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSongResourceRequest.fromBuffer(value),
        ($12.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$12.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$12.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$12.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$12.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$12.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$12.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$12.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$12.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$12.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$12.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$12.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$12.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$12.CreateSongResponse> createSong($grpc.ServiceCall call, $12.CreateSongRequest request);
  $async.Future<$12.ListSongsResponse> listSongs($grpc.ServiceCall call, $12.ListSongsRequest request);
  $async.Future<$12.GetSongResponse> getSong($grpc.ServiceCall call, $12.GetSongRequest request);
  $async.Future<$12.UpdateSongResponse> updateSong($grpc.ServiceCall call, $12.UpdateSongRequest request);
  $async.Future<$12.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $12.DeleteSongRequest request);
  $async.Future<$12.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $12.AddSongResourceRequest request);
  $async.Future<$12.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $12.ListSongResourcesRequest request);
  $async.Future<$12.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $12.DeleteSongResourceRequest request);
}
