//
//  Generated code. Do not modify.
//  source: bst/v1/artist_service.proto
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

import 'artist_service.pb.dart' as $0;

export 'artist_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ArtistService')
class ArtistServiceClient extends $grpc.Client {
  static final _$createArtist = $grpc.ClientMethod<$0.CreateArtistRequest, $0.CreateArtistResponse>(
      '/bst.v1.ArtistService/CreateArtist',
      ($0.CreateArtistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateArtistResponse.fromBuffer(value));
  static final _$listArtists = $grpc.ClientMethod<$0.ListArtistsRequest, $0.ListArtistsResponse>(
      '/bst.v1.ArtistService/ListArtists',
      ($0.ListArtistsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListArtistsResponse.fromBuffer(value));
  static final _$getArtist = $grpc.ClientMethod<$0.GetArtistRequest, $0.GetArtistResponse>(
      '/bst.v1.ArtistService/GetArtist',
      ($0.GetArtistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetArtistResponse.fromBuffer(value));
  static final _$getArtists = $grpc.ClientMethod<$0.GetArtistsRequest, $0.GetArtistsResponse>(
      '/bst.v1.ArtistService/GetArtists',
      ($0.GetArtistsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetArtistsResponse.fromBuffer(value));
  static final _$updateArtist = $grpc.ClientMethod<$0.UpdateArtistRequest, $0.UpdateArtistResponse>(
      '/bst.v1.ArtistService/UpdateArtist',
      ($0.UpdateArtistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateArtistResponse.fromBuffer(value));
  static final _$deleteArtist = $grpc.ClientMethod<$0.DeleteArtistRequest, $0.DeleteArtistResponse>(
      '/bst.v1.ArtistService/DeleteArtist',
      ($0.DeleteArtistRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteArtistResponse.fromBuffer(value));
  static final _$listArtistSongs = $grpc.ClientMethod<$0.ListArtistSongsRequest, $0.ListArtistSongsResponse>(
      '/bst.v1.ArtistService/ListArtistSongs',
      ($0.ListArtistSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListArtistSongsResponse.fromBuffer(value));

  ArtistServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateArtistResponse> createArtist($0.CreateArtistRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createArtist, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListArtistsResponse> listArtists($0.ListArtistsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listArtists, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetArtistResponse> getArtist($0.GetArtistRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getArtist, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetArtistsResponse> getArtists($0.GetArtistsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getArtists, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateArtistResponse> updateArtist($0.UpdateArtistRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateArtist, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteArtistResponse> deleteArtist($0.DeleteArtistRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteArtist, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListArtistSongsResponse> listArtistSongs($0.ListArtistSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listArtistSongs, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ArtistService')
abstract class ArtistServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ArtistService';

  ArtistServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateArtistRequest, $0.CreateArtistResponse>(
        'CreateArtist',
        createArtist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateArtistRequest.fromBuffer(value),
        ($0.CreateArtistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListArtistsRequest, $0.ListArtistsResponse>(
        'ListArtists',
        listArtists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListArtistsRequest.fromBuffer(value),
        ($0.ListArtistsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetArtistRequest, $0.GetArtistResponse>(
        'GetArtist',
        getArtist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetArtistRequest.fromBuffer(value),
        ($0.GetArtistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetArtistsRequest, $0.GetArtistsResponse>(
        'GetArtists',
        getArtists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetArtistsRequest.fromBuffer(value),
        ($0.GetArtistsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateArtistRequest, $0.UpdateArtistResponse>(
        'UpdateArtist',
        updateArtist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateArtistRequest.fromBuffer(value),
        ($0.UpdateArtistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteArtistRequest, $0.DeleteArtistResponse>(
        'DeleteArtist',
        deleteArtist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteArtistRequest.fromBuffer(value),
        ($0.DeleteArtistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListArtistSongsRequest, $0.ListArtistSongsResponse>(
        'ListArtistSongs',
        listArtistSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListArtistSongsRequest.fromBuffer(value),
        ($0.ListArtistSongsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateArtistResponse> createArtist_Pre($grpc.ServiceCall call, $async.Future<$0.CreateArtistRequest> request) async {
    return createArtist(call, await request);
  }

  $async.Future<$0.ListArtistsResponse> listArtists_Pre($grpc.ServiceCall call, $async.Future<$0.ListArtistsRequest> request) async {
    return listArtists(call, await request);
  }

  $async.Future<$0.GetArtistResponse> getArtist_Pre($grpc.ServiceCall call, $async.Future<$0.GetArtistRequest> request) async {
    return getArtist(call, await request);
  }

  $async.Future<$0.GetArtistsResponse> getArtists_Pre($grpc.ServiceCall call, $async.Future<$0.GetArtistsRequest> request) async {
    return getArtists(call, await request);
  }

  $async.Future<$0.UpdateArtistResponse> updateArtist_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateArtistRequest> request) async {
    return updateArtist(call, await request);
  }

  $async.Future<$0.DeleteArtistResponse> deleteArtist_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteArtistRequest> request) async {
    return deleteArtist(call, await request);
  }

  $async.Future<$0.ListArtistSongsResponse> listArtistSongs_Pre($grpc.ServiceCall call, $async.Future<$0.ListArtistSongsRequest> request) async {
    return listArtistSongs(call, await request);
  }

  $async.Future<$0.CreateArtistResponse> createArtist($grpc.ServiceCall call, $0.CreateArtistRequest request);
  $async.Future<$0.ListArtistsResponse> listArtists($grpc.ServiceCall call, $0.ListArtistsRequest request);
  $async.Future<$0.GetArtistResponse> getArtist($grpc.ServiceCall call, $0.GetArtistRequest request);
  $async.Future<$0.GetArtistsResponse> getArtists($grpc.ServiceCall call, $0.GetArtistsRequest request);
  $async.Future<$0.UpdateArtistResponse> updateArtist($grpc.ServiceCall call, $0.UpdateArtistRequest request);
  $async.Future<$0.DeleteArtistResponse> deleteArtist($grpc.ServiceCall call, $0.DeleteArtistRequest request);
  $async.Future<$0.ListArtistSongsResponse> listArtistSongs($grpc.ServiceCall call, $0.ListArtistSongsRequest request);
}
