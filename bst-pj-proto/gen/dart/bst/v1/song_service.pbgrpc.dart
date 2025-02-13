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

import 'song_service.pb.dart' as $10;

export 'song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SongService')
class SongServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$10.CreateSongRequest, $10.CreateSongResponse>(
      '/bst.v1.SongService/CreateSong',
      ($10.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$10.ListSongsRequest, $10.ListSongsResponse>(
      '/bst.v1.SongService/ListSongs',
      ($10.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ListSongsResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$10.GetSongRequest, $10.GetSongResponse>(
      '/bst.v1.SongService/GetSong',
      ($10.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetSongResponse.fromBuffer(value));
  static final _$updateSong = $grpc.ClientMethod<$10.UpdateSongRequest, $10.UpdateSongResponse>(
      '/bst.v1.SongService/UpdateSong',
      ($10.UpdateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong = $grpc.ClientMethod<$10.DeleteSongRequest, $10.DeleteSongResponse>(
      '/bst.v1.SongService/DeleteSong',
      ($10.DeleteSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteSongResponse.fromBuffer(value));
  static final _$addSongResource = $grpc.ClientMethod<$10.AddSongResourceRequest, $10.AddSongResourceResponse>(
      '/bst.v1.SongService/AddSongResource',
      ($10.AddSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.AddSongResourceResponse.fromBuffer(value));
  static final _$listSongResources = $grpc.ClientMethod<$10.ListSongResourcesRequest, $10.ListSongResourcesResponse>(
      '/bst.v1.SongService/ListSongResources',
      ($10.ListSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ListSongResourcesResponse.fromBuffer(value));
  static final _$deleteSongResource = $grpc.ClientMethod<$10.DeleteSongResourceRequest, $10.DeleteSongResourceResponse>(
      '/bst.v1.SongService/DeleteSongResource',
      ($10.DeleteSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteSongResourceResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateSongResponse> createSong($10.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$10.ListSongsResponse> listSongs($10.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetSongResponse> getSong($10.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateSongResponse> updateSong($10.UpdateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteSongResponse> deleteSong($10.DeleteSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$10.AddSongResourceResponse> addSongResource($10.AddSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$10.ListSongResourcesResponse> listSongResources($10.ListSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteSongResourceResponse> deleteSongResource($10.DeleteSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongResource, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SongService')
abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateSongRequest, $10.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateSongRequest.fromBuffer(value),
        ($10.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListSongsRequest, $10.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ListSongsRequest.fromBuffer(value),
        ($10.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetSongRequest, $10.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetSongRequest.fromBuffer(value),
        ($10.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateSongRequest, $10.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateSongRequest.fromBuffer(value),
        ($10.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteSongRequest, $10.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteSongRequest.fromBuffer(value),
        ($10.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.AddSongResourceRequest, $10.AddSongResourceResponse>(
        'AddSongResource',
        addSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.AddSongResourceRequest.fromBuffer(value),
        ($10.AddSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListSongResourcesRequest, $10.ListSongResourcesResponse>(
        'ListSongResources',
        listSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ListSongResourcesRequest.fromBuffer(value),
        ($10.ListSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteSongResourceRequest, $10.DeleteSongResourceResponse>(
        'DeleteSongResource',
        deleteSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteSongResourceRequest.fromBuffer(value),
        ($10.DeleteSongResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$10.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$10.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$10.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$10.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$10.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$10.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$10.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$10.AddSongResourceResponse> addSongResource_Pre($grpc.ServiceCall call, $async.Future<$10.AddSongResourceRequest> request) async {
    return addSongResource(call, await request);
  }

  $async.Future<$10.ListSongResourcesResponse> listSongResources_Pre($grpc.ServiceCall call, $async.Future<$10.ListSongResourcesRequest> request) async {
    return listSongResources(call, await request);
  }

  $async.Future<$10.DeleteSongResourceResponse> deleteSongResource_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteSongResourceRequest> request) async {
    return deleteSongResource(call, await request);
  }

  $async.Future<$10.CreateSongResponse> createSong($grpc.ServiceCall call, $10.CreateSongRequest request);
  $async.Future<$10.ListSongsResponse> listSongs($grpc.ServiceCall call, $10.ListSongsRequest request);
  $async.Future<$10.GetSongResponse> getSong($grpc.ServiceCall call, $10.GetSongRequest request);
  $async.Future<$10.UpdateSongResponse> updateSong($grpc.ServiceCall call, $10.UpdateSongRequest request);
  $async.Future<$10.DeleteSongResponse> deleteSong($grpc.ServiceCall call, $10.DeleteSongRequest request);
  $async.Future<$10.AddSongResourceResponse> addSongResource($grpc.ServiceCall call, $10.AddSongResourceRequest request);
  $async.Future<$10.ListSongResourcesResponse> listSongResources($grpc.ServiceCall call, $10.ListSongResourcesRequest request);
  $async.Future<$10.DeleteSongResourceResponse> deleteSongResource($grpc.ServiceCall call, $10.DeleteSongResourceRequest request);
}
