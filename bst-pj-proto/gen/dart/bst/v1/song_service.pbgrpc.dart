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

import 'song_service.pb.dart' as $4;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$4.CreateSongRequest, $4.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($4.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$4.ListSongsRequest, $4.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($4.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$4.GetSongRequest, $4.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($4.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$4.UpdateSongRequest, $4.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($4.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$4.DeleteSongRequest, $4.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($4.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$4.AddSongResourceRequest, $4.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($4.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$4.ListSongResourcesRequest, $4.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($4.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$4.DeleteSongResourceRequest, $4.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($4.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateSongResponse> createSong($4.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSongsResponse> listSongs($4.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSongResponse> getSong($4.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSongResponse> updateSong($4.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSongResponse> deleteSong($4.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSongResourceResponse> addSongResource($4.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSongResourcesResponse> listSongResources($4.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSongResourceResponse> deleteSongResource($4.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateSongRequest, $4.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateSongRequest.fromBuffer(value),
        ($4.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSongsRequest, $4.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSongsRequest.fromBuffer(value),
        ($4.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSongRequest, $4.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSongRequest.fromBuffer(value),
        ($4.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSongRequest, $4.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSongRequest.fromBuffer(value),
        ($4.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSongRequest, $4.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSongRequest.fromBuffer(value),
        ($4.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSongResourceRequest, $4.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSongResourceRequest.fromBuffer(value),
        ($4.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSongResourcesRequest, $4.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSongResourcesRequest.fromBuffer(value),
        ($4.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSongResourceRequest, $4.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSongResourceRequest.fromBuffer(value),
        ($4.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$4.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$4.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$4.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$4.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$4.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$4.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$4.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$4.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$4.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$4.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$4.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$4.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$4.CreateSongResponse> createSong($grpc.ServiceCall call, $4.CreateSongRequest request);
  $async.Future<$4.ListSongsResponse> listSongs($grpc.ServiceCall call, $4.ListSongsRequest request);
  $async.Future<$4.GetSongResponse> getSong($grpc.ServiceCall call, $4.GetSongRequest request);
  $async.Future<$4.UpdateSongResponse> updateSong($grpc.ServiceCall call, $4.UpdateSongRequest request);
  $async.Future<$4.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $4.DeleteSongRequest request);
  $async.Future<$4.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $4.AddSongResourceRequest request);
  $async.Future<$4.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $4.ListSongResourcesRequest request);
  $async.Future<$4.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $4.DeleteSongResourceRequest request);
}
