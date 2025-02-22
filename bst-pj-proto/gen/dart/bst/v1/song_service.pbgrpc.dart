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

import 'song_service.pb.dart' as $18;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$18.CreateSongRequest, $18.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($18.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$18.ListSongsRequest, $18.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($18.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$18.GetSongRequest, $18.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($18.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$18.UpdateSongRequest, $18.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($18.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$18.DeleteSongRequest, $18.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($18.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$18.AddSongResourceRequest, $18.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($18.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$18.ListSongResourcesRequest, $18.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($18.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$18.DeleteSongResourceRequest, $18.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($18.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.CreateSongResponse> createSong($18.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$18.ListSongsResponse> listSongs($18.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetSongResponse> getSong($18.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSongResponse> updateSong($18.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteSongResponse> deleteSong($18.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$18.AddSongResourceResponse> addSongResource($18.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$18.ListSongResourcesResponse> listSongResources($18.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteSongResourceResponse> deleteSongResource($18.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.CreateSongRequest, $18.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateSongRequest.fromBuffer(value),
        ($18.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ListSongsRequest, $18.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListSongsRequest.fromBuffer(value),
        ($18.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetSongRequest, $18.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetSongRequest.fromBuffer(value),
        ($18.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSongRequest, $18.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSongRequest.fromBuffer(value),
        ($18.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteSongRequest, $18.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteSongRequest.fromBuffer(value),
        ($18.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.AddSongResourceRequest, $18.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.AddSongResourceRequest.fromBuffer(value),
        ($18.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ListSongResourcesRequest, $18.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListSongResourcesRequest.fromBuffer(value),
        ($18.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteSongResourceRequest, $18.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteSongResourceRequest.fromBuffer(value),
        ($18.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$18.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$18.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$18.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$18.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$18.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$18.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$18.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$18.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$18.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$18.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$18.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$18.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$18.CreateSongResponse> createSong($grpc.ServiceCall call, $18.CreateSongRequest request);
  $async.Future<$18.ListSongsResponse> listSongs($grpc.ServiceCall call, $18.ListSongsRequest request);
  $async.Future<$18.GetSongResponse> getSong($grpc.ServiceCall call, $18.GetSongRequest request);
  $async.Future<$18.UpdateSongResponse> updateSong($grpc.ServiceCall call, $18.UpdateSongRequest request);
  $async.Future<$18.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $18.DeleteSongRequest request);
  $async.Future<$18.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $18.AddSongResourceRequest request);
  $async.Future<$18.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $18.ListSongResourcesRequest request);
  $async.Future<$18.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $18.DeleteSongResourceRequest request);
}
