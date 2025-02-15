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

import 'song_service.pb.dart' as $14;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$14.CreateSongRequest, $14.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($14.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$14.ListSongsRequest, $14.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($14.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$14.GetSongRequest, $14.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($14.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$14.UpdateSongRequest, $14.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($14.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$14.DeleteSongRequest, $14.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($14.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$14.AddSongResourceRequest, $14.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($14.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$14.ListSongResourcesRequest, $14.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($14.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$14.DeleteSongResourceRequest, $14.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($14.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateSongResponse> createSong($14.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSongsResponse> listSongs($14.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetSongResponse> getSong($14.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSongResponse> updateSong($14.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSongResponse> deleteSong($14.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSongResourceResponse> addSongResource($14.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSongResourcesResponse> listSongResources($14.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSongResourceResponse> deleteSongResource($14.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateSongRequest, $14.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateSongRequest.fromBuffer(value),
        ($14.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSongsRequest, $14.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSongsRequest.fromBuffer(value),
        ($14.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetSongRequest, $14.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetSongRequest.fromBuffer(value),
        ($14.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSongRequest, $14.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSongRequest.fromBuffer(value),
        ($14.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSongRequest, $14.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSongRequest.fromBuffer(value),
        ($14.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSongResourceRequest, $14.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSongResourceRequest.fromBuffer(value),
        ($14.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSongResourcesRequest, $14.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSongResourcesRequest.fromBuffer(value),
        ($14.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSongResourceRequest, $14.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSongResourceRequest.fromBuffer(value),
        ($14.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$14.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$14.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$14.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$14.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$14.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$14.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$14.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$14.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$14.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$14.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$14.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$14.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$14.CreateSongResponse> createSong($grpc.ServiceCall call, $14.CreateSongRequest request);
  $async.Future<$14.ListSongsResponse> listSongs($grpc.ServiceCall call, $14.ListSongsRequest request);
  $async.Future<$14.GetSongResponse> getSong($grpc.ServiceCall call, $14.GetSongRequest request);
  $async.Future<$14.UpdateSongResponse> updateSong($grpc.ServiceCall call, $14.UpdateSongRequest request);
  $async.Future<$14.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $14.DeleteSongRequest request);
  $async.Future<$14.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $14.AddSongResourceRequest request);
  $async.Future<$14.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $14.ListSongResourcesRequest request);
  $async.Future<$14.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $14.DeleteSongResourceRequest request);
}
