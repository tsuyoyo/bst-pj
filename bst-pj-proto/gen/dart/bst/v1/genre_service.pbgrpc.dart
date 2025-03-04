//
//  Generated code. Do not modify.
//  source: bst/v1/genre_service.proto
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

import 'genre_service.pb.dart' as $5;

export 'genre_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.GenreService')
class GenreServiceClient extends $grpc.Client {
  static final _$getGenre = $grpc.ClientMethod<$5.GetGenreRequest, $5.GetGenreResponse>(
      '/bst.v1.GenreService/GetGenre',
      ($5.GetGenreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetGenreResponse.fromBuffer(value));
  static final _$createGenre = $grpc.ClientMethod<$5.CreateGenreRequest, $5.CreateGenreResponse>(
      '/bst.v1.GenreService/CreateGenre',
      ($5.CreateGenreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateGenreResponse.fromBuffer(value));
  static final _$listGenres = $grpc.ClientMethod<$5.ListGenresRequest, $5.ListGenresResponse>(
      '/bst.v1.GenreService/ListGenres',
      ($5.ListGenresRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListGenresResponse.fromBuffer(value));
  static final _$updateGenre = $grpc.ClientMethod<$5.UpdateGenreRequest, $5.UpdateGenreResponse>(
      '/bst.v1.GenreService/UpdateGenre',
      ($5.UpdateGenreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateGenreResponse.fromBuffer(value));

  GenreServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.GetGenreResponse> getGenre($5.GetGenreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGenre, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateGenreResponse> createGenre($5.CreateGenreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGenre, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListGenresResponse> listGenres($5.ListGenresRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGenres, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateGenreResponse> updateGenre($5.UpdateGenreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateGenre, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.GenreService')
abstract class GenreServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.GenreService';

  GenreServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.GetGenreRequest, $5.GetGenreResponse>(
        'GetGenre',
        getGenre_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetGenreRequest.fromBuffer(value),
        ($5.GetGenreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateGenreRequest, $5.CreateGenreResponse>(
        'CreateGenre',
        createGenre_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateGenreRequest.fromBuffer(value),
        ($5.CreateGenreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListGenresRequest, $5.ListGenresResponse>(
        'ListGenres',
        listGenres_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListGenresRequest.fromBuffer(value),
        ($5.ListGenresResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateGenreRequest, $5.UpdateGenreResponse>(
        'UpdateGenre',
        updateGenre_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateGenreRequest.fromBuffer(value),
        ($5.UpdateGenreResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.GetGenreResponse> getGenre_Pre($grpc.ServiceCall call, $async.Future<$5.GetGenreRequest> request) async {
    return getGenre(call, await request);
  }

  $async.Future<$5.CreateGenreResponse> createGenre_Pre($grpc.ServiceCall call, $async.Future<$5.CreateGenreRequest> request) async {
    return createGenre(call, await request);
  }

  $async.Future<$5.ListGenresResponse> listGenres_Pre($grpc.ServiceCall call, $async.Future<$5.ListGenresRequest> request) async {
    return listGenres(call, await request);
  }

  $async.Future<$5.UpdateGenreResponse> updateGenre_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateGenreRequest> request) async {
    return updateGenre(call, await request);
  }

  $async.Future<$5.GetGenreResponse> getGenre($grpc.ServiceCall call, $5.GetGenreRequest request);
  $async.Future<$5.CreateGenreResponse> createGenre($grpc.ServiceCall call, $5.CreateGenreRequest request);
  $async.Future<$5.ListGenresResponse> listGenres($grpc.ServiceCall call, $5.ListGenresRequest request);
  $async.Future<$5.UpdateGenreResponse> updateGenre($grpc.ServiceCall call, $5.UpdateGenreRequest request);
}
