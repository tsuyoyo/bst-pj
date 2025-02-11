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

import 'song_service.pb.dart' as $6;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$6.CreateSongRequest, $6.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($6.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$6.ListSongsRequest, $6.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($6.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$6.GetSongRequest, $6.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($6.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$6.UpdateSongRequest, $6.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($6.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$6.DeleteSongRequest, $6.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($6.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$6.AddSongResourceRequest, $6.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($6.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$6.ListSongResourcesRequest, $6.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($6.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$6.DeleteSongResourceRequest, $6.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($6.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateSongResponse> createSong($6.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSongsResponse> listSongs($6.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetSongResponse> getSong($6.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSongResponse> updateSong($6.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSongResponse> deleteSong($6.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSongResourceResponse> addSongResource($6.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSongResourcesResponse> listSongResources($6.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSongResourceResponse> deleteSongResource($6.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateSongRequest, $6.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateSongRequest.fromBuffer(value),
        ($6.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSongsRequest, $6.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSongsRequest.fromBuffer(value),
        ($6.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetSongRequest, $6.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetSongRequest.fromBuffer(value),
        ($6.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSongRequest, $6.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSongRequest.fromBuffer(value),
        ($6.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSongRequest, $6.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSongRequest.fromBuffer(value),
        ($6.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSongResourceRequest, $6.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSongResourceRequest.fromBuffer(value),
        ($6.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSongResourcesRequest, $6.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSongResourcesRequest.fromBuffer(value),
        ($6.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSongResourceRequest, $6.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSongResourceRequest.fromBuffer(value),
        ($6.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$6.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$6.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$6.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$6.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$6.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$6.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$6.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$6.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$6.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$6.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$6.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$6.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$6.CreateSongResponse> createSong($grpc.ServiceCall call, $6.CreateSongRequest request);
  $async.Future<$6.ListSongsResponse> listSongs($grpc.ServiceCall call, $6.ListSongsRequest request);
  $async.Future<$6.GetSongResponse> getSong($grpc.ServiceCall call, $6.GetSongRequest request);
  $async.Future<$6.UpdateSongResponse> updateSong($grpc.ServiceCall call, $6.UpdateSongRequest request);
  $async.Future<$6.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $6.DeleteSongRequest request);
  $async.Future<$6.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $6.AddSongResourceRequest request);
  $async.Future<$6.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $6.ListSongResourcesRequest request);
  $async.Future<$6.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $6.DeleteSongResourceRequest request);
}
