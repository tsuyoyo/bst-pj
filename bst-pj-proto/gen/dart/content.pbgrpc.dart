//
//  Generated code. Do not modify.
//  source: content.proto
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

import 'content.pb.dart' as $0;

export 'content.pb.dart';

@$pb.GrpcServiceName('bst.v1.ContentService')
class ContentServiceClient extends $grpc.Client {
  static final _$createSong = $grpc.ClientMethod<$0.CreateSongRequest, $0.CreateSongResponse>(
      '/bst.v1.ContentService/CreateSong',
      ($0.CreateSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateSongResponse.fromBuffer(value));
  static final _$getSong = $grpc.ClientMethod<$0.GetSongRequest, $0.GetSongResponse>(
      '/bst.v1.ContentService/GetSong',
      ($0.GetSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSongResponse.fromBuffer(value));
  static final _$listSongs = $grpc.ClientMethod<$0.ListSongsRequest, $0.ListSongsResponse>(
      '/bst.v1.ContentService/ListSongs',
      ($0.ListSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListSongsResponse.fromBuffer(value));
  static final _$createComment = $grpc.ClientMethod<$0.CreateCommentRequest, $0.CreateCommentResponse>(
      '/bst.v1.ContentService/CreateComment',
      ($0.CreateCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateCommentResponse.fromBuffer(value));
  static final _$getComment = $grpc.ClientMethod<$0.GetCommentRequest, $0.GetCommentResponse>(
      '/bst.v1.ContentService/GetComment',
      ($0.GetCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCommentResponse.fromBuffer(value));
  static final _$listComments = $grpc.ClientMethod<$0.ListCommentsRequest, $0.ListCommentsResponse>(
      '/bst.v1.ContentService/ListComments',
      ($0.ListCommentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListCommentsResponse.fromBuffer(value));

  ContentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateSongResponse> createSong($0.CreateSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSong, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSongResponse> getSong($0.GetSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListSongsResponse> listSongs($0.ListSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateCommentResponse> createComment($0.CreateCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCommentResponse> getComment($0.GetCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComment, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListCommentsResponse> listComments($0.ListCommentsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listComments, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ContentService')
abstract class ContentServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ContentService';

  ContentServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateSongRequest, $0.CreateSongResponse>(
        'CreateSong',
        createSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateSongRequest.fromBuffer(value),
        ($0.CreateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSongRequest, $0.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSongRequest.fromBuffer(value),
        ($0.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListSongsRequest, $0.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListSongsRequest.fromBuffer(value),
        ($0.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateCommentRequest, $0.CreateCommentResponse>(
        'CreateComment',
        createComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateCommentRequest.fromBuffer(value),
        ($0.CreateCommentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCommentRequest, $0.GetCommentResponse>(
        'GetComment',
        getComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCommentRequest.fromBuffer(value),
        ($0.GetCommentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListCommentsRequest, $0.ListCommentsResponse>(
        'ListComments',
        listComments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListCommentsRequest.fromBuffer(value),
        ($0.ListCommentsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateSongResponse> createSong_Pre($grpc.ServiceCall call, $async.Future<$0.CreateSongRequest> request) async {
    return createSong(call, await request);
  }

  $async.Future<$0.GetSongResponse> getSong_Pre($grpc.ServiceCall call, $async.Future<$0.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$0.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call, $async.Future<$0.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$0.CreateCommentResponse> createComment_Pre($grpc.ServiceCall call, $async.Future<$0.CreateCommentRequest> request) async {
    return createComment(call, await request);
  }

  $async.Future<$0.GetCommentResponse> getComment_Pre($grpc.ServiceCall call, $async.Future<$0.GetCommentRequest> request) async {
    return getComment(call, await request);
  }

  $async.Future<$0.ListCommentsResponse> listComments_Pre($grpc.ServiceCall call, $async.Future<$0.ListCommentsRequest> request) async {
    return listComments(call, await request);
  }

  $async.Future<$0.CreateSongResponse> createSong($grpc.ServiceCall call, $0.CreateSongRequest request);
  $async.Future<$0.GetSongResponse> getSong($grpc.ServiceCall call, $0.GetSongRequest request);
  $async.Future<$0.ListSongsResponse> listSongs($grpc.ServiceCall call, $0.ListSongsRequest request);
  $async.Future<$0.CreateCommentResponse> createComment($grpc.ServiceCall call, $0.CreateCommentRequest request);
  $async.Future<$0.GetCommentResponse> getComment($grpc.ServiceCall call, $0.GetCommentRequest request);
  $async.Future<$0.ListCommentsResponse> listComments($grpc.ServiceCall call, $0.ListCommentsRequest request);
}
