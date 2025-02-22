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

import 'session_song_service.pb.dart' as $17;

export 'session_song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionSongService')
class SessionSongServiceClient extends $grpc.Client {
  static final _$listSessionSongs = $grpc.ClientMethod<$17.ListSessionSongsRequest, $17.ListSessionSongsResponse>(
      '/bst.v1.SessionSongService/ListSessionSongs',
      ($17.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$17.GetSessionSongRequest, $17.GetSessionSongResponse>(
      '/bst.v1.SessionSongService/GetSessionSong',
      ($17.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.GetSessionSongResponse.fromBuffer(value));
  static final _$addSessionSong = $grpc.ClientMethod<$17.AddSessionSongRequest, $17.AddSessionSongResponse>(
      '/bst.v1.SessionSongService/AddSessionSong',
      ($17.AddSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.AddSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$17.UpdateSessionSongRequest, $17.UpdateSessionSongResponse>(
      '/bst.v1.SessionSongService/UpdateSessionSong',
      ($17.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$17.DeleteSessionSongRequest, $17.DeleteSessionSongResponse>(
      '/bst.v1.SessionSongService/DeleteSessionSong',
      ($17.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteSessionSongResponse.fromBuffer(value));

  SessionSongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.ListSessionSongsResponse> listSessionSongs($17.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$17.GetSessionSongResponse> getSessionSong($17.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$17.AddSessionSongResponse> addSessionSong($17.AddSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateSessionSongResponse> updateSessionSong($17.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteSessionSongResponse> deleteSessionSong($17.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionSongService')
abstract class SessionSongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionSongService';

  SessionSongServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.ListSessionSongsRequest, $17.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ListSessionSongsRequest.fromBuffer(value),
        ($17.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetSessionSongRequest, $17.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.GetSessionSongRequest.fromBuffer(value),
        ($17.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.AddSessionSongRequest, $17.AddSessionSongResponse>(
        'AddSessionSong',
        addSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.AddSessionSongRequest.fromBuffer(value),
        ($17.AddSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateSessionSongRequest, $17.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateSessionSongRequest.fromBuffer(value),
        ($17.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteSessionSongRequest, $17.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteSessionSongRequest.fromBuffer(value),
        ($17.DeleteSessionSongResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$17.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$17.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$17.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$17.AddSessionSongResponse> addSessionSong_Pre($grpc.ServiceCall call, $async.Future<$17.AddSessionSongRequest> request) async {
    return addSessionSong(call, await request);
  }

  $async.Future<$17.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$17.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$17.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $17.ListSessionSongsRequest request);
  $async.Future<$17.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $17.GetSessionSongRequest request);
  $async.Future<$17.AddSessionSongResponse> addSessionSong($grpc.ServiceCall call, $17.AddSessionSongRequest request);
  $async.Future<$17.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $17.UpdateSessionSongRequest request);
  $async.Future<$17.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $17.DeleteSessionSongRequest request);
}
