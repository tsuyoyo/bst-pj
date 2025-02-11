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

import 'session_service.pb.dart' as $3;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$3.CreateSessionRequest, $3.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($3.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$3.GetSessionRequest, $3.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($3.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$3.UpdateSessionRequest, $3.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($3.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$3.UpdateSessionStatusRequest, $3.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($3.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$3.CancelSessionRequest, $3.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($3.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$3.DuplicateSessionRequest, $3.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($3.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$3.AddSessionPartRequest, $3.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($3.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$3.UpdateSessionPartRequest, $3.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($3.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$3.DeleteSessionPartRequest, $3.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($3.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$3.UpdateSessionScheduleRequest, $3.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($3.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$3.UpdateSessionLocationRequest, $3.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($3.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$3.ListSessionParticipantsRequest, $3.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($3.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$3.AddSessionParticipantRequest, $3.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($3.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$3.UpdateSessionParticipantRequest, $3.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($3.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$3.ListSessionSongsRequest, $3.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($3.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$3.GetSessionSongRequest, $3.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($3.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$3.UpdateSessionSongRequest, $3.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($3.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$3.DeleteSessionSongRequest, $3.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($3.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$3.AddSongEntryRequest, $3.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($3.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$3.DeleteSongEntryRequest, $3.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($3.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$3.AddSessionSongResourceRequest, $3.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($3.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$3.ListSessionSongResourcesRequest, $3.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($3.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$3.DeleteSessionSongResourceRequest, $3.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($3.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$3.ListSessionOrganizersRequest, $3.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($3.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$3.AddSessionOrganizerRequest, $3.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($3.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$3.DeleteSessionOrganizerRequest, $3.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($3.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$3.CreateSessionThreadRequest, $3.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($3.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$3.ListSessionThreadsRequest, $3.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($3.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$3.CreateSongThreadRequest, $3.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($3.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$3.GetSessionThreadRequest, $3.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($3.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$3.DeleteSessionThreadRequest, $3.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($3.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$3.CreateSessionNotificationRequest, $3.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($3.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$3.GetSessionTimetableRequest, $3.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($3.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$3.UpdateSessionTimetableRequest, $3.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($3.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$3.GetOptimizedTimetableRequest, $3.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($3.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$3.GetTimetableProgressRequest, $3.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($3.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$3.UpdateTimetableProgressRequest, $3.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($3.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$3.AddSessionResourceRequest, $3.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($3.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$3.ListSessionResourcesRequest, $3.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($3.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$3.DeleteSessionResourceRequest, $3.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($3.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$3.AddSessionFeedbackRequest, $3.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($3.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$3.ListSessionFeedbacksRequest, $3.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($3.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$3.ListRelatedSessionsRequest, $3.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($3.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$3.AddRelatedSessionRequest, $3.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($3.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$3.CreateSessionPartyRequest, $3.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($3.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$3.GetSessionPartyRequest, $3.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($3.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$3.AddPartyParticipantRequest, $3.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($3.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$3.ListPartyParticipantsRequest, $3.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($3.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$3.UpdatePartyParticipantRequest, $3.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($3.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$3.DeletePartyParticipantRequest, $3.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($3.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateSessionResponse> createSession($3.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSessionResponse> getSession($3.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionResponse> updateSession($3.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionStatusResponse> updateSessionStatus($3.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$3.CancelSessionResponse> cancelSession($3.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.DuplicateSessionResponse> duplicateSession($3.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSessionPartResponse> addSessionPart($3.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionPartResponse> updateSessionPart($3.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSessionPartResponse> deleteSessionPart($3.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionScheduleResponse> updateSessionSchedule($3.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionLocationResponse> updateSessionLocation($3.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSessionParticipantsResponse> listSessionParticipants($3.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSessionParticipantResponse> addSessionParticipant($3.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionParticipantResponse> updateSessionParticipant($3.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSessionSongsResponse> listSessionSongs($3.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSessionSongResponse> getSessionSong($3.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionSongResponse> updateSessionSong($3.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSessionSongResponse> deleteSessionSong($3.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSongEntryResponse> addSongEntry($3.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSongEntryResponse> deleteSongEntry($3.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSessionSongResourceResponse> addSessionSongResource($3.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSessionSongResourcesResponse> listSessionSongResources($3.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSessionSongResourceResponse> deleteSessionSongResource($3.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSessionOrganizersResponse> listSessionOrganizers($3.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSessionOrganizerResponse> addSessionOrganizer($3.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSessionOrganizerResponse> deleteSessionOrganizer($3.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateSessionThreadResponse> createSessionThread($3.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSessionThreadsResponse> listSessionThreads($3.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateSongThreadResponse> createSongThread($3.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSessionThreadResponse> getSessionThread($3.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSessionThreadResponse> deleteSessionThread($3.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateSessionNotificationResponse> createSessionNotification($3.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSessionTimetableResponse> getSessionTimetable($3.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSessionTimetableResponse> updateSessionTimetable($3.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetOptimizedTimetableResponse> getOptimizedTimetable($3.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetTimetableProgressResponse> getTimetableProgress($3.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateTimetableProgressResponse> updateTimetableProgress($3.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSessionResourceResponse> addSessionResource($3.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSessionResourcesResponse> listSessionResources($3.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSessionResourceResponse> deleteSessionResource($3.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSessionFeedbackResponse> addSessionFeedback($3.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListSessionFeedbacksResponse> listSessionFeedbacks($3.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListRelatedSessionsResponse> listRelatedSessions($3.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddRelatedSessionResponse> addRelatedSession($3.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateSessionPartyResponse> createSessionParty($3.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSessionPartyResponse> getSessionParty($3.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddPartyParticipantResponse> addPartyParticipant($3.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListPartyParticipantsResponse> listPartyParticipants($3.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePartyParticipantResponse> updatePartyParticipant($3.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeletePartyParticipantResponse> deletePartyParticipant($3.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateSessionRequest, $3.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateSessionRequest.fromBuffer(value),
        ($3.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSessionRequest, $3.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSessionRequest.fromBuffer(value),
        ($3.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionRequest, $3.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionRequest.fromBuffer(value),
        ($3.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionStatusRequest, $3.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionStatusRequest.fromBuffer(value),
        ($3.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CancelSessionRequest, $3.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CancelSessionRequest.fromBuffer(value),
        ($3.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DuplicateSessionRequest, $3.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DuplicateSessionRequest.fromBuffer(value),
        ($3.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSessionPartRequest, $3.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSessionPartRequest.fromBuffer(value),
        ($3.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionPartRequest, $3.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionPartRequest.fromBuffer(value),
        ($3.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSessionPartRequest, $3.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSessionPartRequest.fromBuffer(value),
        ($3.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionScheduleRequest, $3.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionScheduleRequest.fromBuffer(value),
        ($3.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionLocationRequest, $3.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionLocationRequest.fromBuffer(value),
        ($3.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSessionParticipantsRequest, $3.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSessionParticipantsRequest.fromBuffer(value),
        ($3.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSessionParticipantRequest, $3.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSessionParticipantRequest.fromBuffer(value),
        ($3.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionParticipantRequest, $3.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionParticipantRequest.fromBuffer(value),
        ($3.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSessionSongsRequest, $3.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSessionSongsRequest.fromBuffer(value),
        ($3.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSessionSongRequest, $3.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSessionSongRequest.fromBuffer(value),
        ($3.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionSongRequest, $3.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionSongRequest.fromBuffer(value),
        ($3.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSessionSongRequest, $3.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSessionSongRequest.fromBuffer(value),
        ($3.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSongEntryRequest, $3.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSongEntryRequest.fromBuffer(value),
        ($3.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSongEntryRequest, $3.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSongEntryRequest.fromBuffer(value),
        ($3.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSessionSongResourceRequest, $3.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSessionSongResourceRequest.fromBuffer(value),
        ($3.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSessionSongResourcesRequest, $3.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSessionSongResourcesRequest.fromBuffer(value),
        ($3.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSessionSongResourceRequest, $3.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($3.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSessionOrganizersRequest, $3.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSessionOrganizersRequest.fromBuffer(value),
        ($3.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSessionOrganizerRequest, $3.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSessionOrganizerRequest.fromBuffer(value),
        ($3.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSessionOrganizerRequest, $3.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($3.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateSessionThreadRequest, $3.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateSessionThreadRequest.fromBuffer(value),
        ($3.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSessionThreadsRequest, $3.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSessionThreadsRequest.fromBuffer(value),
        ($3.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateSongThreadRequest, $3.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateSongThreadRequest.fromBuffer(value),
        ($3.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSessionThreadRequest, $3.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSessionThreadRequest.fromBuffer(value),
        ($3.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSessionThreadRequest, $3.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSessionThreadRequest.fromBuffer(value),
        ($3.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateSessionNotificationRequest, $3.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateSessionNotificationRequest.fromBuffer(value),
        ($3.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSessionTimetableRequest, $3.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSessionTimetableRequest.fromBuffer(value),
        ($3.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSessionTimetableRequest, $3.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSessionTimetableRequest.fromBuffer(value),
        ($3.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetOptimizedTimetableRequest, $3.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetOptimizedTimetableRequest.fromBuffer(value),
        ($3.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetTimetableProgressRequest, $3.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetTimetableProgressRequest.fromBuffer(value),
        ($3.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateTimetableProgressRequest, $3.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateTimetableProgressRequest.fromBuffer(value),
        ($3.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSessionResourceRequest, $3.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSessionResourceRequest.fromBuffer(value),
        ($3.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSessionResourcesRequest, $3.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSessionResourcesRequest.fromBuffer(value),
        ($3.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSessionResourceRequest, $3.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSessionResourceRequest.fromBuffer(value),
        ($3.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSessionFeedbackRequest, $3.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSessionFeedbackRequest.fromBuffer(value),
        ($3.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListSessionFeedbacksRequest, $3.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListSessionFeedbacksRequest.fromBuffer(value),
        ($3.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListRelatedSessionsRequest, $3.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListRelatedSessionsRequest.fromBuffer(value),
        ($3.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddRelatedSessionRequest, $3.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddRelatedSessionRequest.fromBuffer(value),
        ($3.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateSessionPartyRequest, $3.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateSessionPartyRequest.fromBuffer(value),
        ($3.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSessionPartyRequest, $3.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSessionPartyRequest.fromBuffer(value),
        ($3.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddPartyParticipantRequest, $3.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddPartyParticipantRequest.fromBuffer(value),
        ($3.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListPartyParticipantsRequest, $3.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListPartyParticipantsRequest.fromBuffer(value),
        ($3.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePartyParticipantRequest, $3.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePartyParticipantRequest.fromBuffer(value),
        ($3.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeletePartyParticipantRequest, $3.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeletePartyParticipantRequest.fromBuffer(value),
        ($3.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$3.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$3.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$3.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$3.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$3.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$3.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$3.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$3.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$3.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$3.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$3.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$3.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$3.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$3.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$3.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$3.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$3.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$3.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$3.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$3.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$3.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$3.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$3.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$3.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$3.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$3.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$3.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$3.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$3.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$3.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$3.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$3.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$3.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$3.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$3.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$3.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$3.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$3.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$3.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$3.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$3.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$3.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$3.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$3.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$3.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$3.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$3.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$3.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$3.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$3.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$3.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$3.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$3.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$3.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$3.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$3.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$3.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$3.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$3.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$3.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$3.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$3.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$3.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$3.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$3.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$3.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$3.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$3.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$3.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$3.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$3.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$3.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$3.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$3.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$3.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$3.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$3.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$3.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$3.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$3.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$3.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$3.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$3.CreateSessionResponse> createSession($grpc.ServiceCall call, $3.CreateSessionRequest request);
  $async.Future<$3.GetSessionResponse> getSession($grpc.ServiceCall call, $3.GetSessionRequest request);
  $async.Future<$3.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $3.UpdateSessionRequest request);
  $async.Future<$3.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $3.UpdateSessionStatusRequest request);
  $async.Future<$3.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $3.CancelSessionRequest request);
  $async.Future<$3.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $3.DuplicateSessionRequest request);
  $async.Future<$3.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $3.AddSessionPartRequest request);
  $async.Future<$3.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $3.UpdateSessionPartRequest request);
  $async.Future<$3.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $3.DeleteSessionPartRequest request);
  $async.Future<$3.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $3.UpdateSessionScheduleRequest request);
  $async.Future<$3.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $3.UpdateSessionLocationRequest request);
  $async.Future<$3.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $3.ListSessionParticipantsRequest request);
  $async.Future<$3.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $3.AddSessionParticipantRequest request);
  $async.Future<$3.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $3.UpdateSessionParticipantRequest request);
  $async.Future<$3.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $3.ListSessionSongsRequest request);
  $async.Future<$3.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $3.GetSessionSongRequest request);
  $async.Future<$3.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $3.UpdateSessionSongRequest request);
  $async.Future<$3.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $3.DeleteSessionSongRequest request);
  $async.Future<$3.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $3.AddSongEntryRequest request);
  $async.Future<$3.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $3.DeleteSongEntryRequest request);
  $async.Future<$3.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $3.AddSessionSongResourceRequest request);
  $async.Future<$3.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $3.ListSessionSongResourcesRequest request);
  $async.Future<$3.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $3.DeleteSessionSongResourceRequest request);
  $async.Future<$3.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $3.ListSessionOrganizersRequest request);
  $async.Future<$3.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $3.AddSessionOrganizerRequest request);
  $async.Future<$3.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $3.DeleteSessionOrganizerRequest request);
  $async.Future<$3.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $3.CreateSessionThreadRequest request);
  $async.Future<$3.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $3.ListSessionThreadsRequest request);
  $async.Future<$3.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $3.CreateSongThreadRequest request);
  $async.Future<$3.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $3.GetSessionThreadRequest request);
  $async.Future<$3.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $3.DeleteSessionThreadRequest request);
  $async.Future<$3.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $3.CreateSessionNotificationRequest request);
  $async.Future<$3.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $3.GetSessionTimetableRequest request);
  $async.Future<$3.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $3.UpdateSessionTimetableRequest request);
  $async.Future<$3.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $3.GetOptimizedTimetableRequest request);
  $async.Future<$3.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $3.GetTimetableProgressRequest request);
  $async.Future<$3.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $3.UpdateTimetableProgressRequest request);
  $async.Future<$3.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $3.AddSessionResourceRequest request);
  $async.Future<$3.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $3.ListSessionResourcesRequest request);
  $async.Future<$3.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $3.DeleteSessionResourceRequest request);
  $async.Future<$3.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $3.AddSessionFeedbackRequest request);
  $async.Future<$3.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $3.ListSessionFeedbacksRequest request);
  $async.Future<$3.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $3.ListRelatedSessionsRequest request);
  $async.Future<$3.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $3.AddRelatedSessionRequest request);
  $async.Future<$3.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $3.CreateSessionPartyRequest request);
  $async.Future<$3.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $3.GetSessionPartyRequest request);
  $async.Future<$3.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $3.AddPartyParticipantRequest request);
  $async.Future<$3.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $3.ListPartyParticipantsRequest request);
  $async.Future<$3.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $3.UpdatePartyParticipantRequest request);
  $async.Future<$3.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $3.DeletePartyParticipantRequest request);
}
