//
//  Generated code. Do not modify.
//  source: bst/v1/session_service.proto
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

import 'session_service.pb.dart' as $16;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$16.CreateSessionRequest, $16.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($16.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$16.GetSessionRequest, $16.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($16.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$16.UpdateSessionRequest, $16.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($16.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$16.UpdateSessionStatusRequest, $16.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($16.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$16.CancelSessionRequest, $16.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($16.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$16.DuplicateSessionRequest, $16.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($16.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DuplicateSessionResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$16.UpdateSessionScheduleRequest, $16.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($16.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$16.UpdateSessionLocationRequest, $16.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($16.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$16.AddSessionSongResourceRequest, $16.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($16.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$16.ListSessionSongResourcesRequest, $16.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($16.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$16.DeleteSessionSongResourceRequest, $16.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($16.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$16.ListSessionOrganizersRequest, $16.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($16.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$16.AddSessionOrganizerRequest, $16.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($16.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$16.DeleteSessionOrganizerRequest, $16.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($16.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$16.CreateSessionThreadRequest, $16.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($16.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$16.ListSessionThreadsRequest, $16.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($16.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$16.CreateSongThreadRequest, $16.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($16.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$16.GetSessionThreadRequest, $16.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($16.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$16.DeleteSessionThreadRequest, $16.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($16.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$16.CreateSessionNotificationRequest, $16.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($16.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$16.GetSessionTimetableRequest, $16.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($16.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$16.UpdateSessionTimetableRequest, $16.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($16.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$16.GetOptimizedTimetableRequest, $16.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($16.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$16.GetTimetableProgressRequest, $16.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($16.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$16.UpdateTimetableProgressRequest, $16.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($16.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$16.AddSessionResourceRequest, $16.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($16.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$16.ListSessionResourcesRequest, $16.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($16.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$16.DeleteSessionResourceRequest, $16.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($16.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$16.AddSessionFeedbackRequest, $16.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($16.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$16.ListSessionFeedbacksRequest, $16.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($16.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$16.ListRelatedSessionsRequest, $16.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($16.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$16.AddRelatedSessionRequest, $16.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($16.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddRelatedSessionResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.CreateSessionResponse> createSession($16.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetSessionResponse> getSession($16.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSessionResponse> updateSession($16.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSessionStatusResponse> updateSessionStatus($16.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$16.CancelSessionResponse> cancelSession($16.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$16.DuplicateSessionResponse> duplicateSession($16.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSessionScheduleResponse> updateSessionSchedule($16.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSessionLocationResponse> updateSessionLocation($16.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddSessionSongResourceResponse> addSessionSongResource($16.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListSessionSongResourcesResponse> listSessionSongResources($16.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSessionSongResourceResponse> deleteSessionSongResource($16.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListSessionOrganizersResponse> listSessionOrganizers($16.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddSessionOrganizerResponse> addSessionOrganizer($16.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSessionOrganizerResponse> deleteSessionOrganizer($16.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$16.CreateSessionThreadResponse> createSessionThread($16.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListSessionThreadsResponse> listSessionThreads($16.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$16.CreateSongThreadResponse> createSongThread($16.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetSessionThreadResponse> getSessionThread($16.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSessionThreadResponse> deleteSessionThread($16.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$16.CreateSessionNotificationResponse> createSessionNotification($16.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetSessionTimetableResponse> getSessionTimetable($16.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSessionTimetableResponse> updateSessionTimetable($16.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetOptimizedTimetableResponse> getOptimizedTimetable($16.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetTimetableProgressResponse> getTimetableProgress($16.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateTimetableProgressResponse> updateTimetableProgress($16.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddSessionResourceResponse> addSessionResource($16.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListSessionResourcesResponse> listSessionResources($16.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSessionResourceResponse> deleteSessionResource($16.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddSessionFeedbackResponse> addSessionFeedback($16.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListSessionFeedbacksResponse> listSessionFeedbacks($16.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$16.ListRelatedSessionsResponse> listRelatedSessions($16.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddRelatedSessionResponse> addRelatedSession($16.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.CreateSessionRequest, $16.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateSessionRequest.fromBuffer(value),
        ($16.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetSessionRequest, $16.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetSessionRequest.fromBuffer(value),
        ($16.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSessionRequest, $16.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSessionRequest.fromBuffer(value),
        ($16.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSessionStatusRequest, $16.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSessionStatusRequest.fromBuffer(value),
        ($16.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.CancelSessionRequest, $16.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CancelSessionRequest.fromBuffer(value),
        ($16.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DuplicateSessionRequest, $16.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DuplicateSessionRequest.fromBuffer(value),
        ($16.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSessionScheduleRequest, $16.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSessionScheduleRequest.fromBuffer(value),
        ($16.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSessionLocationRequest, $16.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSessionLocationRequest.fromBuffer(value),
        ($16.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddSessionSongResourceRequest, $16.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSessionSongResourceRequest.fromBuffer(value),
        ($16.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListSessionSongResourcesRequest, $16.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSessionSongResourcesRequest.fromBuffer(value),
        ($16.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSessionSongResourceRequest, $16.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($16.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListSessionOrganizersRequest, $16.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSessionOrganizersRequest.fromBuffer(value),
        ($16.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddSessionOrganizerRequest, $16.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSessionOrganizerRequest.fromBuffer(value),
        ($16.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSessionOrganizerRequest, $16.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($16.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.CreateSessionThreadRequest, $16.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateSessionThreadRequest.fromBuffer(value),
        ($16.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListSessionThreadsRequest, $16.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSessionThreadsRequest.fromBuffer(value),
        ($16.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.CreateSongThreadRequest, $16.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateSongThreadRequest.fromBuffer(value),
        ($16.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetSessionThreadRequest, $16.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetSessionThreadRequest.fromBuffer(value),
        ($16.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSessionThreadRequest, $16.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSessionThreadRequest.fromBuffer(value),
        ($16.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.CreateSessionNotificationRequest, $16.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateSessionNotificationRequest.fromBuffer(value),
        ($16.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetSessionTimetableRequest, $16.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetSessionTimetableRequest.fromBuffer(value),
        ($16.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSessionTimetableRequest, $16.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSessionTimetableRequest.fromBuffer(value),
        ($16.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetOptimizedTimetableRequest, $16.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetOptimizedTimetableRequest.fromBuffer(value),
        ($16.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetTimetableProgressRequest, $16.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetTimetableProgressRequest.fromBuffer(value),
        ($16.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateTimetableProgressRequest, $16.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateTimetableProgressRequest.fromBuffer(value),
        ($16.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddSessionResourceRequest, $16.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSessionResourceRequest.fromBuffer(value),
        ($16.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListSessionResourcesRequest, $16.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSessionResourcesRequest.fromBuffer(value),
        ($16.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSessionResourceRequest, $16.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSessionResourceRequest.fromBuffer(value),
        ($16.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddSessionFeedbackRequest, $16.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSessionFeedbackRequest.fromBuffer(value),
        ($16.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListSessionFeedbacksRequest, $16.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSessionFeedbacksRequest.fromBuffer(value),
        ($16.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ListRelatedSessionsRequest, $16.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListRelatedSessionsRequest.fromBuffer(value),
        ($16.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddRelatedSessionRequest, $16.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddRelatedSessionRequest.fromBuffer(value),
        ($16.AddRelatedSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$16.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$16.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$16.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$16.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$16.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$16.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$16.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$16.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$16.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$16.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$16.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$16.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$16.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$16.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$16.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$16.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$16.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$16.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$16.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$16.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$16.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$16.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$16.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$16.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$16.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$16.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$16.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$16.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$16.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$16.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$16.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$16.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$16.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$16.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$16.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$16.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$16.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$16.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$16.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$16.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$16.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$16.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$16.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$16.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$16.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$16.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$16.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$16.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$16.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$16.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$16.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$16.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$16.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$16.CreateSessionResponse> createSession($grpc.ServiceCall call, $16.CreateSessionRequest request);
  $async.Future<$16.GetSessionResponse> getSession($grpc.ServiceCall call, $16.GetSessionRequest request);
  $async.Future<$16.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $16.UpdateSessionRequest request);
  $async.Future<$16.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $16.UpdateSessionStatusRequest request);
  $async.Future<$16.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $16.CancelSessionRequest request);
  $async.Future<$16.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $16.DuplicateSessionRequest request);
  $async.Future<$16.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $16.UpdateSessionScheduleRequest request);
  $async.Future<$16.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $16.UpdateSessionLocationRequest request);
  $async.Future<$16.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $16.AddSessionSongResourceRequest request);
  $async.Future<$16.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $16.ListSessionSongResourcesRequest request);
  $async.Future<$16.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $16.DeleteSessionSongResourceRequest request);
  $async.Future<$16.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $16.ListSessionOrganizersRequest request);
  $async.Future<$16.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $16.AddSessionOrganizerRequest request);
  $async.Future<$16.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $16.DeleteSessionOrganizerRequest request);
  $async.Future<$16.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $16.CreateSessionThreadRequest request);
  $async.Future<$16.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $16.ListSessionThreadsRequest request);
  $async.Future<$16.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $16.CreateSongThreadRequest request);
  $async.Future<$16.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $16.GetSessionThreadRequest request);
  $async.Future<$16.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $16.DeleteSessionThreadRequest request);
  $async.Future<$16.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $16.CreateSessionNotificationRequest request);
  $async.Future<$16.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $16.GetSessionTimetableRequest request);
  $async.Future<$16.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $16.UpdateSessionTimetableRequest request);
  $async.Future<$16.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $16.GetOptimizedTimetableRequest request);
  $async.Future<$16.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $16.GetTimetableProgressRequest request);
  $async.Future<$16.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $16.UpdateTimetableProgressRequest request);
  $async.Future<$16.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $16.AddSessionResourceRequest request);
  $async.Future<$16.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $16.ListSessionResourcesRequest request);
  $async.Future<$16.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $16.DeleteSessionResourceRequest request);
  $async.Future<$16.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $16.AddSessionFeedbackRequest request);
  $async.Future<$16.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $16.ListSessionFeedbacksRequest request);
  $async.Future<$16.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $16.ListRelatedSessionsRequest request);
  $async.Future<$16.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $16.AddRelatedSessionRequest request);
}
