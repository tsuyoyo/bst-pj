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

import 'session_service.pb.dart' as $11;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$11.CreateSessionRequest, $11.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($11.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$11.GetSessionRequest, $11.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($11.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$11.UpdateSessionRequest, $11.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($11.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$11.UpdateSessionStatusRequest, $11.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($11.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$11.CancelSessionRequest, $11.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($11.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$11.DuplicateSessionRequest, $11.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($11.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$11.AddSessionPartRequest, $11.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($11.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$11.UpdateSessionPartRequest, $11.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($11.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$11.DeleteSessionPartRequest, $11.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($11.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$11.UpdateSessionScheduleRequest, $11.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($11.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$11.UpdateSessionLocationRequest, $11.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($11.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$11.ListSessionParticipantsRequest, $11.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($11.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$11.AddSessionParticipantRequest, $11.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($11.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$11.UpdateSessionParticipantRequest, $11.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($11.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$11.ListSessionSongsRequest, $11.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($11.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$11.GetSessionSongRequest, $11.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($11.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$11.UpdateSessionSongRequest, $11.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($11.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$11.DeleteSessionSongRequest, $11.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($11.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$11.AddSongEntryRequest, $11.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($11.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$11.DeleteSongEntryRequest, $11.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($11.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$11.AddSessionSongResourceRequest, $11.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($11.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$11.ListSessionSongResourcesRequest, $11.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($11.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$11.DeleteSessionSongResourceRequest, $11.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($11.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$11.ListSessionOrganizersRequest, $11.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($11.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$11.AddSessionOrganizerRequest, $11.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($11.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$11.DeleteSessionOrganizerRequest, $11.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($11.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$11.CreateSessionThreadRequest, $11.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($11.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$11.ListSessionThreadsRequest, $11.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($11.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$11.CreateSongThreadRequest, $11.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($11.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$11.GetSessionThreadRequest, $11.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($11.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$11.DeleteSessionThreadRequest, $11.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($11.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$11.CreateSessionNotificationRequest, $11.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($11.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$11.GetSessionTimetableRequest, $11.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($11.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$11.UpdateSessionTimetableRequest, $11.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($11.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$11.GetOptimizedTimetableRequest, $11.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($11.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$11.GetTimetableProgressRequest, $11.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($11.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$11.UpdateTimetableProgressRequest, $11.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($11.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$11.AddSessionResourceRequest, $11.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($11.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$11.ListSessionResourcesRequest, $11.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($11.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$11.DeleteSessionResourceRequest, $11.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($11.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$11.AddSessionFeedbackRequest, $11.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($11.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$11.ListSessionFeedbacksRequest, $11.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($11.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$11.ListRelatedSessionsRequest, $11.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($11.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$11.AddRelatedSessionRequest, $11.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($11.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$11.CreateSessionPartyRequest, $11.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($11.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$11.GetSessionPartyRequest, $11.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($11.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$11.AddPartyParticipantRequest, $11.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($11.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$11.ListPartyParticipantsRequest, $11.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($11.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$11.UpdatePartyParticipantRequest, $11.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($11.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$11.DeletePartyParticipantRequest, $11.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($11.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateSessionResponse> createSession($11.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetSessionResponse> getSession($11.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionResponse> updateSession($11.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionStatusResponse> updateSessionStatus($11.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$11.CancelSessionResponse> cancelSession($11.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$11.DuplicateSessionResponse> duplicateSession($11.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddSessionPartResponse> addSessionPart($11.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionPartResponse> updateSessionPart($11.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSessionPartResponse> deleteSessionPart($11.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionScheduleResponse> updateSessionSchedule($11.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionLocationResponse> updateSessionLocation($11.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListSessionParticipantsResponse> listSessionParticipants($11.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddSessionParticipantResponse> addSessionParticipant($11.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionParticipantResponse> updateSessionParticipant($11.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListSessionSongsResponse> listSessionSongs($11.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetSessionSongResponse> getSessionSong($11.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionSongResponse> updateSessionSong($11.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSessionSongResponse> deleteSessionSong($11.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddSongEntryResponse> addSongEntry($11.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSongEntryResponse> deleteSongEntry($11.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddSessionSongResourceResponse> addSessionSongResource($11.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListSessionSongResourcesResponse> listSessionSongResources($11.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSessionSongResourceResponse> deleteSessionSongResource($11.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListSessionOrganizersResponse> listSessionOrganizers($11.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddSessionOrganizerResponse> addSessionOrganizer($11.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSessionOrganizerResponse> deleteSessionOrganizer($11.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateSessionThreadResponse> createSessionThread($11.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListSessionThreadsResponse> listSessionThreads($11.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateSongThreadResponse> createSongThread($11.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetSessionThreadResponse> getSessionThread($11.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSessionThreadResponse> deleteSessionThread($11.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateSessionNotificationResponse> createSessionNotification($11.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetSessionTimetableResponse> getSessionTimetable($11.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSessionTimetableResponse> updateSessionTimetable($11.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetOptimizedTimetableResponse> getOptimizedTimetable($11.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetTimetableProgressResponse> getTimetableProgress($11.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateTimetableProgressResponse> updateTimetableProgress($11.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddSessionResourceResponse> addSessionResource($11.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListSessionResourcesResponse> listSessionResources($11.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSessionResourceResponse> deleteSessionResource($11.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddSessionFeedbackResponse> addSessionFeedback($11.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListSessionFeedbacksResponse> listSessionFeedbacks($11.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListRelatedSessionsResponse> listRelatedSessions($11.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddRelatedSessionResponse> addRelatedSession($11.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateSessionPartyResponse> createSessionParty($11.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetSessionPartyResponse> getSessionParty($11.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$11.AddPartyParticipantResponse> addPartyParticipant($11.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListPartyParticipantsResponse> listPartyParticipants($11.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdatePartyParticipantResponse> updatePartyParticipant($11.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeletePartyParticipantResponse> deletePartyParticipant($11.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateSessionRequest, $11.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateSessionRequest.fromBuffer(value),
        ($11.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetSessionRequest, $11.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetSessionRequest.fromBuffer(value),
        ($11.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionRequest, $11.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionRequest.fromBuffer(value),
        ($11.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionStatusRequest, $11.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionStatusRequest.fromBuffer(value),
        ($11.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CancelSessionRequest, $11.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CancelSessionRequest.fromBuffer(value),
        ($11.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DuplicateSessionRequest, $11.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DuplicateSessionRequest.fromBuffer(value),
        ($11.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddSessionPartRequest, $11.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddSessionPartRequest.fromBuffer(value),
        ($11.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionPartRequest, $11.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionPartRequest.fromBuffer(value),
        ($11.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSessionPartRequest, $11.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSessionPartRequest.fromBuffer(value),
        ($11.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionScheduleRequest, $11.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionScheduleRequest.fromBuffer(value),
        ($11.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionLocationRequest, $11.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionLocationRequest.fromBuffer(value),
        ($11.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListSessionParticipantsRequest, $11.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListSessionParticipantsRequest.fromBuffer(value),
        ($11.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddSessionParticipantRequest, $11.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddSessionParticipantRequest.fromBuffer(value),
        ($11.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionParticipantRequest, $11.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionParticipantRequest.fromBuffer(value),
        ($11.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListSessionSongsRequest, $11.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListSessionSongsRequest.fromBuffer(value),
        ($11.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetSessionSongRequest, $11.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetSessionSongRequest.fromBuffer(value),
        ($11.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionSongRequest, $11.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionSongRequest.fromBuffer(value),
        ($11.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSessionSongRequest, $11.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSessionSongRequest.fromBuffer(value),
        ($11.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddSongEntryRequest, $11.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddSongEntryRequest.fromBuffer(value),
        ($11.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSongEntryRequest, $11.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSongEntryRequest.fromBuffer(value),
        ($11.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddSessionSongResourceRequest, $11.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddSessionSongResourceRequest.fromBuffer(value),
        ($11.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListSessionSongResourcesRequest, $11.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListSessionSongResourcesRequest.fromBuffer(value),
        ($11.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSessionSongResourceRequest, $11.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($11.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListSessionOrganizersRequest, $11.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListSessionOrganizersRequest.fromBuffer(value),
        ($11.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddSessionOrganizerRequest, $11.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddSessionOrganizerRequest.fromBuffer(value),
        ($11.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSessionOrganizerRequest, $11.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($11.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateSessionThreadRequest, $11.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateSessionThreadRequest.fromBuffer(value),
        ($11.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListSessionThreadsRequest, $11.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListSessionThreadsRequest.fromBuffer(value),
        ($11.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateSongThreadRequest, $11.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateSongThreadRequest.fromBuffer(value),
        ($11.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetSessionThreadRequest, $11.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetSessionThreadRequest.fromBuffer(value),
        ($11.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSessionThreadRequest, $11.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSessionThreadRequest.fromBuffer(value),
        ($11.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateSessionNotificationRequest, $11.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateSessionNotificationRequest.fromBuffer(value),
        ($11.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetSessionTimetableRequest, $11.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetSessionTimetableRequest.fromBuffer(value),
        ($11.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSessionTimetableRequest, $11.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSessionTimetableRequest.fromBuffer(value),
        ($11.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetOptimizedTimetableRequest, $11.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetOptimizedTimetableRequest.fromBuffer(value),
        ($11.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetTimetableProgressRequest, $11.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetTimetableProgressRequest.fromBuffer(value),
        ($11.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateTimetableProgressRequest, $11.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateTimetableProgressRequest.fromBuffer(value),
        ($11.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddSessionResourceRequest, $11.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddSessionResourceRequest.fromBuffer(value),
        ($11.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListSessionResourcesRequest, $11.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListSessionResourcesRequest.fromBuffer(value),
        ($11.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSessionResourceRequest, $11.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSessionResourceRequest.fromBuffer(value),
        ($11.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddSessionFeedbackRequest, $11.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddSessionFeedbackRequest.fromBuffer(value),
        ($11.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListSessionFeedbacksRequest, $11.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListSessionFeedbacksRequest.fromBuffer(value),
        ($11.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListRelatedSessionsRequest, $11.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListRelatedSessionsRequest.fromBuffer(value),
        ($11.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddRelatedSessionRequest, $11.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddRelatedSessionRequest.fromBuffer(value),
        ($11.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateSessionPartyRequest, $11.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateSessionPartyRequest.fromBuffer(value),
        ($11.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetSessionPartyRequest, $11.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetSessionPartyRequest.fromBuffer(value),
        ($11.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AddPartyParticipantRequest, $11.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AddPartyParticipantRequest.fromBuffer(value),
        ($11.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListPartyParticipantsRequest, $11.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListPartyParticipantsRequest.fromBuffer(value),
        ($11.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdatePartyParticipantRequest, $11.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdatePartyParticipantRequest.fromBuffer(value),
        ($11.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeletePartyParticipantRequest, $11.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeletePartyParticipantRequest.fromBuffer(value),
        ($11.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$11.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$11.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$11.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$11.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$11.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$11.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$11.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$11.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$11.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$11.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$11.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$11.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$11.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$11.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$11.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$11.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$11.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$11.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$11.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$11.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$11.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$11.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$11.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$11.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$11.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$11.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$11.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$11.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$11.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$11.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$11.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$11.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$11.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$11.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$11.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$11.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$11.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$11.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$11.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$11.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$11.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$11.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$11.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$11.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$11.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$11.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$11.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$11.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$11.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$11.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$11.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$11.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$11.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$11.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$11.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$11.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$11.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$11.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$11.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$11.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$11.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$11.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$11.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$11.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$11.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$11.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$11.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$11.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$11.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$11.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$11.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$11.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$11.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$11.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$11.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$11.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$11.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$11.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$11.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$11.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$11.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$11.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$11.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$11.CreateSessionResponse> createSession($grpc.ServiceCall call, $11.CreateSessionRequest request);
  $async.Future<$11.GetSessionResponse> getSession($grpc.ServiceCall call, $11.GetSessionRequest request);
  $async.Future<$11.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $11.UpdateSessionRequest request);
  $async.Future<$11.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $11.UpdateSessionStatusRequest request);
  $async.Future<$11.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $11.CancelSessionRequest request);
  $async.Future<$11.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $11.DuplicateSessionRequest request);
  $async.Future<$11.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $11.AddSessionPartRequest request);
  $async.Future<$11.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $11.UpdateSessionPartRequest request);
  $async.Future<$11.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $11.DeleteSessionPartRequest request);
  $async.Future<$11.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $11.UpdateSessionScheduleRequest request);
  $async.Future<$11.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $11.UpdateSessionLocationRequest request);
  $async.Future<$11.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $11.ListSessionParticipantsRequest request);
  $async.Future<$11.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $11.AddSessionParticipantRequest request);
  $async.Future<$11.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $11.UpdateSessionParticipantRequest request);
  $async.Future<$11.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $11.ListSessionSongsRequest request);
  $async.Future<$11.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $11.GetSessionSongRequest request);
  $async.Future<$11.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $11.UpdateSessionSongRequest request);
  $async.Future<$11.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $11.DeleteSessionSongRequest request);
  $async.Future<$11.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $11.AddSongEntryRequest request);
  $async.Future<$11.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $11.DeleteSongEntryRequest request);
  $async.Future<$11.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $11.AddSessionSongResourceRequest request);
  $async.Future<$11.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $11.ListSessionSongResourcesRequest request);
  $async.Future<$11.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $11.DeleteSessionSongResourceRequest request);
  $async.Future<$11.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $11.ListSessionOrganizersRequest request);
  $async.Future<$11.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $11.AddSessionOrganizerRequest request);
  $async.Future<$11.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $11.DeleteSessionOrganizerRequest request);
  $async.Future<$11.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $11.CreateSessionThreadRequest request);
  $async.Future<$11.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $11.ListSessionThreadsRequest request);
  $async.Future<$11.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $11.CreateSongThreadRequest request);
  $async.Future<$11.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $11.GetSessionThreadRequest request);
  $async.Future<$11.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $11.DeleteSessionThreadRequest request);
  $async.Future<$11.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $11.CreateSessionNotificationRequest request);
  $async.Future<$11.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $11.GetSessionTimetableRequest request);
  $async.Future<$11.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $11.UpdateSessionTimetableRequest request);
  $async.Future<$11.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $11.GetOptimizedTimetableRequest request);
  $async.Future<$11.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $11.GetTimetableProgressRequest request);
  $async.Future<$11.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $11.UpdateTimetableProgressRequest request);
  $async.Future<$11.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $11.AddSessionResourceRequest request);
  $async.Future<$11.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $11.ListSessionResourcesRequest request);
  $async.Future<$11.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $11.DeleteSessionResourceRequest request);
  $async.Future<$11.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $11.AddSessionFeedbackRequest request);
  $async.Future<$11.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $11.ListSessionFeedbacksRequest request);
  $async.Future<$11.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $11.ListRelatedSessionsRequest request);
  $async.Future<$11.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $11.AddRelatedSessionRequest request);
  $async.Future<$11.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $11.CreateSessionPartyRequest request);
  $async.Future<$11.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $11.GetSessionPartyRequest request);
  $async.Future<$11.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $11.AddPartyParticipantRequest request);
  $async.Future<$11.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $11.ListPartyParticipantsRequest request);
  $async.Future<$11.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $11.UpdatePartyParticipantRequest request);
  $async.Future<$11.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $11.DeletePartyParticipantRequest request);
}
