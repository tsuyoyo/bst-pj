//
//  Generated code. Do not modify.
//  source: bst/v1/session_song_entry_service.proto
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

import 'session_song_entry_service.pb.dart' as $16;

export 'session_song_entry_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionSongEntryService')
class SessionSongEntryServiceClient extends $grpc.Client {
  static final _$addSongEntry = $grpc.ClientMethod<$16.AddSongEntryRequest, $16.AddSongEntryResponse>(
      '/bst.v1.SessionSongEntryService/AddSongEntry',
      ($16.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$16.DeleteSongEntryRequest, $16.DeleteSongEntryResponse>(
      '/bst.v1.SessionSongEntryService/DeleteSongEntry',
      ($16.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSongEntryResponse.fromBuffer(value));

  SessionSongEntryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.AddSongEntryResponse> addSongEntry($16.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSongEntryResponse> deleteSongEntry($16.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionSongEntryService')
abstract class SessionSongEntryServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionSongEntryService';

  SessionSongEntryServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.AddSongEntryRequest, $16.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSongEntryRequest.fromBuffer(value),
        ($16.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSongEntryRequest, $16.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSongEntryRequest.fromBuffer(value),
        ($16.DeleteSongEntryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$16.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$16.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$16.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $16.AddSongEntryRequest request);
  $async.Future<$16.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $16.DeleteSongEntryRequest request);
}
