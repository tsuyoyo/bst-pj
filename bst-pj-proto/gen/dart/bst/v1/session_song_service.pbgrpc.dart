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

import 'session_song_service.pb.dart' as $21;

export 'session_song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionSongService')
class SessionSongServiceClient extends $grpc.Client {
  static final _$listSessionSongs = $grpc.ClientMethod<$21.ListSessionSongsRequest, $21.ListSessionSongsResponse>(
      '/bst.v1.SessionSongService/ListSessionSongs',
      ($21.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$21.GetSessionSongRequest, $21.GetSessionSongResponse>(
      '/bst.v1.SessionSongService/GetSessionSong',
      ($21.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.GetSessionSongResponse.fromBuffer(value));
  static final _$addSessionSong = $grpc.ClientMethod<$21.AddSessionSongRequest, $21.AddSessionSongResponse>(
      '/bst.v1.SessionSongService/AddSessionSong',
      ($21.AddSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.AddSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$21.UpdateSessionSongRequest, $21.UpdateSessionSongResponse>(
      '/bst.v1.SessionSongService/UpdateSessionSong',
      ($21.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$21.DeleteSessionSongRequest, $21.DeleteSessionSongResponse>(
      '/bst.v1.SessionSongService/DeleteSessionSong',
      ($21.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.DeleteSessionSongResponse.fromBuffer(value));

  SessionSongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$21.ListSessionSongsResponse> listSessionSongs($21.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$21.GetSessionSongResponse> getSessionSong($21.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$21.AddSessionSongResponse> addSessionSong($21.AddSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$21.UpdateSessionSongResponse> updateSessionSong($21.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$21.DeleteSessionSongResponse> deleteSessionSong($21.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionSongService')
abstract class SessionSongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionSongService';

  SessionSongServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.ListSessionSongsRequest, $21.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.ListSessionSongsRequest.fromBuffer(value),
        ($21.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.GetSessionSongRequest, $21.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.GetSessionSongRequest.fromBuffer(value),
        ($21.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.AddSessionSongRequest, $21.AddSessionSongResponse>(
        'AddSessionSong',
        addSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.AddSessionSongRequest.fromBuffer(value),
        ($21.AddSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.UpdateSessionSongRequest, $21.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.UpdateSessionSongRequest.fromBuffer(value),
        ($21.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.DeleteSessionSongRequest, $21.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.DeleteSessionSongRequest.fromBuffer(value),
        ($21.DeleteSessionSongResponse value) => value.writeToBuffer()));
  }

  $async.Future<$21.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$21.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$21.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$21.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$21.AddSessionSongResponse> addSessionSong_Pre($grpc.ServiceCall call, $async.Future<$21.AddSessionSongRequest> request) async {
    return addSessionSong(call, await request);
  }

  $async.Future<$21.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$21.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$21.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$21.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$21.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $21.ListSessionSongsRequest request);
  $async.Future<$21.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $21.GetSessionSongRequest request);
  $async.Future<$21.AddSessionSongResponse> addSessionSong($grpc.ServiceCall call, $21.AddSessionSongRequest request);
  $async.Future<$21.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $21.UpdateSessionSongRequest request);
  $async.Future<$21.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $21.DeleteSessionSongRequest request);
}
