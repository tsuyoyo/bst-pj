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

import 'session_service.pb.dart' as $5;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$5.CreateSessionRequest, $5.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($5.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$5.GetSessionRequest, $5.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($5.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$5.UpdateSessionRequest, $5.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($5.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$5.UpdateSessionStatusRequest, $5.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($5.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$5.CancelSessionRequest, $5.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($5.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$5.DuplicateSessionRequest, $5.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($5.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$5.AddSessionPartRequest, $5.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($5.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$5.UpdateSessionPartRequest, $5.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($5.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$5.DeleteSessionPartRequest, $5.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($5.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$5.UpdateSessionScheduleRequest, $5.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($5.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$5.UpdateSessionLocationRequest, $5.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($5.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$5.ListSessionParticipantsRequest, $5.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($5.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$5.AddSessionParticipantRequest, $5.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($5.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$5.UpdateSessionParticipantRequest, $5.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($5.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$5.ListSessionSongsRequest, $5.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($5.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$5.GetSessionSongRequest, $5.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($5.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$5.UpdateSessionSongRequest, $5.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($5.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$5.DeleteSessionSongRequest, $5.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($5.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$5.AddSongEntryRequest, $5.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($5.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$5.DeleteSongEntryRequest, $5.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($5.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$5.AddSessionSongResourceRequest, $5.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($5.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$5.ListSessionSongResourcesRequest, $5.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($5.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$5.DeleteSessionSongResourceRequest, $5.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($5.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$5.ListSessionOrganizersRequest, $5.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($5.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$5.AddSessionOrganizerRequest, $5.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($5.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$5.DeleteSessionOrganizerRequest, $5.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($5.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$5.CreateSessionThreadRequest, $5.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($5.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$5.ListSessionThreadsRequest, $5.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($5.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$5.CreateSongThreadRequest, $5.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($5.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$5.GetSessionThreadRequest, $5.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($5.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$5.DeleteSessionThreadRequest, $5.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($5.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$5.CreateSessionNotificationRequest, $5.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($5.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$5.GetSessionTimetableRequest, $5.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($5.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$5.UpdateSessionTimetableRequest, $5.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($5.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$5.GetOptimizedTimetableRequest, $5.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($5.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$5.GetTimetableProgressRequest, $5.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($5.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$5.UpdateTimetableProgressRequest, $5.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($5.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$5.AddSessionResourceRequest, $5.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($5.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$5.ListSessionResourcesRequest, $5.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($5.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$5.DeleteSessionResourceRequest, $5.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($5.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$5.AddSessionFeedbackRequest, $5.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($5.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$5.ListSessionFeedbacksRequest, $5.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($5.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$5.ListRelatedSessionsRequest, $5.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($5.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$5.AddRelatedSessionRequest, $5.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($5.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$5.CreateSessionPartyRequest, $5.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($5.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$5.GetSessionPartyRequest, $5.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($5.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$5.AddPartyParticipantRequest, $5.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($5.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$5.ListPartyParticipantsRequest, $5.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($5.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$5.UpdatePartyParticipantRequest, $5.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($5.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$5.DeletePartyParticipantRequest, $5.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($5.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateSessionResponse> createSession($5.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSessionResponse> getSession($5.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionResponse> updateSession($5.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionStatusResponse> updateSessionStatus($5.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$5.CancelSessionResponse> cancelSession($5.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.DuplicateSessionResponse> duplicateSession($5.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSessionPartResponse> addSessionPart($5.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionPartResponse> updateSessionPart($5.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSessionPartResponse> deleteSessionPart($5.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionScheduleResponse> updateSessionSchedule($5.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionLocationResponse> updateSessionLocation($5.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionParticipantsResponse> listSessionParticipants($5.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSessionParticipantResponse> addSessionParticipant($5.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionParticipantResponse> updateSessionParticipant($5.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionSongsResponse> listSessionSongs($5.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSessionSongResponse> getSessionSong($5.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionSongResponse> updateSessionSong($5.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSessionSongResponse> deleteSessionSong($5.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSongEntryResponse> addSongEntry($5.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSongEntryResponse> deleteSongEntry($5.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSessionSongResourceResponse> addSessionSongResource($5.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionSongResourcesResponse> listSessionSongResources($5.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSessionSongResourceResponse> deleteSessionSongResource($5.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionOrganizersResponse> listSessionOrganizers($5.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSessionOrganizerResponse> addSessionOrganizer($5.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSessionOrganizerResponse> deleteSessionOrganizer($5.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateSessionThreadResponse> createSessionThread($5.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionThreadsResponse> listSessionThreads($5.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateSongThreadResponse> createSongThread($5.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSessionThreadResponse> getSessionThread($5.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSessionThreadResponse> deleteSessionThread($5.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateSessionNotificationResponse> createSessionNotification($5.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSessionTimetableResponse> getSessionTimetable($5.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSessionTimetableResponse> updateSessionTimetable($5.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetOptimizedTimetableResponse> getOptimizedTimetable($5.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetTimetableProgressResponse> getTimetableProgress($5.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateTimetableProgressResponse> updateTimetableProgress($5.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSessionResourceResponse> addSessionResource($5.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionResourcesResponse> listSessionResources($5.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteSessionResourceResponse> deleteSessionResource($5.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSessionFeedbackResponse> addSessionFeedback($5.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionFeedbacksResponse> listSessionFeedbacks($5.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListRelatedSessionsResponse> listRelatedSessions($5.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddRelatedSessionResponse> addRelatedSession($5.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateSessionPartyResponse> createSessionParty($5.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSessionPartyResponse> getSessionParty($5.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddPartyParticipantResponse> addPartyParticipant($5.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListPartyParticipantsResponse> listPartyParticipants($5.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdatePartyParticipantResponse> updatePartyParticipant($5.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeletePartyParticipantResponse> deletePartyParticipant($5.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateSessionRequest, $5.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateSessionRequest.fromBuffer(value),
        ($5.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSessionRequest, $5.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetSessionRequest.fromBuffer(value),
        ($5.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionRequest, $5.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionRequest.fromBuffer(value),
        ($5.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionStatusRequest, $5.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionStatusRequest.fromBuffer(value),
        ($5.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CancelSessionRequest, $5.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CancelSessionRequest.fromBuffer(value),
        ($5.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DuplicateSessionRequest, $5.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DuplicateSessionRequest.fromBuffer(value),
        ($5.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSessionPartRequest, $5.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSessionPartRequest.fromBuffer(value),
        ($5.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionPartRequest, $5.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionPartRequest.fromBuffer(value),
        ($5.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSessionPartRequest, $5.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSessionPartRequest.fromBuffer(value),
        ($5.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionScheduleRequest, $5.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionScheduleRequest.fromBuffer(value),
        ($5.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionLocationRequest, $5.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionLocationRequest.fromBuffer(value),
        ($5.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSessionParticipantsRequest, $5.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSessionParticipantsRequest.fromBuffer(value),
        ($5.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSessionParticipantRequest, $5.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSessionParticipantRequest.fromBuffer(value),
        ($5.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionParticipantRequest, $5.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionParticipantRequest.fromBuffer(value),
        ($5.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSessionSongsRequest, $5.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSessionSongsRequest.fromBuffer(value),
        ($5.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSessionSongRequest, $5.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetSessionSongRequest.fromBuffer(value),
        ($5.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionSongRequest, $5.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionSongRequest.fromBuffer(value),
        ($5.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSessionSongRequest, $5.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSessionSongRequest.fromBuffer(value),
        ($5.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSongEntryRequest, $5.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSongEntryRequest.fromBuffer(value),
        ($5.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSongEntryRequest, $5.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSongEntryRequest.fromBuffer(value),
        ($5.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSessionSongResourceRequest, $5.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSessionSongResourceRequest.fromBuffer(value),
        ($5.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSessionSongResourcesRequest, $5.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSessionSongResourcesRequest.fromBuffer(value),
        ($5.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSessionSongResourceRequest, $5.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($5.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSessionOrganizersRequest, $5.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSessionOrganizersRequest.fromBuffer(value),
        ($5.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSessionOrganizerRequest, $5.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSessionOrganizerRequest.fromBuffer(value),
        ($5.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSessionOrganizerRequest, $5.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($5.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateSessionThreadRequest, $5.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateSessionThreadRequest.fromBuffer(value),
        ($5.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSessionThreadsRequest, $5.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSessionThreadsRequest.fromBuffer(value),
        ($5.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateSongThreadRequest, $5.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateSongThreadRequest.fromBuffer(value),
        ($5.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSessionThreadRequest, $5.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetSessionThreadRequest.fromBuffer(value),
        ($5.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSessionThreadRequest, $5.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSessionThreadRequest.fromBuffer(value),
        ($5.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateSessionNotificationRequest, $5.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateSessionNotificationRequest.fromBuffer(value),
        ($5.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSessionTimetableRequest, $5.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetSessionTimetableRequest.fromBuffer(value),
        ($5.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSessionTimetableRequest, $5.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSessionTimetableRequest.fromBuffer(value),
        ($5.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetOptimizedTimetableRequest, $5.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetOptimizedTimetableRequest.fromBuffer(value),
        ($5.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetTimetableProgressRequest, $5.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetTimetableProgressRequest.fromBuffer(value),
        ($5.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateTimetableProgressRequest, $5.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateTimetableProgressRequest.fromBuffer(value),
        ($5.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSessionResourceRequest, $5.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSessionResourceRequest.fromBuffer(value),
        ($5.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSessionResourcesRequest, $5.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSessionResourcesRequest.fromBuffer(value),
        ($5.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteSessionResourceRequest, $5.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteSessionResourceRequest.fromBuffer(value),
        ($5.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSessionFeedbackRequest, $5.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSessionFeedbackRequest.fromBuffer(value),
        ($5.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListSessionFeedbacksRequest, $5.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListSessionFeedbacksRequest.fromBuffer(value),
        ($5.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListRelatedSessionsRequest, $5.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListRelatedSessionsRequest.fromBuffer(value),
        ($5.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddRelatedSessionRequest, $5.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddRelatedSessionRequest.fromBuffer(value),
        ($5.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateSessionPartyRequest, $5.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateSessionPartyRequest.fromBuffer(value),
        ($5.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSessionPartyRequest, $5.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetSessionPartyRequest.fromBuffer(value),
        ($5.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddPartyParticipantRequest, $5.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddPartyParticipantRequest.fromBuffer(value),
        ($5.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListPartyParticipantsRequest, $5.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListPartyParticipantsRequest.fromBuffer(value),
        ($5.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdatePartyParticipantRequest, $5.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdatePartyParticipantRequest.fromBuffer(value),
        ($5.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeletePartyParticipantRequest, $5.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeletePartyParticipantRequest.fromBuffer(value),
        ($5.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$5.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$5.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$5.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$5.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$5.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$5.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$5.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$5.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$5.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$5.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$5.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$5.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$5.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$5.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$5.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$5.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$5.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$5.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$5.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$5.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$5.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$5.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$5.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$5.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$5.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$5.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$5.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$5.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$5.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$5.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$5.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$5.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$5.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$5.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$5.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$5.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$5.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$5.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$5.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$5.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$5.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$5.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$5.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$5.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$5.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$5.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$5.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$5.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$5.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$5.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$5.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$5.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$5.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$5.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$5.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$5.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$5.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$5.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$5.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$5.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$5.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$5.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$5.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$5.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$5.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$5.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$5.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$5.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$5.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$5.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$5.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$5.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$5.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$5.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$5.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$5.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$5.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$5.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$5.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$5.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$5.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$5.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$5.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$5.CreateSessionResponse> createSession($grpc.ServiceCall call, $5.CreateSessionRequest request);
  $async.Future<$5.GetSessionResponse> getSession($grpc.ServiceCall call, $5.GetSessionRequest request);
  $async.Future<$5.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $5.UpdateSessionRequest request);
  $async.Future<$5.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $5.UpdateSessionStatusRequest request);
  $async.Future<$5.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $5.CancelSessionRequest request);
  $async.Future<$5.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $5.DuplicateSessionRequest request);
  $async.Future<$5.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $5.AddSessionPartRequest request);
  $async.Future<$5.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $5.UpdateSessionPartRequest request);
  $async.Future<$5.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $5.DeleteSessionPartRequest request);
  $async.Future<$5.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $5.UpdateSessionScheduleRequest request);
  $async.Future<$5.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $5.UpdateSessionLocationRequest request);
  $async.Future<$5.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $5.ListSessionParticipantsRequest request);
  $async.Future<$5.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $5.AddSessionParticipantRequest request);
  $async.Future<$5.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $5.UpdateSessionParticipantRequest request);
  $async.Future<$5.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $5.ListSessionSongsRequest request);
  $async.Future<$5.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $5.GetSessionSongRequest request);
  $async.Future<$5.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $5.UpdateSessionSongRequest request);
  $async.Future<$5.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $5.DeleteSessionSongRequest request);
  $async.Future<$5.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $5.AddSongEntryRequest request);
  $async.Future<$5.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $5.DeleteSongEntryRequest request);
  $async.Future<$5.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $5.AddSessionSongResourceRequest request);
  $async.Future<$5.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $5.ListSessionSongResourcesRequest request);
  $async.Future<$5.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $5.DeleteSessionSongResourceRequest request);
  $async.Future<$5.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $5.ListSessionOrganizersRequest request);
  $async.Future<$5.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $5.AddSessionOrganizerRequest request);
  $async.Future<$5.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $5.DeleteSessionOrganizerRequest request);
  $async.Future<$5.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $5.CreateSessionThreadRequest request);
  $async.Future<$5.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $5.ListSessionThreadsRequest request);
  $async.Future<$5.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $5.CreateSongThreadRequest request);
  $async.Future<$5.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $5.GetSessionThreadRequest request);
  $async.Future<$5.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $5.DeleteSessionThreadRequest request);
  $async.Future<$5.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $5.CreateSessionNotificationRequest request);
  $async.Future<$5.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $5.GetSessionTimetableRequest request);
  $async.Future<$5.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $5.UpdateSessionTimetableRequest request);
  $async.Future<$5.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $5.GetOptimizedTimetableRequest request);
  $async.Future<$5.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $5.GetTimetableProgressRequest request);
  $async.Future<$5.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $5.UpdateTimetableProgressRequest request);
  $async.Future<$5.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $5.AddSessionResourceRequest request);
  $async.Future<$5.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $5.ListSessionResourcesRequest request);
  $async.Future<$5.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $5.DeleteSessionResourceRequest request);
  $async.Future<$5.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $5.AddSessionFeedbackRequest request);
  $async.Future<$5.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $5.ListSessionFeedbacksRequest request);
  $async.Future<$5.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $5.ListRelatedSessionsRequest request);
  $async.Future<$5.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $5.AddRelatedSessionRequest request);
  $async.Future<$5.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $5.CreateSessionPartyRequest request);
  $async.Future<$5.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $5.GetSessionPartyRequest request);
  $async.Future<$5.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $5.AddPartyParticipantRequest request);
  $async.Future<$5.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $5.ListPartyParticipantsRequest request);
  $async.Future<$5.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $5.UpdatePartyParticipantRequest request);
  $async.Future<$5.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $5.DeletePartyParticipantRequest request);
}
