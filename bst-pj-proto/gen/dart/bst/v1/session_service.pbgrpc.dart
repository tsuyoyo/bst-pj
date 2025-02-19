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

import 'session_service.pb.dart' as $14;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$14.CreateSessionRequest, $14.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($14.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$14.GetSessionRequest, $14.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($14.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$14.UpdateSessionRequest, $14.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($14.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$14.UpdateSessionStatusRequest, $14.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($14.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$14.CancelSessionRequest, $14.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($14.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$14.DuplicateSessionRequest, $14.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($14.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$14.AddSessionPartRequest, $14.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($14.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$14.UpdateSessionPartRequest, $14.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($14.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$14.DeleteSessionPartRequest, $14.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($14.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$14.UpdateSessionScheduleRequest, $14.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($14.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$14.UpdateSessionLocationRequest, $14.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($14.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$14.ListSessionParticipantsRequest, $14.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($14.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$14.AddSessionParticipantRequest, $14.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($14.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$14.UpdateSessionParticipantRequest, $14.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($14.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$14.ListSessionSongsRequest, $14.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($14.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$14.GetSessionSongRequest, $14.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($14.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$14.UpdateSessionSongRequest, $14.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($14.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$14.DeleteSessionSongRequest, $14.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($14.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$14.AddSongEntryRequest, $14.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($14.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$14.DeleteSongEntryRequest, $14.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($14.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$14.AddSessionSongResourceRequest, $14.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($14.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$14.ListSessionSongResourcesRequest, $14.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($14.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$14.DeleteSessionSongResourceRequest, $14.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($14.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$14.ListSessionOrganizersRequest, $14.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($14.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$14.AddSessionOrganizerRequest, $14.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($14.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$14.DeleteSessionOrganizerRequest, $14.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($14.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$14.CreateSessionThreadRequest, $14.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($14.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$14.ListSessionThreadsRequest, $14.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($14.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$14.CreateSongThreadRequest, $14.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($14.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$14.GetSessionThreadRequest, $14.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($14.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$14.DeleteSessionThreadRequest, $14.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($14.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$14.CreateSessionNotificationRequest, $14.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($14.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$14.GetSessionTimetableRequest, $14.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($14.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$14.UpdateSessionTimetableRequest, $14.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($14.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$14.GetOptimizedTimetableRequest, $14.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($14.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$14.GetTimetableProgressRequest, $14.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($14.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$14.UpdateTimetableProgressRequest, $14.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($14.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$14.AddSessionResourceRequest, $14.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($14.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$14.ListSessionResourcesRequest, $14.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($14.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$14.DeleteSessionResourceRequest, $14.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($14.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$14.AddSessionFeedbackRequest, $14.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($14.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$14.ListSessionFeedbacksRequest, $14.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($14.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$14.ListRelatedSessionsRequest, $14.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($14.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$14.AddRelatedSessionRequest, $14.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($14.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddRelatedSessionResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateSessionResponse> createSession($14.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetSessionResponse> getSession($14.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionResponse> updateSession($14.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionStatusResponse> updateSessionStatus($14.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$14.CancelSessionResponse> cancelSession($14.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$14.DuplicateSessionResponse> duplicateSession($14.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSessionPartResponse> addSessionPart($14.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionPartResponse> updateSessionPart($14.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSessionPartResponse> deleteSessionPart($14.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionScheduleResponse> updateSessionSchedule($14.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionLocationResponse> updateSessionLocation($14.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionParticipantsResponse> listSessionParticipants($14.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSessionParticipantResponse> addSessionParticipant($14.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionParticipantResponse> updateSessionParticipant($14.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionSongsResponse> listSessionSongs($14.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetSessionSongResponse> getSessionSong($14.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionSongResponse> updateSessionSong($14.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSessionSongResponse> deleteSessionSong($14.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSongEntryResponse> addSongEntry($14.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSongEntryResponse> deleteSongEntry($14.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSessionSongResourceResponse> addSessionSongResource($14.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionSongResourcesResponse> listSessionSongResources($14.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSessionSongResourceResponse> deleteSessionSongResource($14.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionOrganizersResponse> listSessionOrganizers($14.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSessionOrganizerResponse> addSessionOrganizer($14.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSessionOrganizerResponse> deleteSessionOrganizer($14.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$14.CreateSessionThreadResponse> createSessionThread($14.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionThreadsResponse> listSessionThreads($14.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$14.CreateSongThreadResponse> createSongThread($14.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetSessionThreadResponse> getSessionThread($14.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSessionThreadResponse> deleteSessionThread($14.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$14.CreateSessionNotificationResponse> createSessionNotification($14.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetSessionTimetableResponse> getSessionTimetable($14.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionTimetableResponse> updateSessionTimetable($14.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetOptimizedTimetableResponse> getOptimizedTimetable($14.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetTimetableProgressResponse> getTimetableProgress($14.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateTimetableProgressResponse> updateTimetableProgress($14.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSessionResourceResponse> addSessionResource($14.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionResourcesResponse> listSessionResources($14.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSessionResourceResponse> deleteSessionResource($14.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSessionFeedbackResponse> addSessionFeedback($14.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionFeedbacksResponse> listSessionFeedbacks($14.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListRelatedSessionsResponse> listRelatedSessions($14.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddRelatedSessionResponse> addRelatedSession($14.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateSessionRequest, $14.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateSessionRequest.fromBuffer(value),
        ($14.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetSessionRequest, $14.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetSessionRequest.fromBuffer(value),
        ($14.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionRequest, $14.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionRequest.fromBuffer(value),
        ($14.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionStatusRequest, $14.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionStatusRequest.fromBuffer(value),
        ($14.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.CancelSessionRequest, $14.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CancelSessionRequest.fromBuffer(value),
        ($14.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DuplicateSessionRequest, $14.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DuplicateSessionRequest.fromBuffer(value),
        ($14.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSessionPartRequest, $14.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionPartRequest.fromBuffer(value),
        ($14.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionPartRequest, $14.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionPartRequest.fromBuffer(value),
        ($14.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSessionPartRequest, $14.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSessionPartRequest.fromBuffer(value),
        ($14.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionScheduleRequest, $14.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionScheduleRequest.fromBuffer(value),
        ($14.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionLocationRequest, $14.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionLocationRequest.fromBuffer(value),
        ($14.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionParticipantsRequest, $14.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionParticipantsRequest.fromBuffer(value),
        ($14.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSessionParticipantRequest, $14.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionParticipantRequest.fromBuffer(value),
        ($14.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionParticipantRequest, $14.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionParticipantRequest.fromBuffer(value),
        ($14.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionSongsRequest, $14.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionSongsRequest.fromBuffer(value),
        ($14.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetSessionSongRequest, $14.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetSessionSongRequest.fromBuffer(value),
        ($14.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionSongRequest, $14.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionSongRequest.fromBuffer(value),
        ($14.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSessionSongRequest, $14.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSessionSongRequest.fromBuffer(value),
        ($14.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSongEntryRequest, $14.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSongEntryRequest.fromBuffer(value),
        ($14.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSongEntryRequest, $14.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSongEntryRequest.fromBuffer(value),
        ($14.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSessionSongResourceRequest, $14.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionSongResourceRequest.fromBuffer(value),
        ($14.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionSongResourcesRequest, $14.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionSongResourcesRequest.fromBuffer(value),
        ($14.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSessionSongResourceRequest, $14.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($14.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionOrganizersRequest, $14.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionOrganizersRequest.fromBuffer(value),
        ($14.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSessionOrganizerRequest, $14.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionOrganizerRequest.fromBuffer(value),
        ($14.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSessionOrganizerRequest, $14.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($14.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.CreateSessionThreadRequest, $14.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateSessionThreadRequest.fromBuffer(value),
        ($14.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionThreadsRequest, $14.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionThreadsRequest.fromBuffer(value),
        ($14.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.CreateSongThreadRequest, $14.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateSongThreadRequest.fromBuffer(value),
        ($14.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetSessionThreadRequest, $14.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetSessionThreadRequest.fromBuffer(value),
        ($14.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSessionThreadRequest, $14.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSessionThreadRequest.fromBuffer(value),
        ($14.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.CreateSessionNotificationRequest, $14.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateSessionNotificationRequest.fromBuffer(value),
        ($14.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetSessionTimetableRequest, $14.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetSessionTimetableRequest.fromBuffer(value),
        ($14.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionTimetableRequest, $14.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionTimetableRequest.fromBuffer(value),
        ($14.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetOptimizedTimetableRequest, $14.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetOptimizedTimetableRequest.fromBuffer(value),
        ($14.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetTimetableProgressRequest, $14.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetTimetableProgressRequest.fromBuffer(value),
        ($14.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateTimetableProgressRequest, $14.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateTimetableProgressRequest.fromBuffer(value),
        ($14.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSessionResourceRequest, $14.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionResourceRequest.fromBuffer(value),
        ($14.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionResourcesRequest, $14.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionResourcesRequest.fromBuffer(value),
        ($14.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSessionResourceRequest, $14.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSessionResourceRequest.fromBuffer(value),
        ($14.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSessionFeedbackRequest, $14.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionFeedbackRequest.fromBuffer(value),
        ($14.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionFeedbacksRequest, $14.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionFeedbacksRequest.fromBuffer(value),
        ($14.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListRelatedSessionsRequest, $14.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListRelatedSessionsRequest.fromBuffer(value),
        ($14.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddRelatedSessionRequest, $14.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddRelatedSessionRequest.fromBuffer(value),
        ($14.AddRelatedSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$14.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$14.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$14.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$14.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$14.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$14.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$14.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$14.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$14.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$14.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$14.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$14.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$14.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$14.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$14.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$14.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$14.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$14.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$14.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$14.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$14.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$14.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$14.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$14.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$14.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$14.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$14.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$14.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$14.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$14.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$14.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$14.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$14.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$14.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$14.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$14.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$14.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$14.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$14.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$14.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$14.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$14.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$14.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$14.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$14.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$14.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$14.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$14.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$14.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$14.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$14.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$14.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$14.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$14.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$14.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$14.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$14.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$14.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$14.CreateSessionResponse> createSession($grpc.ServiceCall call, $14.CreateSessionRequest request);
  $async.Future<$14.GetSessionResponse> getSession($grpc.ServiceCall call, $14.GetSessionRequest request);
  $async.Future<$14.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $14.UpdateSessionRequest request);
  $async.Future<$14.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $14.UpdateSessionStatusRequest request);
  $async.Future<$14.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $14.CancelSessionRequest request);
  $async.Future<$14.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $14.DuplicateSessionRequest request);
  $async.Future<$14.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $14.AddSessionPartRequest request);
  $async.Future<$14.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $14.UpdateSessionPartRequest request);
  $async.Future<$14.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $14.DeleteSessionPartRequest request);
  $async.Future<$14.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $14.UpdateSessionScheduleRequest request);
  $async.Future<$14.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $14.UpdateSessionLocationRequest request);
  $async.Future<$14.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $14.ListSessionParticipantsRequest request);
  $async.Future<$14.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $14.AddSessionParticipantRequest request);
  $async.Future<$14.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $14.UpdateSessionParticipantRequest request);
  $async.Future<$14.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $14.ListSessionSongsRequest request);
  $async.Future<$14.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $14.GetSessionSongRequest request);
  $async.Future<$14.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $14.UpdateSessionSongRequest request);
  $async.Future<$14.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $14.DeleteSessionSongRequest request);
  $async.Future<$14.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $14.AddSongEntryRequest request);
  $async.Future<$14.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $14.DeleteSongEntryRequest request);
  $async.Future<$14.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $14.AddSessionSongResourceRequest request);
  $async.Future<$14.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $14.ListSessionSongResourcesRequest request);
  $async.Future<$14.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $14.DeleteSessionSongResourceRequest request);
  $async.Future<$14.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $14.ListSessionOrganizersRequest request);
  $async.Future<$14.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $14.AddSessionOrganizerRequest request);
  $async.Future<$14.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $14.DeleteSessionOrganizerRequest request);
  $async.Future<$14.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $14.CreateSessionThreadRequest request);
  $async.Future<$14.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $14.ListSessionThreadsRequest request);
  $async.Future<$14.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $14.CreateSongThreadRequest request);
  $async.Future<$14.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $14.GetSessionThreadRequest request);
  $async.Future<$14.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $14.DeleteSessionThreadRequest request);
  $async.Future<$14.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $14.CreateSessionNotificationRequest request);
  $async.Future<$14.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $14.GetSessionTimetableRequest request);
  $async.Future<$14.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $14.UpdateSessionTimetableRequest request);
  $async.Future<$14.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $14.GetOptimizedTimetableRequest request);
  $async.Future<$14.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $14.GetTimetableProgressRequest request);
  $async.Future<$14.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $14.UpdateTimetableProgressRequest request);
  $async.Future<$14.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $14.AddSessionResourceRequest request);
  $async.Future<$14.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $14.ListSessionResourcesRequest request);
  $async.Future<$14.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $14.DeleteSessionResourceRequest request);
  $async.Future<$14.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $14.AddSessionFeedbackRequest request);
  $async.Future<$14.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $14.ListSessionFeedbacksRequest request);
  $async.Future<$14.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $14.ListRelatedSessionsRequest request);
  $async.Future<$14.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $14.AddRelatedSessionRequest request);
}
