//
//  Generated code. Do not modify.
//  source: bst/v1/session_song_service.proto
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

import 'session_song_service.pb.dart' as $16;

export 'session_song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionSongService')
class SessionSongServiceClient extends $grpc.Client {
  static final _$listSessionSongs = $grpc.ClientMethod<$16.ListSessionSongsRequest, $16.ListSessionSongsResponse>(
      '/bst.v1.SessionSongService/ListSessionSongs',
      ($16.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$16.GetSessionSongRequest, $16.GetSessionSongResponse>(
      '/bst.v1.SessionSongService/GetSessionSong',
      ($16.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetSessionSongResponse.fromBuffer(value));
  static final _$addSessionSong = $grpc.ClientMethod<$16.AddSessionSongRequest, $16.AddSessionSongResponse>(
      '/bst.v1.SessionSongService/AddSessionSong',
      ($16.AddSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$16.UpdateSessionSongRequest, $16.UpdateSessionSongResponse>(
      '/bst.v1.SessionSongService/UpdateSessionSong',
      ($16.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$16.DeleteSessionSongRequest, $16.DeleteSessionSongResponse>(
      '/bst.v1.SessionSongService/DeleteSessionSong',
      ($16.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSessionSongResponse.fromBuffer(value));

  SessionSongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.ListSessionSongsResponse> listSessionSongs($16.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetSessionSongResponse> getSessionSong($16.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddSessionSongResponse> addSessionSong($16.AddSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSessionSongResponse> updateSessionSong($16.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSessionSongResponse> deleteSessionSong($16.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionSongService')
abstract class SessionSongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionSongService';

  SessionSongServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.ListSessionSongsRequest, $16.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSessionSongsRequest.fromBuffer(value),
        ($16.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetSessionSongRequest, $16.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetSessionSongRequest.fromBuffer(value),
        ($16.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddSessionSongRequest, $16.AddSessionSongResponse>(
        'AddSessionSong',
        addSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSessionSongRequest.fromBuffer(value),
        ($16.AddSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSessionSongRequest, $16.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSessionSongRequest.fromBuffer(value),
        ($16.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSessionSongRequest, $16.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSessionSongRequest.fromBuffer(value),
        ($16.DeleteSessionSongResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$16.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$16.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$16.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$16.AddSessionSongResponse> addSessionSong_Pre($grpc.ServiceCall call, $async.Future<$16.AddSessionSongRequest> request) async {
    return addSessionSong(call, await request);
  }

  $async.Future<$16.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$16.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$16.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $16.ListSessionSongsRequest request);
  $async.Future<$16.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $16.GetSessionSongRequest request);
  $async.Future<$16.AddSessionSongResponse> addSessionSong($grpc.ServiceCall call, $16.AddSessionSongRequest request);
  $async.Future<$16.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $16.UpdateSessionSongRequest request);
  $async.Future<$16.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $16.DeleteSessionSongRequest request);
}
