//
//  Generated code. Do not modify.
//  source: bst/v1/comment_service.proto
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

import 'comment_service.pb.dart' as $2;
import 'communication.pb.dart' as $3;

export 'comment_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.CommentService')
class CommentServiceClient extends $grpc.Client {
  static final _$getComment = $grpc.ClientMethod<$2.GetCommentRequest, $3.Comment>(
      '/bst.v1.CommentService/GetComment',
      ($2.GetCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Comment.fromBuffer(value));
  static final _$postComment = $grpc.ClientMethod<$2.PostCommentRequest, $3.Comment>(
      '/bst.v1.CommentService/PostComment',
      ($2.PostCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Comment.fromBuffer(value));
  static final _$updateComment = $grpc.ClientMethod<$2.UpdateCommentRequest, $3.Comment>(
      '/bst.v1.CommentService/UpdateComment',
      ($2.UpdateCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Comment.fromBuffer(value));
  static final _$deleteComment = $grpc.ClientMethod<$2.DeleteCommentRequest, $2.DeleteCommentResponse>(
      '/bst.v1.CommentService/DeleteComment',
      ($2.DeleteCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteCommentResponse.fromBuffer(value));

  CommentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Comment> getComment($2.GetCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComment, request, options: options);
  }

  $grpc.ResponseFuture<$3.Comment> postComment($2.PostCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postComment, request, options: options);
  }

  $grpc.ResponseFuture<$3.Comment> updateComment($2.UpdateCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateComment, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteCommentResponse> deleteComment($2.DeleteCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteComment, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.CommentService')
abstract class CommentServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.CommentService';

  CommentServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetCommentRequest, $3.Comment>(
        'GetComment',
        getComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetCommentRequest.fromBuffer(value),
        ($3.Comment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PostCommentRequest, $3.Comment>(
        'PostComment',
        postComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PostCommentRequest.fromBuffer(value),
        ($3.Comment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateCommentRequest, $3.Comment>(
        'UpdateComment',
        updateComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateCommentRequest.fromBuffer(value),
        ($3.Comment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteCommentRequest, $2.DeleteCommentResponse>(
        'DeleteComment',
        deleteComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteCommentRequest.fromBuffer(value),
        ($2.DeleteCommentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.Comment> getComment_Pre($grpc.ServiceCall call, $async.Future<$2.GetCommentRequest> request) async {
    return getComment(call, await request);
  }

  $async.Future<$3.Comment> postComment_Pre($grpc.ServiceCall call, $async.Future<$2.PostCommentRequest> request) async {
    return postComment(call, await request);
  }

  $async.Future<$3.Comment> updateComment_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateCommentRequest> request) async {
    return updateComment(call, await request);
  }

  $async.Future<$2.DeleteCommentResponse> deleteComment_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteCommentRequest> request) async {
    return deleteComment(call, await request);
  }

  $async.Future<$3.Comment> getComment($grpc.ServiceCall call, $2.GetCommentRequest request);
  $async.Future<$3.Comment> postComment($grpc.ServiceCall call, $2.PostCommentRequest request);
  $async.Future<$3.Comment> updateComment($grpc.ServiceCall call, $2.UpdateCommentRequest request);
  $async.Future<$2.DeleteCommentResponse> deleteComment($grpc.ServiceCall call, $2.DeleteCommentRequest request);
}
