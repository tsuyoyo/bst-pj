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

import 'song_service.pb.dart' as $23;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$23.CreateSongRequest, $23.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($23.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$23.ListSongsRequest, $23.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($23.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$23.GetSongRequest, $23.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($23.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$23.UpdateSongRequest, $23.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($23.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$23.DeleteSongRequest, $23.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($23.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$23.AddSongResourceRequest, $23.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($23.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$23.ListSongResourcesRequest, $23.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($23.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$23.DeleteSongResourceRequest, $23.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($23.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $23.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$23.CreateSongResponse> createSong($23.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$23.ListSongsResponse> listSongs($23.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$23.GetSongResponse> getSong($23.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$23.UpdateSongResponse> updateSong($23.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$23.DeleteSongResponse> deleteSong($23.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$23.AddSongResourceResponse> addSongResource($23.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$23.ListSongResourcesResponse> listSongResources($23.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$23.DeleteSongResourceResponse> deleteSongResource($23.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$23.CreateSongRequest, $23.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.CreateSongRequest.fromBuffer(value),
        ($23.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.ListSongsRequest, $23.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.ListSongsRequest.fromBuffer(value),
        ($23.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.GetSongRequest, $23.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.GetSongRequest.fromBuffer(value),
        ($23.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.UpdateSongRequest, $23.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.UpdateSongRequest.fromBuffer(value),
        ($23.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.DeleteSongRequest, $23.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.DeleteSongRequest.fromBuffer(value),
        ($23.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.AddSongResourceRequest, $23.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.AddSongResourceRequest.fromBuffer(value),
        ($23.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.ListSongResourcesRequest, $23.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.ListSongResourcesRequest.fromBuffer(value),
        ($23.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.DeleteSongResourceRequest, $23.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $23.DeleteSongResourceRequest.fromBuffer(value),
        ($23.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$23.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$23.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$23.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$23.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$23.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$23.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$23.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$23.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$23.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$23.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$23.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$23.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$23.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$23.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$23.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$23.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$23.CreateSongResponse> createSong($grpc.ServiceCall call, $23.CreateSongRequest request);
  $async.Future<$23.ListSongsResponse> listSongs($grpc.ServiceCall call, $23.ListSongsRequest request);
  $async.Future<$23.GetSongResponse> getSong($grpc.ServiceCall call, $23.GetSongRequest request);
  $async.Future<$23.UpdateSongResponse> updateSong($grpc.ServiceCall call, $23.UpdateSongRequest request);
  $async.Future<$23.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $23.DeleteSongRequest request);
  $async.Future<$23.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $23.AddSongResourceRequest request);
  $async.Future<$23.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $23.ListSongResourcesRequest request);
  $async.Future<$23.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $23.DeleteSongResourceRequest request);
}
