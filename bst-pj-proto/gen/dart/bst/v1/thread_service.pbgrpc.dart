//
//  Generated code. Do not modify.
//  source: bst/v1/thread_service.proto
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

import 'communication.pb.dart' as $3;
import 'thread_service.pb.dart' as $20;

export 'thread_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ThreadService')
class ThreadServiceClient extends $grpc.Client {
  static final _$getThread = $grpc.ClientMethod<$20.GetThreadRequest, $3.Thread>(
      '/bst.v1.ThreadService/GetThread',
      ($20.GetThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$getThreadsInSession = $grpc.ClientMethod<$20.GetThreadsInSessionRequest, $20.GetThreadsInSessionResponse>(
      '/bst.v1.ThreadService/GetThreadsInSession',
      ($20.GetThreadsInSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.GetThreadsInSessionResponse.fromBuffer(value));
  static final _$getThreadComments = $grpc.ClientMethod<$20.GetThreadCommentsRequest, $20.GetThreadCommentsResponse>(
      '/bst.v1.ThreadService/GetThreadComments',
      ($20.GetThreadCommentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.GetThreadCommentsResponse.fromBuffer(value));
  static final _$createThread = $grpc.ClientMethod<$20.PostThreadRequest, $3.Thread>(
      '/bst.v1.ThreadService/CreateThread',
      ($20.PostThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$createThreadInSession = $grpc.ClientMethod<$20.PostThreadInSessionRequest, $3.Thread>(
      '/bst.v1.ThreadService/CreateThreadInSession',
      ($20.PostThreadInSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$updateThreadTitle = $grpc.ClientMethod<$20.UpdateThreadTitleRequest, $3.Thread>(
      '/bst.v1.ThreadService/UpdateThreadTitle',
      ($20.UpdateThreadTitleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$updateThreadDescription = $grpc.ClientMethod<$20.UpdateThreadDescriptionRequest, $3.Thread>(
      '/bst.v1.ThreadService/UpdateThreadDescription',
      ($20.UpdateThreadDescriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$deleteThread = $grpc.ClientMethod<$20.DeleteThreadRequest, $20.DeleteThreadResponse>(
      '/bst.v1.ThreadService/DeleteThread',
      ($20.DeleteThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $20.DeleteThreadResponse.fromBuffer(value));

  ThreadServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Thread> getThread($20.GetThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThread, request, options: options);
  }

  $grpc.ResponseFuture<$20.GetThreadsInSessionResponse> getThreadsInSession($20.GetThreadsInSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThreadsInSession, request, options: options);
  }

  $grpc.ResponseFuture<$20.GetThreadCommentsResponse> getThreadComments($20.GetThreadCommentsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThreadComments, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> createThread($20.PostThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> createThreadInSession($20.PostThreadInSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createThreadInSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> updateThreadTitle($20.UpdateThreadTitleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateThreadTitle, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> updateThreadDescription($20.UpdateThreadDescriptionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateThreadDescription, request, options: options);
  }

  $grpc.ResponseFuture<$20.DeleteThreadResponse> deleteThread($20.DeleteThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteThread, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ThreadService')
abstract class ThreadServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ThreadService';

  ThreadServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.GetThreadRequest, $3.Thread>(
        'GetThread',
        getThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.GetThreadRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetThreadsInSessionRequest, $20.GetThreadsInSessionResponse>(
        'GetThreadsInSession',
        getThreadsInSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.GetThreadsInSessionRequest.fromBuffer(value),
        ($20.GetThreadsInSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetThreadCommentsRequest, $20.GetThreadCommentsResponse>(
        'GetThreadComments',
        getThreadComments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.GetThreadCommentsRequest.fromBuffer(value),
        ($20.GetThreadCommentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.PostThreadRequest, $3.Thread>(
        'CreateThread',
        createThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.PostThreadRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.PostThreadInSessionRequest, $3.Thread>(
        'CreateThreadInSession',
        createThreadInSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.PostThreadInSessionRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.UpdateThreadTitleRequest, $3.Thread>(
        'UpdateThreadTitle',
        updateThreadTitle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.UpdateThreadTitleRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.UpdateThreadDescriptionRequest, $3.Thread>(
        'UpdateThreadDescription',
        updateThreadDescription_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.UpdateThreadDescriptionRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.DeleteThreadRequest, $20.DeleteThreadResponse>(
        'DeleteThread',
        deleteThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $20.DeleteThreadRequest.fromBuffer(value),
        ($20.DeleteThreadResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.Thread> getThread_Pre($grpc.ServiceCall call, $async.Future<$20.GetThreadRequest> request) async {
    return getThread(call, await request);
  }

  $async.Future<$20.GetThreadsInSessionResponse> getThreadsInSession_Pre($grpc.ServiceCall call, $async.Future<$20.GetThreadsInSessionRequest> request) async {
    return getThreadsInSession(call, await request);
  }

  $async.Future<$20.GetThreadCommentsResponse> getThreadComments_Pre($grpc.ServiceCall call, $async.Future<$20.GetThreadCommentsRequest> request) async {
    return getThreadComments(call, await request);
  }

  $async.Future<$3.Thread> createThread_Pre($grpc.ServiceCall call, $async.Future<$20.PostThreadRequest> request) async {
    return createThread(call, await request);
  }

  $async.Future<$3.Thread> createThreadInSession_Pre($grpc.ServiceCall call, $async.Future<$20.PostThreadInSessionRequest> request) async {
    return createThreadInSession(call, await request);
  }

  $async.Future<$3.Thread> updateThreadTitle_Pre($grpc.ServiceCall call, $async.Future<$20.UpdateThreadTitleRequest> request) async {
    return updateThreadTitle(call, await request);
  }

  $async.Future<$3.Thread> updateThreadDescription_Pre($grpc.ServiceCall call, $async.Future<$20.UpdateThreadDescriptionRequest> request) async {
    return updateThreadDescription(call, await request);
  }

  $async.Future<$20.DeleteThreadResponse> deleteThread_Pre($grpc.ServiceCall call, $async.Future<$20.DeleteThreadRequest> request) async {
    return deleteThread(call, await request);
  }

  $async.Future<$3.Thread> getThread($grpc.ServiceCall call, $20.GetThreadRequest request);
  $async.Future<$20.GetThreadsInSessionResponse> getThreadsInSession($grpc.ServiceCall call, $20.GetThreadsInSessionRequest request);
  $async.Future<$20.GetThreadCommentsResponse> getThreadComments($grpc.ServiceCall call, $20.GetThreadCommentsRequest request);
  $async.Future<$3.Thread> createThread($grpc.ServiceCall call, $20.PostThreadRequest request);
  $async.Future<$3.Thread> createThreadInSession($grpc.ServiceCall call, $20.PostThreadInSessionRequest request);
  $async.Future<$3.Thread> updateThreadTitle($grpc.ServiceCall call, $20.UpdateThreadTitleRequest request);
  $async.Future<$3.Thread> updateThreadDescription($grpc.ServiceCall call, $20.UpdateThreadDescriptionRequest request);
  $async.Future<$20.DeleteThreadResponse> deleteThread($grpc.ServiceCall call, $20.DeleteThreadRequest request);
}
