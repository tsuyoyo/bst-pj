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

import 'session_service.pb.dart' as $15;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$15.CreateSessionRequest, $15.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($15.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$15.GetSessionRequest, $15.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($15.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$15.UpdateSessionRequest, $15.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($15.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$15.UpdateSessionStatusRequest, $15.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($15.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$15.CancelSessionRequest, $15.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($15.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$15.DuplicateSessionRequest, $15.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($15.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DuplicateSessionResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$15.UpdateSessionScheduleRequest, $15.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($15.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$15.UpdateSessionLocationRequest, $15.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($15.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$15.ListSessionParticipantsRequest, $15.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($15.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$15.AddSessionParticipantRequest, $15.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($15.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$15.UpdateSessionParticipantRequest, $15.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($15.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$15.AddSongEntryRequest, $15.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($15.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$15.DeleteSongEntryRequest, $15.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($15.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$15.AddSessionSongResourceRequest, $15.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($15.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$15.ListSessionSongResourcesRequest, $15.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($15.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$15.DeleteSessionSongResourceRequest, $15.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($15.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$15.ListSessionOrganizersRequest, $15.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($15.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$15.AddSessionOrganizerRequest, $15.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($15.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$15.DeleteSessionOrganizerRequest, $15.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($15.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$15.CreateSessionThreadRequest, $15.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($15.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$15.ListSessionThreadsRequest, $15.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($15.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$15.CreateSongThreadRequest, $15.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($15.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$15.GetSessionThreadRequest, $15.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($15.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$15.DeleteSessionThreadRequest, $15.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($15.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$15.CreateSessionNotificationRequest, $15.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($15.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$15.GetSessionTimetableRequest, $15.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($15.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$15.UpdateSessionTimetableRequest, $15.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($15.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$15.GetOptimizedTimetableRequest, $15.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($15.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$15.GetTimetableProgressRequest, $15.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($15.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$15.UpdateTimetableProgressRequest, $15.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($15.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$15.AddSessionResourceRequest, $15.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($15.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$15.ListSessionResourcesRequest, $15.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($15.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$15.DeleteSessionResourceRequest, $15.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($15.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$15.AddSessionFeedbackRequest, $15.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($15.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$15.ListSessionFeedbacksRequest, $15.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($15.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$15.ListRelatedSessionsRequest, $15.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($15.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$15.AddRelatedSessionRequest, $15.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($15.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddRelatedSessionResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateSessionResponse> createSession($15.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetSessionResponse> getSession($15.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionResponse> updateSession($15.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionStatusResponse> updateSessionStatus($15.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$15.CancelSessionResponse> cancelSession($15.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$15.DuplicateSessionResponse> duplicateSession($15.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionScheduleResponse> updateSessionSchedule($15.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionLocationResponse> updateSessionLocation($15.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSessionParticipantsResponse> listSessionParticipants($15.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionParticipantResponse> addSessionParticipant($15.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionParticipantResponse> updateSessionParticipant($15.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSongEntryResponse> addSongEntry($15.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSongEntryResponse> deleteSongEntry($15.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionSongResourceResponse> addSessionSongResource($15.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSessionSongResourcesResponse> listSessionSongResources($15.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSessionSongResourceResponse> deleteSessionSongResource($15.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSessionOrganizersResponse> listSessionOrganizers($15.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionOrganizerResponse> addSessionOrganizer($15.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSessionOrganizerResponse> deleteSessionOrganizer($15.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$15.CreateSessionThreadResponse> createSessionThread($15.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSessionThreadsResponse> listSessionThreads($15.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$15.CreateSongThreadResponse> createSongThread($15.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetSessionThreadResponse> getSessionThread($15.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSessionThreadResponse> deleteSessionThread($15.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$15.CreateSessionNotificationResponse> createSessionNotification($15.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetSessionTimetableResponse> getSessionTimetable($15.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionTimetableResponse> updateSessionTimetable($15.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetOptimizedTimetableResponse> getOptimizedTimetable($15.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetTimetableProgressResponse> getTimetableProgress($15.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateTimetableProgressResponse> updateTimetableProgress($15.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionResourceResponse> addSessionResource($15.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSessionResourcesResponse> listSessionResources($15.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSessionResourceResponse> deleteSessionResource($15.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionFeedbackResponse> addSessionFeedback($15.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSessionFeedbacksResponse> listSessionFeedbacks($15.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListRelatedSessionsResponse> listRelatedSessions($15.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddRelatedSessionResponse> addRelatedSession($15.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateSessionRequest, $15.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateSessionRequest.fromBuffer(value),
        ($15.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetSessionRequest, $15.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetSessionRequest.fromBuffer(value),
        ($15.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionRequest, $15.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionRequest.fromBuffer(value),
        ($15.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionStatusRequest, $15.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionStatusRequest.fromBuffer(value),
        ($15.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CancelSessionRequest, $15.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CancelSessionRequest.fromBuffer(value),
        ($15.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DuplicateSessionRequest, $15.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DuplicateSessionRequest.fromBuffer(value),
        ($15.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionScheduleRequest, $15.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionScheduleRequest.fromBuffer(value),
        ($15.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionLocationRequest, $15.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionLocationRequest.fromBuffer(value),
        ($15.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSessionParticipantsRequest, $15.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionParticipantsRequest.fromBuffer(value),
        ($15.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionParticipantRequest, $15.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionParticipantRequest.fromBuffer(value),
        ($15.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionParticipantRequest, $15.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionParticipantRequest.fromBuffer(value),
        ($15.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSongEntryRequest, $15.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSongEntryRequest.fromBuffer(value),
        ($15.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSongEntryRequest, $15.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSongEntryRequest.fromBuffer(value),
        ($15.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionSongResourceRequest, $15.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionSongResourceRequest.fromBuffer(value),
        ($15.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSessionSongResourcesRequest, $15.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionSongResourcesRequest.fromBuffer(value),
        ($15.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSessionSongResourceRequest, $15.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($15.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSessionOrganizersRequest, $15.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionOrganizersRequest.fromBuffer(value),
        ($15.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionOrganizerRequest, $15.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionOrganizerRequest.fromBuffer(value),
        ($15.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSessionOrganizerRequest, $15.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($15.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CreateSessionThreadRequest, $15.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateSessionThreadRequest.fromBuffer(value),
        ($15.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSessionThreadsRequest, $15.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionThreadsRequest.fromBuffer(value),
        ($15.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CreateSongThreadRequest, $15.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateSongThreadRequest.fromBuffer(value),
        ($15.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetSessionThreadRequest, $15.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetSessionThreadRequest.fromBuffer(value),
        ($15.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSessionThreadRequest, $15.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSessionThreadRequest.fromBuffer(value),
        ($15.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CreateSessionNotificationRequest, $15.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateSessionNotificationRequest.fromBuffer(value),
        ($15.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetSessionTimetableRequest, $15.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetSessionTimetableRequest.fromBuffer(value),
        ($15.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionTimetableRequest, $15.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionTimetableRequest.fromBuffer(value),
        ($15.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetOptimizedTimetableRequest, $15.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetOptimizedTimetableRequest.fromBuffer(value),
        ($15.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetTimetableProgressRequest, $15.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetTimetableProgressRequest.fromBuffer(value),
        ($15.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateTimetableProgressRequest, $15.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateTimetableProgressRequest.fromBuffer(value),
        ($15.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionResourceRequest, $15.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionResourceRequest.fromBuffer(value),
        ($15.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSessionResourcesRequest, $15.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionResourcesRequest.fromBuffer(value),
        ($15.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSessionResourceRequest, $15.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSessionResourceRequest.fromBuffer(value),
        ($15.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionFeedbackRequest, $15.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionFeedbackRequest.fromBuffer(value),
        ($15.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSessionFeedbacksRequest, $15.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionFeedbacksRequest.fromBuffer(value),
        ($15.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListRelatedSessionsRequest, $15.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListRelatedSessionsRequest.fromBuffer(value),
        ($15.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddRelatedSessionRequest, $15.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddRelatedSessionRequest.fromBuffer(value),
        ($15.AddRelatedSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$15.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$15.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$15.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$15.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$15.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$15.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$15.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$15.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$15.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$15.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$15.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$15.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$15.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$15.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$15.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$15.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$15.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$15.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$15.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$15.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$15.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$15.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$15.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$15.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$15.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$15.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$15.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$15.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$15.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$15.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$15.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$15.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$15.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$15.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$15.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$15.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$15.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$15.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$15.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$15.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$15.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$15.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$15.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$15.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$15.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$15.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$15.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$15.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$15.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$15.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$15.CreateSessionResponse> createSession($grpc.ServiceCall call, $15.CreateSessionRequest request);
  $async.Future<$15.GetSessionResponse> getSession($grpc.ServiceCall call, $15.GetSessionRequest request);
  $async.Future<$15.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $15.UpdateSessionRequest request);
  $async.Future<$15.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $15.UpdateSessionStatusRequest request);
  $async.Future<$15.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $15.CancelSessionRequest request);
  $async.Future<$15.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $15.DuplicateSessionRequest request);
  $async.Future<$15.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $15.UpdateSessionScheduleRequest request);
  $async.Future<$15.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $15.UpdateSessionLocationRequest request);
  $async.Future<$15.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $15.ListSessionParticipantsRequest request);
  $async.Future<$15.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $15.AddSessionParticipantRequest request);
  $async.Future<$15.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $15.UpdateSessionParticipantRequest request);
  $async.Future<$15.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $15.AddSongEntryRequest request);
  $async.Future<$15.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $15.DeleteSongEntryRequest request);
  $async.Future<$15.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $15.AddSessionSongResourceRequest request);
  $async.Future<$15.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $15.ListSessionSongResourcesRequest request);
  $async.Future<$15.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $15.DeleteSessionSongResourceRequest request);
  $async.Future<$15.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $15.ListSessionOrganizersRequest request);
  $async.Future<$15.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $15.AddSessionOrganizerRequest request);
  $async.Future<$15.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $15.DeleteSessionOrganizerRequest request);
  $async.Future<$15.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $15.CreateSessionThreadRequest request);
  $async.Future<$15.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $15.ListSessionThreadsRequest request);
  $async.Future<$15.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $15.CreateSongThreadRequest request);
  $async.Future<$15.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $15.GetSessionThreadRequest request);
  $async.Future<$15.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $15.DeleteSessionThreadRequest request);
  $async.Future<$15.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $15.CreateSessionNotificationRequest request);
  $async.Future<$15.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $15.GetSessionTimetableRequest request);
  $async.Future<$15.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $15.UpdateSessionTimetableRequest request);
  $async.Future<$15.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $15.GetOptimizedTimetableRequest request);
  $async.Future<$15.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $15.GetTimetableProgressRequest request);
  $async.Future<$15.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $15.UpdateTimetableProgressRequest request);
  $async.Future<$15.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $15.AddSessionResourceRequest request);
  $async.Future<$15.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $15.ListSessionResourcesRequest request);
  $async.Future<$15.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $15.DeleteSessionResourceRequest request);
  $async.Future<$15.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $15.AddSessionFeedbackRequest request);
  $async.Future<$15.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $15.ListSessionFeedbacksRequest request);
  $async.Future<$15.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $15.ListRelatedSessionsRequest request);
  $async.Future<$15.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $15.AddRelatedSessionRequest request);
}
