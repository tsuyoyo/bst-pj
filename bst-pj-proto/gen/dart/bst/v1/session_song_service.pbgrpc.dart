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

import 'session_song_service.pb.dart' as $18;

export 'session_song_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionSongService')
class SessionSongServiceClient extends $grpc.Client {
  static final _$listSessionSongs = $grpc.ClientMethod<$18.ListSessionSongsRequest, $18.ListSessionSongsResponse>(
      '/bst.v1.SessionSongService/ListSessionSongs',
      ($18.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$18.GetSessionSongRequest, $18.GetSessionSongResponse>(
      '/bst.v1.SessionSongService/GetSessionSong',
      ($18.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetSessionSongResponse.fromBuffer(value));
  static final _$addSessionSong = $grpc.ClientMethod<$18.AddSessionSongRequest, $18.AddSessionSongResponse>(
      '/bst.v1.SessionSongService/AddSessionSong',
      ($18.AddSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.AddSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$18.UpdateSessionSongRequest, $18.UpdateSessionSongResponse>(
      '/bst.v1.SessionSongService/UpdateSessionSong',
      ($18.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$18.DeleteSessionSongRequest, $18.DeleteSessionSongResponse>(
      '/bst.v1.SessionSongService/DeleteSessionSong',
      ($18.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteSessionSongResponse.fromBuffer(value));

  SessionSongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.ListSessionSongsResponse> listSessionSongs($18.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetSessionSongResponse> getSessionSong($18.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$18.AddSessionSongResponse> addSessionSong($18.AddSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionSongResponse> updateSessionSong($18.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteSessionSongResponse> deleteSessionSong($18.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionSongService')
abstract class SessionSongServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionSongService';

  SessionSongServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.ListSessionSongsRequest, $18.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListSessionSongsRequest.fromBuffer(value),
        ($18.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetSessionSongRequest, $18.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetSessionSongRequest.fromBuffer(value),
        ($18.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.AddSessionSongRequest, $18.AddSessionSongResponse>(
        'AddSessionSong',
        addSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.AddSessionSongRequest.fromBuffer(value),
        ($18.AddSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionSongRequest, $18.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionSongRequest.fromBuffer(value),
        ($18.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteSessionSongRequest, $18.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteSessionSongRequest.fromBuffer(value),
        ($18.DeleteSessionSongResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$18.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$18.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$18.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$18.AddSessionSongResponse> addSessionSong_Pre($grpc.ServiceCall call, $async.Future<$18.AddSessionSongRequest> request) async {
    return addSessionSong(call, await request);
  }

  $async.Future<$18.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$18.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$18.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $18.ListSessionSongsRequest request);
  $async.Future<$18.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $18.GetSessionSongRequest request);
  $async.Future<$18.AddSessionSongResponse> addSessionSong($grpc.ServiceCall call, $18.AddSessionSongRequest request);
  $async.Future<$18.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $18.UpdateSessionSongRequest request);
  $async.Future<$18.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $18.DeleteSessionSongRequest request);
}
