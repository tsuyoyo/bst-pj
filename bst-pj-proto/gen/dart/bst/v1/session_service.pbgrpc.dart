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

import 'session_service.pb.dart' as $6;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$6.CreateSessionRequest, $6.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($6.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$6.GetSessionRequest, $6.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($6.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$6.UpdateSessionRequest, $6.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($6.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$6.UpdateSessionStatusRequest, $6.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($6.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$6.CancelSessionRequest, $6.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($6.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$6.DuplicateSessionRequest, $6.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($6.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$6.AddSessionPartRequest, $6.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($6.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$6.UpdateSessionPartRequest, $6.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($6.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$6.DeleteSessionPartRequest, $6.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($6.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$6.UpdateSessionScheduleRequest, $6.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($6.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$6.UpdateSessionLocationRequest, $6.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($6.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$6.ListSessionParticipantsRequest, $6.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($6.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$6.AddSessionParticipantRequest, $6.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($6.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$6.UpdateSessionParticipantRequest, $6.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($6.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$6.ListSessionSongsRequest, $6.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($6.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$6.GetSessionSongRequest, $6.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($6.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$6.UpdateSessionSongRequest, $6.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($6.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$6.DeleteSessionSongRequest, $6.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($6.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$6.AddSongEntryRequest, $6.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($6.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$6.DeleteSongEntryRequest, $6.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($6.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$6.AddSessionSongResourceRequest, $6.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($6.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$6.ListSessionSongResourcesRequest, $6.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($6.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$6.DeleteSessionSongResourceRequest, $6.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($6.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$6.ListSessionOrganizersRequest, $6.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($6.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$6.AddSessionOrganizerRequest, $6.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($6.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$6.DeleteSessionOrganizerRequest, $6.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($6.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$6.CreateSessionThreadRequest, $6.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($6.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$6.ListSessionThreadsRequest, $6.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($6.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$6.CreateSongThreadRequest, $6.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($6.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$6.GetSessionThreadRequest, $6.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($6.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$6.DeleteSessionThreadRequest, $6.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($6.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$6.CreateSessionNotificationRequest, $6.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($6.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$6.GetSessionTimetableRequest, $6.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($6.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$6.UpdateSessionTimetableRequest, $6.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($6.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$6.GetOptimizedTimetableRequest, $6.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($6.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$6.GetTimetableProgressRequest, $6.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($6.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$6.UpdateTimetableProgressRequest, $6.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($6.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$6.AddSessionResourceRequest, $6.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($6.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$6.ListSessionResourcesRequest, $6.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($6.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$6.DeleteSessionResourceRequest, $6.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($6.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$6.AddSessionFeedbackRequest, $6.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($6.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$6.ListSessionFeedbacksRequest, $6.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($6.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$6.ListRelatedSessionsRequest, $6.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($6.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$6.AddRelatedSessionRequest, $6.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($6.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$6.CreateSessionPartyRequest, $6.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($6.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$6.GetSessionPartyRequest, $6.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($6.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$6.AddPartyParticipantRequest, $6.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($6.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$6.ListPartyParticipantsRequest, $6.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($6.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$6.UpdatePartyParticipantRequest, $6.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($6.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$6.DeletePartyParticipantRequest, $6.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($6.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateSessionResponse> createSession($6.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetSessionResponse> getSession($6.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionResponse> updateSession($6.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionStatusResponse> updateSessionStatus($6.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$6.CancelSessionResponse> cancelSession($6.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$6.DuplicateSessionResponse> duplicateSession($6.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSessionPartResponse> addSessionPart($6.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionPartResponse> updateSessionPart($6.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSessionPartResponse> deleteSessionPart($6.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionScheduleResponse> updateSessionSchedule($6.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionLocationResponse> updateSessionLocation($6.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSessionParticipantsResponse> listSessionParticipants($6.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSessionParticipantResponse> addSessionParticipant($6.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionParticipantResponse> updateSessionParticipant($6.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSessionSongsResponse> listSessionSongs($6.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetSessionSongResponse> getSessionSong($6.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionSongResponse> updateSessionSong($6.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSessionSongResponse> deleteSessionSong($6.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSongEntryResponse> addSongEntry($6.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSongEntryResponse> deleteSongEntry($6.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSessionSongResourceResponse> addSessionSongResource($6.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSessionSongResourcesResponse> listSessionSongResources($6.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSessionSongResourceResponse> deleteSessionSongResource($6.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSessionOrganizersResponse> listSessionOrganizers($6.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSessionOrganizerResponse> addSessionOrganizer($6.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSessionOrganizerResponse> deleteSessionOrganizer($6.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateSessionThreadResponse> createSessionThread($6.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSessionThreadsResponse> listSessionThreads($6.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateSongThreadResponse> createSongThread($6.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetSessionThreadResponse> getSessionThread($6.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSessionThreadResponse> deleteSessionThread($6.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateSessionNotificationResponse> createSessionNotification($6.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetSessionTimetableResponse> getSessionTimetable($6.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSessionTimetableResponse> updateSessionTimetable($6.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetOptimizedTimetableResponse> getOptimizedTimetable($6.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetTimetableProgressResponse> getTimetableProgress($6.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateTimetableProgressResponse> updateTimetableProgress($6.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSessionResourceResponse> addSessionResource($6.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSessionResourcesResponse> listSessionResources($6.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteSessionResourceResponse> deleteSessionResource($6.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSessionFeedbackResponse> addSessionFeedback($6.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListSessionFeedbacksResponse> listSessionFeedbacks($6.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListRelatedSessionsResponse> listRelatedSessions($6.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddRelatedSessionResponse> addRelatedSession($6.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateSessionPartyResponse> createSessionParty($6.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetSessionPartyResponse> getSessionParty($6.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddPartyParticipantResponse> addPartyParticipant($6.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListPartyParticipantsResponse> listPartyParticipants($6.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdatePartyParticipantResponse> updatePartyParticipant($6.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeletePartyParticipantResponse> deletePartyParticipant($6.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateSessionRequest, $6.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateSessionRequest.fromBuffer(value),
        ($6.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetSessionRequest, $6.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetSessionRequest.fromBuffer(value),
        ($6.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionRequest, $6.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionRequest.fromBuffer(value),
        ($6.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionStatusRequest, $6.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionStatusRequest.fromBuffer(value),
        ($6.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CancelSessionRequest, $6.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CancelSessionRequest.fromBuffer(value),
        ($6.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DuplicateSessionRequest, $6.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DuplicateSessionRequest.fromBuffer(value),
        ($6.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSessionPartRequest, $6.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSessionPartRequest.fromBuffer(value),
        ($6.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionPartRequest, $6.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionPartRequest.fromBuffer(value),
        ($6.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSessionPartRequest, $6.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSessionPartRequest.fromBuffer(value),
        ($6.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionScheduleRequest, $6.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionScheduleRequest.fromBuffer(value),
        ($6.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionLocationRequest, $6.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionLocationRequest.fromBuffer(value),
        ($6.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSessionParticipantsRequest, $6.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSessionParticipantsRequest.fromBuffer(value),
        ($6.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSessionParticipantRequest, $6.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSessionParticipantRequest.fromBuffer(value),
        ($6.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionParticipantRequest, $6.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionParticipantRequest.fromBuffer(value),
        ($6.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSessionSongsRequest, $6.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSessionSongsRequest.fromBuffer(value),
        ($6.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetSessionSongRequest, $6.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetSessionSongRequest.fromBuffer(value),
        ($6.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionSongRequest, $6.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionSongRequest.fromBuffer(value),
        ($6.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSessionSongRequest, $6.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSessionSongRequest.fromBuffer(value),
        ($6.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSongEntryRequest, $6.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSongEntryRequest.fromBuffer(value),
        ($6.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSongEntryRequest, $6.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSongEntryRequest.fromBuffer(value),
        ($6.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSessionSongResourceRequest, $6.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSessionSongResourceRequest.fromBuffer(value),
        ($6.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSessionSongResourcesRequest, $6.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSessionSongResourcesRequest.fromBuffer(value),
        ($6.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSessionSongResourceRequest, $6.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($6.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSessionOrganizersRequest, $6.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSessionOrganizersRequest.fromBuffer(value),
        ($6.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSessionOrganizerRequest, $6.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSessionOrganizerRequest.fromBuffer(value),
        ($6.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSessionOrganizerRequest, $6.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($6.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateSessionThreadRequest, $6.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateSessionThreadRequest.fromBuffer(value),
        ($6.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSessionThreadsRequest, $6.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSessionThreadsRequest.fromBuffer(value),
        ($6.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateSongThreadRequest, $6.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateSongThreadRequest.fromBuffer(value),
        ($6.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetSessionThreadRequest, $6.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetSessionThreadRequest.fromBuffer(value),
        ($6.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSessionThreadRequest, $6.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSessionThreadRequest.fromBuffer(value),
        ($6.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateSessionNotificationRequest, $6.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateSessionNotificationRequest.fromBuffer(value),
        ($6.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetSessionTimetableRequest, $6.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetSessionTimetableRequest.fromBuffer(value),
        ($6.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSessionTimetableRequest, $6.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSessionTimetableRequest.fromBuffer(value),
        ($6.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetOptimizedTimetableRequest, $6.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetOptimizedTimetableRequest.fromBuffer(value),
        ($6.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetTimetableProgressRequest, $6.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetTimetableProgressRequest.fromBuffer(value),
        ($6.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateTimetableProgressRequest, $6.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateTimetableProgressRequest.fromBuffer(value),
        ($6.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSessionResourceRequest, $6.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSessionResourceRequest.fromBuffer(value),
        ($6.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSessionResourcesRequest, $6.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSessionResourcesRequest.fromBuffer(value),
        ($6.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteSessionResourceRequest, $6.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteSessionResourceRequest.fromBuffer(value),
        ($6.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSessionFeedbackRequest, $6.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSessionFeedbackRequest.fromBuffer(value),
        ($6.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListSessionFeedbacksRequest, $6.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListSessionFeedbacksRequest.fromBuffer(value),
        ($6.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListRelatedSessionsRequest, $6.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListRelatedSessionsRequest.fromBuffer(value),
        ($6.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddRelatedSessionRequest, $6.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddRelatedSessionRequest.fromBuffer(value),
        ($6.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateSessionPartyRequest, $6.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateSessionPartyRequest.fromBuffer(value),
        ($6.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetSessionPartyRequest, $6.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetSessionPartyRequest.fromBuffer(value),
        ($6.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddPartyParticipantRequest, $6.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddPartyParticipantRequest.fromBuffer(value),
        ($6.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListPartyParticipantsRequest, $6.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListPartyParticipantsRequest.fromBuffer(value),
        ($6.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdatePartyParticipantRequest, $6.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdatePartyParticipantRequest.fromBuffer(value),
        ($6.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeletePartyParticipantRequest, $6.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeletePartyParticipantRequest.fromBuffer(value),
        ($6.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$6.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$6.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$6.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$6.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$6.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$6.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$6.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$6.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$6.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$6.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$6.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$6.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$6.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$6.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$6.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$6.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$6.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$6.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$6.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$6.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$6.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$6.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$6.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$6.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$6.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$6.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$6.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$6.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$6.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$6.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$6.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$6.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$6.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$6.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$6.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$6.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$6.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$6.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$6.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$6.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$6.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$6.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$6.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$6.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$6.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$6.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$6.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$6.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$6.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$6.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$6.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$6.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$6.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$6.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$6.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$6.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$6.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$6.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$6.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$6.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$6.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$6.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$6.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$6.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$6.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$6.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$6.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$6.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$6.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$6.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$6.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$6.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$6.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$6.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$6.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$6.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$6.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$6.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$6.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$6.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$6.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$6.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$6.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$6.CreateSessionResponse> createSession($grpc.ServiceCall call, $6.CreateSessionRequest request);
  $async.Future<$6.GetSessionResponse> getSession($grpc.ServiceCall call, $6.GetSessionRequest request);
  $async.Future<$6.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $6.UpdateSessionRequest request);
  $async.Future<$6.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $6.UpdateSessionStatusRequest request);
  $async.Future<$6.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $6.CancelSessionRequest request);
  $async.Future<$6.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $6.DuplicateSessionRequest request);
  $async.Future<$6.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $6.AddSessionPartRequest request);
  $async.Future<$6.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $6.UpdateSessionPartRequest request);
  $async.Future<$6.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $6.DeleteSessionPartRequest request);
  $async.Future<$6.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $6.UpdateSessionScheduleRequest request);
  $async.Future<$6.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $6.UpdateSessionLocationRequest request);
  $async.Future<$6.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $6.ListSessionParticipantsRequest request);
  $async.Future<$6.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $6.AddSessionParticipantRequest request);
  $async.Future<$6.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $6.UpdateSessionParticipantRequest request);
  $async.Future<$6.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $6.ListSessionSongsRequest request);
  $async.Future<$6.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $6.GetSessionSongRequest request);
  $async.Future<$6.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $6.UpdateSessionSongRequest request);
  $async.Future<$6.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $6.DeleteSessionSongRequest request);
  $async.Future<$6.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $6.AddSongEntryRequest request);
  $async.Future<$6.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $6.DeleteSongEntryRequest request);
  $async.Future<$6.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $6.AddSessionSongResourceRequest request);
  $async.Future<$6.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $6.ListSessionSongResourcesRequest request);
  $async.Future<$6.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $6.DeleteSessionSongResourceRequest request);
  $async.Future<$6.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $6.ListSessionOrganizersRequest request);
  $async.Future<$6.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $6.AddSessionOrganizerRequest request);
  $async.Future<$6.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $6.DeleteSessionOrganizerRequest request);
  $async.Future<$6.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $6.CreateSessionThreadRequest request);
  $async.Future<$6.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $6.ListSessionThreadsRequest request);
  $async.Future<$6.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $6.CreateSongThreadRequest request);
  $async.Future<$6.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $6.GetSessionThreadRequest request);
  $async.Future<$6.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $6.DeleteSessionThreadRequest request);
  $async.Future<$6.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $6.CreateSessionNotificationRequest request);
  $async.Future<$6.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $6.GetSessionTimetableRequest request);
  $async.Future<$6.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $6.UpdateSessionTimetableRequest request);
  $async.Future<$6.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $6.GetOptimizedTimetableRequest request);
  $async.Future<$6.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $6.GetTimetableProgressRequest request);
  $async.Future<$6.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $6.UpdateTimetableProgressRequest request);
  $async.Future<$6.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $6.AddSessionResourceRequest request);
  $async.Future<$6.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $6.ListSessionResourcesRequest request);
  $async.Future<$6.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $6.DeleteSessionResourceRequest request);
  $async.Future<$6.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $6.AddSessionFeedbackRequest request);
  $async.Future<$6.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $6.ListSessionFeedbacksRequest request);
  $async.Future<$6.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $6.ListRelatedSessionsRequest request);
  $async.Future<$6.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $6.AddRelatedSessionRequest request);
  $async.Future<$6.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $6.CreateSessionPartyRequest request);
  $async.Future<$6.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $6.GetSessionPartyRequest request);
  $async.Future<$6.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $6.AddPartyParticipantRequest request);
  $async.Future<$6.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $6.ListPartyParticipantsRequest request);
  $async.Future<$6.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $6.UpdatePartyParticipantRequest request);
  $async.Future<$6.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $6.DeletePartyParticipantRequest request);
}
