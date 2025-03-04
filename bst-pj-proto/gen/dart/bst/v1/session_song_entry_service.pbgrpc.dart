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

import 'session_song_entry_service.pb.dart' as $20;

export 'session_song_entry_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionSongEntryService')
class SessionSongEntryServiceClient extends $grpc.Client {
  static final _$addSongEntry = $grpc.ClientMethod<$20.AddSongEntryRequest, $20.AddSongEntryResponse>(
      '/bst.v1.SessionSongEntryService/AddSongEntry',
      ($20.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.AddSongEntryResponse.fromBuffer(value));
  static final _$updateSongEntry = $grpc.ClientMethod<$20.UpdateSongEntryRequest, $20.UpdateSongEntryResponse>(
      '/bst.v1.SessionSongEntryService/UpdateSongEntry',
      ($20.UpdateSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.UpdateSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$20.DeleteSongEntryRequest, $20.DeleteSongEntryResponse>(
      '/bst.v1.SessionSongEntryService/DeleteSongEntry',
      ($20.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.DeleteSongEntryResponse.fromBuffer(value));

  SessionSongEntryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$20.AddSongEntryResponse> addSongEntry($20.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$20.UpdateSongEntryResponse> updateSongEntry($20.UpdateSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$20.DeleteSongEntryResponse> deleteSongEntry($20.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionSongEntryService')
abstract class SessionSongEntryServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionSongEntryService';

  SessionSongEntryServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.AddSongEntryRequest, $20.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.AddSongEntryRequest.fromBuffer(value),
        ($20.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.UpdateSongEntryRequest, $20.UpdateSongEntryResponse>(
        'UpdateSongEntry',
        updateSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.UpdateSongEntryRequest.fromBuffer(value),
        ($20.UpdateSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.DeleteSongEntryRequest, $20.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.DeleteSongEntryRequest.fromBuffer(value),
        ($20.DeleteSongEntryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$20.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$20.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$20.UpdateSongEntryResponse> updateSongEntry_Pre($grpc.ServiceCall call, $async.Future<$20.UpdateSongEntryRequest> request) async {
    return updateSongEntry(call, await request);
  }

  $async.Future<$20.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$20.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$20.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $20.AddSongEntryRequest request);
  $async.Future<$20.UpdateSongEntryResponse> updateSongEntry($grpc.ServiceCall call, $20.UpdateSongEntryRequest request);
  $async.Future<$20.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $20.DeleteSongEntryRequest request);
}
