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

import 'song_service.pb.dart' as $5;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$5.CreateSongRequest, $5.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($5.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$5.ListSongsRequest, $5.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($5.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$5.GetSongRequest, $5.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($5.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$5.UpdateSongRequest, $5.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($5.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$5.DeleteSongRequest, $5.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($5.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$5.AddSongResourceRequest, $5.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($5.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$5.ListSongResourcesRequest, $5.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($5.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$5.DeleteSongResourceRequest, $5.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($5.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateSongResponse> createSong($5.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSongsResponse> listSongs($5.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSongResponse> getSong($5.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSongResponse> updateSong($5.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSongResponse> deleteSong($5.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSongResourceResponse> addSongResource($5.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSongResourcesResponse> listSongResources($5.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSongResourceResponse> deleteSongResource($5.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateSongRequest, $5.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateSongRequest.fromBuffer(value),
        ($5.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSongsRequest, $5.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSongsRequest.fromBuffer(value),
        ($5.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSongRequest, $5.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetSongRequest.fromBuffer(value),
        ($5.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSongRequest, $5.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSongRequest.fromBuffer(value),
        ($5.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSongRequest, $5.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSongRequest.fromBuffer(value),
        ($5.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSongResourceRequest, $5.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSongResourceRequest.fromBuffer(value),
        ($5.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSongResourcesRequest, $5.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSongResourcesRequest.fromBuffer(value),
        ($5.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSongResourceRequest, $5.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSongResourceRequest.fromBuffer(value),
        ($5.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$5.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$5.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$5.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$5.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$5.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$5.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$5.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$5.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$5.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$5.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$5.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$5.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$5.CreateSongResponse> createSong($grpc.ServiceCall call, $5.CreateSongRequest request);
  $async.Future<$5.ListSongsResponse> listSongs($grpc.ServiceCall call, $5.ListSongsRequest request);
  $async.Future<$5.GetSongResponse> getSong($grpc.ServiceCall call, $5.GetSongRequest request);
  $async.Future<$5.UpdateSongResponse> updateSong($grpc.ServiceCall call, $5.UpdateSongRequest request);
  $async.Future<$5.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $5.DeleteSongRequest request);
  $async.Future<$5.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $5.AddSongResourceRequest request);
  $async.Future<$5.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $5.ListSongResourcesRequest request);
  $async.Future<$5.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $5.DeleteSongResourceRequest request);
}
