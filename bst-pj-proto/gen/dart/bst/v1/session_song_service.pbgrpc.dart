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

import 'session_song_service.pb.dart' as $20;

export 'session_song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionSongService')
class SessionSongServiceClient extends $grpc.Client {
  static final _$listSessionSongs = $grpc.ClientMethod<$20.ListSessionSongsRequest, $20.ListSessionSongsResponse>(
      '/bst.v1.SessionSongService/ListSessionSongs',
      ($20.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$20.GetSessionSongRequest, $20.GetSessionSongResponse>(
      '/bst.v1.SessionSongService/GetSessionSong',
      ($20.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.GetSessionSongResponse.fromBuffer(value));
  static final _$addSessionSong = $grpc.ClientMethod<$20.AddSessionSongRequest, $20.AddSessionSongResponse>(
      '/bst.v1.SessionSongService/AddSessionSong',
      ($20.AddSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.AddSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$20.UpdateSessionSongRequest, $20.UpdateSessionSongResponse>(
      '/bst.v1.SessionSongService/UpdateSessionSong',
      ($20.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$20.DeleteSessionSongRequest, $20.DeleteSessionSongResponse>(
      '/bst.v1.SessionSongService/DeleteSessionSong',
      ($20.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.DeleteSessionSongResponse.fromBuffer(value));

  SessionSongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$20.ListSessionSongsResponse> listSessionSongs($20.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$20.GetSessionSongResponse> getSessionSong($20.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$20.AddSessionSongResponse> addSessionSong($20.AddSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$20.UpdateSessionSongResponse> updateSessionSong($20.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$20.DeleteSessionSongResponse> deleteSessionSong($20.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionSongService')
abstract class SessionSongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionSongService';

  SessionSongServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.ListSessionSongsRequest, $20.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.ListSessionSongsRequest.fromBuffer(value),
        ($20.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetSessionSongRequest, $20.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.GetSessionSongRequest.fromBuffer(value),
        ($20.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.AddSessionSongRequest, $20.AddSessionSongResponse>(
        'AddSessionSong',
        addSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.AddSessionSongRequest.fromBuffer(value),
        ($20.AddSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.UpdateSessionSongRequest, $20.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.UpdateSessionSongRequest.fromBuffer(value),
        ($20.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.DeleteSessionSongRequest, $20.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.DeleteSessionSongRequest.fromBuffer(value),
        ($20.DeleteSessionSongResponse value) => value.writeToBuffer()));
  }

  $async.Future<$20.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$20.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$20.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$20.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$20.AddSessionSongResponse> addSessionSong_Pre($grpc.ServiceCall call, $async.Future<$20.AddSessionSongRequest> request) async {
    return addSessionSong(call, await request);
  }

  $async.Future<$20.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$20.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$20.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$20.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$20.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $20.ListSessionSongsRequest request);
  $async.Future<$20.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $20.GetSessionSongRequest request);
  $async.Future<$20.AddSessionSongResponse> addSessionSong($grpc.ServiceCall call, $20.AddSessionSongRequest request);
  $async.Future<$20.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $20.UpdateSessionSongRequest request);
  $async.Future<$20.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $20.DeleteSessionSongRequest request);
}
