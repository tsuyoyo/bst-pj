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
import 'thread_service.pb.dart' as $26;

export 'thread_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ThreadService')
class ThreadServiceClient extends $grpc.Client {
  static final _$getThread = $grpc.ClientMethod<$26.GetThreadRequest, $3.Thread>(
      '/bst.v1.ThreadService/GetThread',
      ($26.GetThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$getThreadsInSession = $grpc.ClientMethod<$26.GetThreadsInSessionRequest, $26.GetThreadsInSessionResponse>(
      '/bst.v1.ThreadService/GetThreadsInSession',
      ($26.GetThreadsInSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.GetThreadsInSessionResponse.fromBuffer(value));
  static final _$getThreadComments = $grpc.ClientMethod<$26.GetThreadCommentsRequest, $26.GetThreadCommentsResponse>(
      '/bst.v1.ThreadService/GetThreadComments',
      ($26.GetThreadCommentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.GetThreadCommentsResponse.fromBuffer(value));
  static final _$createThread = $grpc.ClientMethod<$26.PostThreadRequest, $3.Thread>(
      '/bst.v1.ThreadService/CreateThread',
      ($26.PostThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$createThreadInSession = $grpc.ClientMethod<$26.PostThreadInSessionRequest, $3.Thread>(
      '/bst.v1.ThreadService/CreateThreadInSession',
      ($26.PostThreadInSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$updateThreadTitle = $grpc.ClientMethod<$26.UpdateThreadTitleRequest, $3.Thread>(
      '/bst.v1.ThreadService/UpdateThreadTitle',
      ($26.UpdateThreadTitleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$updateThreadDescription = $grpc.ClientMethod<$26.UpdateThreadDescriptionRequest, $3.Thread>(
      '/bst.v1.ThreadService/UpdateThreadDescription',
      ($26.UpdateThreadDescriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$deleteThread = $grpc.ClientMethod<$26.DeleteThreadRequest, $26.DeleteThreadResponse>(
      '/bst.v1.ThreadService/DeleteThread',
      ($26.DeleteThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $26.DeleteThreadResponse.fromBuffer(value));

  ThreadServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Thread> getThread($26.GetThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThread, request, options: options);
  }

  $grpc.ResponseFuture<$26.GetThreadsInSessionResponse> getThreadsInSession($26.GetThreadsInSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThreadsInSession, request, options: options);
  }

  $grpc.ResponseFuture<$26.GetThreadCommentsResponse> getThreadComments($26.GetThreadCommentsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThreadComments, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> createThread($26.PostThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> createThreadInSession($26.PostThreadInSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createThreadInSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> updateThreadTitle($26.UpdateThreadTitleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateThreadTitle, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> updateThreadDescription($26.UpdateThreadDescriptionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateThreadDescription, request, options: options);
  }

  $grpc.ResponseFuture<$26.DeleteThreadResponse> deleteThread($26.DeleteThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteThread, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ThreadService')
abstract class ThreadServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ThreadService';

  ThreadServiceBase() {
    $addMethod($grpc.ServiceMethod<$26.GetThreadRequest, $3.Thread>(
        'GetThread',
        getThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.GetThreadRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.GetThreadsInSessionRequest, $26.GetThreadsInSessionResponse>(
        'GetThreadsInSession',
        getThreadsInSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.GetThreadsInSessionRequest.fromBuffer(value),
        ($26.GetThreadsInSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.GetThreadCommentsRequest, $26.GetThreadCommentsResponse>(
        'GetThreadComments',
        getThreadComments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.GetThreadCommentsRequest.fromBuffer(value),
        ($26.GetThreadCommentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.PostThreadRequest, $3.Thread>(
        'CreateThread',
        createThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.PostThreadRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.PostThreadInSessionRequest, $3.Thread>(
        'CreateThreadInSession',
        createThreadInSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.PostThreadInSessionRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.UpdateThreadTitleRequest, $3.Thread>(
        'UpdateThreadTitle',
        updateThreadTitle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.UpdateThreadTitleRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.UpdateThreadDescriptionRequest, $3.Thread>(
        'UpdateThreadDescription',
        updateThreadDescription_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.UpdateThreadDescriptionRequest.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.DeleteThreadRequest, $26.DeleteThreadResponse>(
        'DeleteThread',
        deleteThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $26.DeleteThreadRequest.fromBuffer(value),
        ($26.DeleteThreadResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.Thread> getThread_Pre($grpc.ServiceCall call, $async.Future<$26.GetThreadRequest> request) async {
    return getThread(call, await request);
  }

  $async.Future<$26.GetThreadsInSessionResponse> getThreadsInSession_Pre($grpc.ServiceCall call, $async.Future<$26.GetThreadsInSessionRequest> request) async {
    return getThreadsInSession(call, await request);
  }

  $async.Future<$26.GetThreadCommentsResponse> getThreadComments_Pre($grpc.ServiceCall call, $async.Future<$26.GetThreadCommentsRequest> request) async {
    return getThreadComments(call, await request);
  }

  $async.Future<$3.Thread> createThread_Pre($grpc.ServiceCall call, $async.Future<$26.PostThreadRequest> request) async {
    return createThread(call, await request);
  }

  $async.Future<$3.Thread> createThreadInSession_Pre($grpc.ServiceCall call, $async.Future<$26.PostThreadInSessionRequest> request) async {
    return createThreadInSession(call, await request);
  }

  $async.Future<$3.Thread> updateThreadTitle_Pre($grpc.ServiceCall call, $async.Future<$26.UpdateThreadTitleRequest> request) async {
    return updateThreadTitle(call, await request);
  }

  $async.Future<$3.Thread> updateThreadDescription_Pre($grpc.ServiceCall call, $async.Future<$26.UpdateThreadDescriptionRequest> request) async {
    return updateThreadDescription(call, await request);
  }

  $async.Future<$26.DeleteThreadResponse> deleteThread_Pre($grpc.ServiceCall call, $async.Future<$26.DeleteThreadRequest> request) async {
    return deleteThread(call, await request);
  }

  $async.Future<$3.Thread> getThread($grpc.ServiceCall call, $26.GetThreadRequest request);
  $async.Future<$26.GetThreadsInSessionResponse> getThreadsInSession($grpc.ServiceCall call, $26.GetThreadsInSessionRequest request);
  $async.Future<$26.GetThreadCommentsResponse> getThreadComments($grpc.ServiceCall call, $26.GetThreadCommentsRequest request);
  $async.Future<$3.Thread> createThread($grpc.ServiceCall call, $26.PostThreadRequest request);
  $async.Future<$3.Thread> createThreadInSession($grpc.ServiceCall call, $26.PostThreadInSessionRequest request);
  $async.Future<$3.Thread> updateThreadTitle($grpc.ServiceCall call, $26.UpdateThreadTitleRequest request);
  $async.Future<$3.Thread> updateThreadDescription($grpc.ServiceCall call, $26.UpdateThreadDescriptionRequest request);
  $async.Future<$26.DeleteThreadResponse> deleteThread($grpc.ServiceCall call, $26.DeleteThreadRequest request);
}
