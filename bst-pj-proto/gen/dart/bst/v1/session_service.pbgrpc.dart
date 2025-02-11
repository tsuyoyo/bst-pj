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

import 'session_service.pb.dart' as $4;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$4.CreateSessionRequest, $4.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($4.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$4.GetSessionRequest, $4.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($4.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$4.UpdateSessionRequest, $4.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($4.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$4.UpdateSessionStatusRequest, $4.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($4.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$4.CancelSessionRequest, $4.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($4.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$4.DuplicateSessionRequest, $4.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($4.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$4.AddSessionPartRequest, $4.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($4.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$4.UpdateSessionPartRequest, $4.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($4.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$4.DeleteSessionPartRequest, $4.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($4.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$4.UpdateSessionScheduleRequest, $4.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($4.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$4.UpdateSessionLocationRequest, $4.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($4.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$4.ListSessionParticipantsRequest, $4.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($4.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$4.AddSessionParticipantRequest, $4.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($4.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$4.UpdateSessionParticipantRequest, $4.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($4.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$4.ListSessionSongsRequest, $4.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($4.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$4.GetSessionSongRequest, $4.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($4.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$4.UpdateSessionSongRequest, $4.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($4.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$4.DeleteSessionSongRequest, $4.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($4.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$4.AddSongEntryRequest, $4.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($4.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$4.DeleteSongEntryRequest, $4.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($4.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$4.AddSessionSongResourceRequest, $4.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($4.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$4.ListSessionSongResourcesRequest, $4.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($4.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$4.DeleteSessionSongResourceRequest, $4.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($4.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$4.ListSessionOrganizersRequest, $4.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($4.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$4.AddSessionOrganizerRequest, $4.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($4.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$4.DeleteSessionOrganizerRequest, $4.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($4.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$4.CreateSessionThreadRequest, $4.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($4.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$4.ListSessionThreadsRequest, $4.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($4.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$4.CreateSongThreadRequest, $4.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($4.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$4.GetSessionThreadRequest, $4.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($4.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$4.DeleteSessionThreadRequest, $4.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($4.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$4.CreateSessionNotificationRequest, $4.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($4.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$4.GetSessionTimetableRequest, $4.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($4.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$4.UpdateSessionTimetableRequest, $4.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($4.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$4.GetOptimizedTimetableRequest, $4.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($4.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$4.GetTimetableProgressRequest, $4.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($4.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$4.UpdateTimetableProgressRequest, $4.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($4.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$4.AddSessionResourceRequest, $4.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($4.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$4.ListSessionResourcesRequest, $4.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($4.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$4.DeleteSessionResourceRequest, $4.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($4.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$4.AddSessionFeedbackRequest, $4.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($4.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$4.ListSessionFeedbacksRequest, $4.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($4.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$4.ListRelatedSessionsRequest, $4.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($4.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$4.AddRelatedSessionRequest, $4.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($4.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$4.CreateSessionPartyRequest, $4.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($4.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$4.GetSessionPartyRequest, $4.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($4.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$4.AddPartyParticipantRequest, $4.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($4.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$4.ListPartyParticipantsRequest, $4.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($4.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$4.UpdatePartyParticipantRequest, $4.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($4.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$4.DeletePartyParticipantRequest, $4.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($4.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateSessionResponse> createSession($4.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionResponse> getSession($4.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionResponse> updateSession($4.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionStatusResponse> updateSessionStatus($4.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$4.CancelSessionResponse> cancelSession($4.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.DuplicateSessionResponse> duplicateSession($4.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSessionPartResponse> addSessionPart($4.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionPartResponse> updateSessionPart($4.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSessionPartResponse> deleteSessionPart($4.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionScheduleResponse> updateSessionSchedule($4.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionLocationResponse> updateSessionLocation($4.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSessionParticipantsResponse> listSessionParticipants($4.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSessionParticipantResponse> addSessionParticipant($4.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionParticipantResponse> updateSessionParticipant($4.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSessionSongsResponse> listSessionSongs($4.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionSongResponse> getSessionSong($4.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionSongResponse> updateSessionSong($4.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSessionSongResponse> deleteSessionSong($4.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSongEntryResponse> addSongEntry($4.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSongEntryResponse> deleteSongEntry($4.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSessionSongResourceResponse> addSessionSongResource($4.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSessionSongResourcesResponse> listSessionSongResources($4.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSessionSongResourceResponse> deleteSessionSongResource($4.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSessionOrganizersResponse> listSessionOrganizers($4.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSessionOrganizerResponse> addSessionOrganizer($4.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSessionOrganizerResponse> deleteSessionOrganizer($4.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateSessionThreadResponse> createSessionThread($4.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSessionThreadsResponse> listSessionThreads($4.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateSongThreadResponse> createSongThread($4.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionThreadResponse> getSessionThread($4.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSessionThreadResponse> deleteSessionThread($4.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateSessionNotificationResponse> createSessionNotification($4.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionTimetableResponse> getSessionTimetable($4.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateSessionTimetableResponse> updateSessionTimetable($4.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetOptimizedTimetableResponse> getOptimizedTimetable($4.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetTimetableProgressResponse> getTimetableProgress($4.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateTimetableProgressResponse> updateTimetableProgress($4.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSessionResourceResponse> addSessionResource($4.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSessionResourcesResponse> listSessionResources($4.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteSessionResourceResponse> deleteSessionResource($4.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddSessionFeedbackResponse> addSessionFeedback($4.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListSessionFeedbacksResponse> listSessionFeedbacks($4.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListRelatedSessionsResponse> listRelatedSessions($4.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddRelatedSessionResponse> addRelatedSession($4.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateSessionPartyResponse> createSessionParty($4.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionPartyResponse> getSessionParty($4.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddPartyParticipantResponse> addPartyParticipant($4.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListPartyParticipantsResponse> listPartyParticipants($4.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdatePartyParticipantResponse> updatePartyParticipant($4.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeletePartyParticipantResponse> deletePartyParticipant($4.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateSessionRequest, $4.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateSessionRequest.fromBuffer(value),
        ($4.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionRequest, $4.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSessionRequest.fromBuffer(value),
        ($4.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionRequest, $4.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionRequest.fromBuffer(value),
        ($4.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionStatusRequest, $4.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionStatusRequest.fromBuffer(value),
        ($4.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CancelSessionRequest, $4.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CancelSessionRequest.fromBuffer(value),
        ($4.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DuplicateSessionRequest, $4.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DuplicateSessionRequest.fromBuffer(value),
        ($4.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSessionPartRequest, $4.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSessionPartRequest.fromBuffer(value),
        ($4.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionPartRequest, $4.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionPartRequest.fromBuffer(value),
        ($4.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSessionPartRequest, $4.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSessionPartRequest.fromBuffer(value),
        ($4.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionScheduleRequest, $4.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionScheduleRequest.fromBuffer(value),
        ($4.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionLocationRequest, $4.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionLocationRequest.fromBuffer(value),
        ($4.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSessionParticipantsRequest, $4.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSessionParticipantsRequest.fromBuffer(value),
        ($4.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSessionParticipantRequest, $4.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSessionParticipantRequest.fromBuffer(value),
        ($4.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionParticipantRequest, $4.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionParticipantRequest.fromBuffer(value),
        ($4.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSessionSongsRequest, $4.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSessionSongsRequest.fromBuffer(value),
        ($4.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionSongRequest, $4.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSessionSongRequest.fromBuffer(value),
        ($4.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionSongRequest, $4.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionSongRequest.fromBuffer(value),
        ($4.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSessionSongRequest, $4.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSessionSongRequest.fromBuffer(value),
        ($4.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSongEntryRequest, $4.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSongEntryRequest.fromBuffer(value),
        ($4.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSongEntryRequest, $4.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSongEntryRequest.fromBuffer(value),
        ($4.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSessionSongResourceRequest, $4.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSessionSongResourceRequest.fromBuffer(value),
        ($4.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSessionSongResourcesRequest, $4.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSessionSongResourcesRequest.fromBuffer(value),
        ($4.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSessionSongResourceRequest, $4.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($4.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSessionOrganizersRequest, $4.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSessionOrganizersRequest.fromBuffer(value),
        ($4.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSessionOrganizerRequest, $4.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSessionOrganizerRequest.fromBuffer(value),
        ($4.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSessionOrganizerRequest, $4.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($4.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateSessionThreadRequest, $4.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateSessionThreadRequest.fromBuffer(value),
        ($4.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSessionThreadsRequest, $4.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSessionThreadsRequest.fromBuffer(value),
        ($4.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateSongThreadRequest, $4.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateSongThreadRequest.fromBuffer(value),
        ($4.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionThreadRequest, $4.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSessionThreadRequest.fromBuffer(value),
        ($4.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSessionThreadRequest, $4.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSessionThreadRequest.fromBuffer(value),
        ($4.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateSessionNotificationRequest, $4.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateSessionNotificationRequest.fromBuffer(value),
        ($4.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionTimetableRequest, $4.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSessionTimetableRequest.fromBuffer(value),
        ($4.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateSessionTimetableRequest, $4.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateSessionTimetableRequest.fromBuffer(value),
        ($4.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetOptimizedTimetableRequest, $4.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetOptimizedTimetableRequest.fromBuffer(value),
        ($4.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetTimetableProgressRequest, $4.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetTimetableProgressRequest.fromBuffer(value),
        ($4.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateTimetableProgressRequest, $4.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateTimetableProgressRequest.fromBuffer(value),
        ($4.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSessionResourceRequest, $4.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSessionResourceRequest.fromBuffer(value),
        ($4.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSessionResourcesRequest, $4.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSessionResourcesRequest.fromBuffer(value),
        ($4.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteSessionResourceRequest, $4.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteSessionResourceRequest.fromBuffer(value),
        ($4.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddSessionFeedbackRequest, $4.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddSessionFeedbackRequest.fromBuffer(value),
        ($4.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListSessionFeedbacksRequest, $4.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListSessionFeedbacksRequest.fromBuffer(value),
        ($4.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListRelatedSessionsRequest, $4.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListRelatedSessionsRequest.fromBuffer(value),
        ($4.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddRelatedSessionRequest, $4.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddRelatedSessionRequest.fromBuffer(value),
        ($4.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateSessionPartyRequest, $4.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateSessionPartyRequest.fromBuffer(value),
        ($4.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionPartyRequest, $4.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSessionPartyRequest.fromBuffer(value),
        ($4.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddPartyParticipantRequest, $4.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddPartyParticipantRequest.fromBuffer(value),
        ($4.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListPartyParticipantsRequest, $4.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListPartyParticipantsRequest.fromBuffer(value),
        ($4.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdatePartyParticipantRequest, $4.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdatePartyParticipantRequest.fromBuffer(value),
        ($4.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeletePartyParticipantRequest, $4.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeletePartyParticipantRequest.fromBuffer(value),
        ($4.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$4.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$4.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$4.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$4.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$4.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$4.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$4.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$4.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$4.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$4.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$4.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$4.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$4.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$4.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$4.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$4.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$4.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$4.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$4.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$4.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$4.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$4.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$4.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$4.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$4.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$4.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$4.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$4.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$4.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$4.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$4.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$4.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$4.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$4.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$4.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$4.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$4.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$4.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$4.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$4.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$4.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$4.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$4.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$4.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$4.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$4.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$4.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$4.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$4.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$4.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$4.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$4.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$4.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$4.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$4.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$4.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$4.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$4.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$4.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$4.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$4.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$4.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$4.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$4.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$4.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$4.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$4.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$4.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$4.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$4.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$4.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$4.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$4.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$4.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$4.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$4.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$4.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$4.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$4.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$4.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$4.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$4.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$4.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$4.CreateSessionResponse> createSession($grpc.ServiceCall call, $4.CreateSessionRequest request);
  $async.Future<$4.GetSessionResponse> getSession($grpc.ServiceCall call, $4.GetSessionRequest request);
  $async.Future<$4.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $4.UpdateSessionRequest request);
  $async.Future<$4.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $4.UpdateSessionStatusRequest request);
  $async.Future<$4.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $4.CancelSessionRequest request);
  $async.Future<$4.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $4.DuplicateSessionRequest request);
  $async.Future<$4.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $4.AddSessionPartRequest request);
  $async.Future<$4.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $4.UpdateSessionPartRequest request);
  $async.Future<$4.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $4.DeleteSessionPartRequest request);
  $async.Future<$4.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $4.UpdateSessionScheduleRequest request);
  $async.Future<$4.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $4.UpdateSessionLocationRequest request);
  $async.Future<$4.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $4.ListSessionParticipantsRequest request);
  $async.Future<$4.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $4.AddSessionParticipantRequest request);
  $async.Future<$4.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $4.UpdateSessionParticipantRequest request);
  $async.Future<$4.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $4.ListSessionSongsRequest request);
  $async.Future<$4.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $4.GetSessionSongRequest request);
  $async.Future<$4.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $4.UpdateSessionSongRequest request);
  $async.Future<$4.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $4.DeleteSessionSongRequest request);
  $async.Future<$4.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $4.AddSongEntryRequest request);
  $async.Future<$4.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $4.DeleteSongEntryRequest request);
  $async.Future<$4.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $4.AddSessionSongResourceRequest request);
  $async.Future<$4.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $4.ListSessionSongResourcesRequest request);
  $async.Future<$4.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $4.DeleteSessionSongResourceRequest request);
  $async.Future<$4.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $4.ListSessionOrganizersRequest request);
  $async.Future<$4.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $4.AddSessionOrganizerRequest request);
  $async.Future<$4.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $4.DeleteSessionOrganizerRequest request);
  $async.Future<$4.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $4.CreateSessionThreadRequest request);
  $async.Future<$4.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $4.ListSessionThreadsRequest request);
  $async.Future<$4.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $4.CreateSongThreadRequest request);
  $async.Future<$4.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $4.GetSessionThreadRequest request);
  $async.Future<$4.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $4.DeleteSessionThreadRequest request);
  $async.Future<$4.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $4.CreateSessionNotificationRequest request);
  $async.Future<$4.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $4.GetSessionTimetableRequest request);
  $async.Future<$4.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $4.UpdateSessionTimetableRequest request);
  $async.Future<$4.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $4.GetOptimizedTimetableRequest request);
  $async.Future<$4.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $4.GetTimetableProgressRequest request);
  $async.Future<$4.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $4.UpdateTimetableProgressRequest request);
  $async.Future<$4.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $4.AddSessionResourceRequest request);
  $async.Future<$4.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $4.ListSessionResourcesRequest request);
  $async.Future<$4.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $4.DeleteSessionResourceRequest request);
  $async.Future<$4.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $4.AddSessionFeedbackRequest request);
  $async.Future<$4.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $4.ListSessionFeedbacksRequest request);
  $async.Future<$4.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $4.ListRelatedSessionsRequest request);
  $async.Future<$4.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $4.AddRelatedSessionRequest request);
  $async.Future<$4.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $4.CreateSessionPartyRequest request);
  $async.Future<$4.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $4.GetSessionPartyRequest request);
  $async.Future<$4.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $4.AddPartyParticipantRequest request);
  $async.Future<$4.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $4.ListPartyParticipantsRequest request);
  $async.Future<$4.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $4.UpdatePartyParticipantRequest request);
  $async.Future<$4.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $4.DeletePartyParticipantRequest request);
}
