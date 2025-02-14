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

import 'session_service.pb.dart' as $12;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$12.CreateSessionRequest, $12.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($12.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$12.GetSessionRequest, $12.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($12.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$12.UpdateSessionRequest, $12.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($12.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$12.UpdateSessionStatusRequest, $12.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($12.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$12.CancelSessionRequest, $12.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($12.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$12.DuplicateSessionRequest, $12.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($12.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$12.AddSessionPartRequest, $12.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($12.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$12.UpdateSessionPartRequest, $12.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($12.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$12.DeleteSessionPartRequest, $12.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($12.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$12.UpdateSessionScheduleRequest, $12.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($12.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$12.UpdateSessionLocationRequest, $12.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($12.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$12.ListSessionParticipantsRequest, $12.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($12.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$12.AddSessionParticipantRequest, $12.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($12.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$12.UpdateSessionParticipantRequest, $12.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($12.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$12.ListSessionSongsRequest, $12.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($12.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$12.GetSessionSongRequest, $12.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($12.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$12.UpdateSessionSongRequest, $12.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($12.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$12.DeleteSessionSongRequest, $12.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($12.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$12.AddSongEntryRequest, $12.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($12.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$12.DeleteSongEntryRequest, $12.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($12.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$12.AddSessionSongResourceRequest, $12.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($12.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$12.ListSessionSongResourcesRequest, $12.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($12.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$12.DeleteSessionSongResourceRequest, $12.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($12.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$12.ListSessionOrganizersRequest, $12.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($12.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$12.AddSessionOrganizerRequest, $12.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($12.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$12.DeleteSessionOrganizerRequest, $12.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($12.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$12.CreateSessionThreadRequest, $12.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($12.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$12.ListSessionThreadsRequest, $12.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($12.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$12.CreateSongThreadRequest, $12.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($12.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$12.GetSessionThreadRequest, $12.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($12.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$12.DeleteSessionThreadRequest, $12.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($12.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$12.CreateSessionNotificationRequest, $12.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($12.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$12.GetSessionTimetableRequest, $12.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($12.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$12.UpdateSessionTimetableRequest, $12.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($12.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$12.GetOptimizedTimetableRequest, $12.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($12.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$12.GetTimetableProgressRequest, $12.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($12.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$12.UpdateTimetableProgressRequest, $12.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($12.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$12.AddSessionResourceRequest, $12.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($12.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$12.ListSessionResourcesRequest, $12.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($12.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$12.DeleteSessionResourceRequest, $12.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($12.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$12.AddSessionFeedbackRequest, $12.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($12.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$12.ListSessionFeedbacksRequest, $12.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($12.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$12.ListRelatedSessionsRequest, $12.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($12.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$12.AddRelatedSessionRequest, $12.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($12.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$12.CreateSessionPartyRequest, $12.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($12.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$12.GetSessionPartyRequest, $12.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($12.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$12.AddPartyParticipantRequest, $12.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($12.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$12.ListPartyParticipantsRequest, $12.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($12.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$12.UpdatePartyParticipantRequest, $12.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($12.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$12.DeletePartyParticipantRequest, $12.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($12.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateSessionResponse> createSession($12.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetSessionResponse> getSession($12.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionResponse> updateSession($12.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionStatusResponse> updateSessionStatus($12.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$12.CancelSessionResponse> cancelSession($12.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$12.DuplicateSessionResponse> duplicateSession($12.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSessionPartResponse> addSessionPart($12.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionPartResponse> updateSessionPart($12.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSessionPartResponse> deleteSessionPart($12.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionScheduleResponse> updateSessionSchedule($12.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionLocationResponse> updateSessionLocation($12.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSessionParticipantsResponse> listSessionParticipants($12.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSessionParticipantResponse> addSessionParticipant($12.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionParticipantResponse> updateSessionParticipant($12.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSessionSongsResponse> listSessionSongs($12.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetSessionSongResponse> getSessionSong($12.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionSongResponse> updateSessionSong($12.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSessionSongResponse> deleteSessionSong($12.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSongEntryResponse> addSongEntry($12.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSongEntryResponse> deleteSongEntry($12.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSessionSongResourceResponse> addSessionSongResource($12.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSessionSongResourcesResponse> listSessionSongResources($12.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSessionSongResourceResponse> deleteSessionSongResource($12.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSessionOrganizersResponse> listSessionOrganizers($12.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSessionOrganizerResponse> addSessionOrganizer($12.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSessionOrganizerResponse> deleteSessionOrganizer($12.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$12.CreateSessionThreadResponse> createSessionThread($12.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSessionThreadsResponse> listSessionThreads($12.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$12.CreateSongThreadResponse> createSongThread($12.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetSessionThreadResponse> getSessionThread($12.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSessionThreadResponse> deleteSessionThread($12.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$12.CreateSessionNotificationResponse> createSessionNotification($12.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetSessionTimetableResponse> getSessionTimetable($12.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSessionTimetableResponse> updateSessionTimetable($12.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetOptimizedTimetableResponse> getOptimizedTimetable($12.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetTimetableProgressResponse> getTimetableProgress($12.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateTimetableProgressResponse> updateTimetableProgress($12.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSessionResourceResponse> addSessionResource($12.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSessionResourcesResponse> listSessionResources($12.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSessionResourceResponse> deleteSessionResource($12.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddSessionFeedbackResponse> addSessionFeedback($12.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListSessionFeedbacksResponse> listSessionFeedbacks($12.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListRelatedSessionsResponse> listRelatedSessions($12.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddRelatedSessionResponse> addRelatedSession($12.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$12.CreateSessionPartyResponse> createSessionParty($12.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetSessionPartyResponse> getSessionParty($12.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$12.AddPartyParticipantResponse> addPartyParticipant($12.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListPartyParticipantsResponse> listPartyParticipants($12.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdatePartyParticipantResponse> updatePartyParticipant($12.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeletePartyParticipantResponse> deletePartyParticipant($12.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateSessionRequest, $12.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateSessionRequest.fromBuffer(value),
        ($12.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetSessionRequest, $12.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetSessionRequest.fromBuffer(value),
        ($12.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionRequest, $12.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionRequest.fromBuffer(value),
        ($12.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionStatusRequest, $12.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionStatusRequest.fromBuffer(value),
        ($12.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CancelSessionRequest, $12.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CancelSessionRequest.fromBuffer(value),
        ($12.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DuplicateSessionRequest, $12.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DuplicateSessionRequest.fromBuffer(value),
        ($12.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSessionPartRequest, $12.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSessionPartRequest.fromBuffer(value),
        ($12.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionPartRequest, $12.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionPartRequest.fromBuffer(value),
        ($12.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSessionPartRequest, $12.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSessionPartRequest.fromBuffer(value),
        ($12.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionScheduleRequest, $12.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionScheduleRequest.fromBuffer(value),
        ($12.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionLocationRequest, $12.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionLocationRequest.fromBuffer(value),
        ($12.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSessionParticipantsRequest, $12.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSessionParticipantsRequest.fromBuffer(value),
        ($12.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSessionParticipantRequest, $12.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSessionParticipantRequest.fromBuffer(value),
        ($12.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionParticipantRequest, $12.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionParticipantRequest.fromBuffer(value),
        ($12.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSessionSongsRequest, $12.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSessionSongsRequest.fromBuffer(value),
        ($12.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetSessionSongRequest, $12.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetSessionSongRequest.fromBuffer(value),
        ($12.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionSongRequest, $12.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionSongRequest.fromBuffer(value),
        ($12.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSessionSongRequest, $12.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSessionSongRequest.fromBuffer(value),
        ($12.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSongEntryRequest, $12.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSongEntryRequest.fromBuffer(value),
        ($12.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSongEntryRequest, $12.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSongEntryRequest.fromBuffer(value),
        ($12.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSessionSongResourceRequest, $12.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSessionSongResourceRequest.fromBuffer(value),
        ($12.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSessionSongResourcesRequest, $12.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSessionSongResourcesRequest.fromBuffer(value),
        ($12.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSessionSongResourceRequest, $12.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($12.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSessionOrganizersRequest, $12.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSessionOrganizersRequest.fromBuffer(value),
        ($12.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSessionOrganizerRequest, $12.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSessionOrganizerRequest.fromBuffer(value),
        ($12.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSessionOrganizerRequest, $12.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($12.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CreateSessionThreadRequest, $12.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateSessionThreadRequest.fromBuffer(value),
        ($12.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSessionThreadsRequest, $12.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSessionThreadsRequest.fromBuffer(value),
        ($12.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CreateSongThreadRequest, $12.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateSongThreadRequest.fromBuffer(value),
        ($12.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetSessionThreadRequest, $12.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetSessionThreadRequest.fromBuffer(value),
        ($12.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSessionThreadRequest, $12.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSessionThreadRequest.fromBuffer(value),
        ($12.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CreateSessionNotificationRequest, $12.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateSessionNotificationRequest.fromBuffer(value),
        ($12.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetSessionTimetableRequest, $12.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetSessionTimetableRequest.fromBuffer(value),
        ($12.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSessionTimetableRequest, $12.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSessionTimetableRequest.fromBuffer(value),
        ($12.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetOptimizedTimetableRequest, $12.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetOptimizedTimetableRequest.fromBuffer(value),
        ($12.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetTimetableProgressRequest, $12.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetTimetableProgressRequest.fromBuffer(value),
        ($12.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateTimetableProgressRequest, $12.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateTimetableProgressRequest.fromBuffer(value),
        ($12.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSessionResourceRequest, $12.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSessionResourceRequest.fromBuffer(value),
        ($12.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSessionResourcesRequest, $12.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSessionResourcesRequest.fromBuffer(value),
        ($12.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSessionResourceRequest, $12.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSessionResourceRequest.fromBuffer(value),
        ($12.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddSessionFeedbackRequest, $12.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddSessionFeedbackRequest.fromBuffer(value),
        ($12.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListSessionFeedbacksRequest, $12.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListSessionFeedbacksRequest.fromBuffer(value),
        ($12.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListRelatedSessionsRequest, $12.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListRelatedSessionsRequest.fromBuffer(value),
        ($12.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddRelatedSessionRequest, $12.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddRelatedSessionRequest.fromBuffer(value),
        ($12.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CreateSessionPartyRequest, $12.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateSessionPartyRequest.fromBuffer(value),
        ($12.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetSessionPartyRequest, $12.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetSessionPartyRequest.fromBuffer(value),
        ($12.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AddPartyParticipantRequest, $12.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AddPartyParticipantRequest.fromBuffer(value),
        ($12.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListPartyParticipantsRequest, $12.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListPartyParticipantsRequest.fromBuffer(value),
        ($12.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdatePartyParticipantRequest, $12.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdatePartyParticipantRequest.fromBuffer(value),
        ($12.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeletePartyParticipantRequest, $12.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeletePartyParticipantRequest.fromBuffer(value),
        ($12.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$12.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$12.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$12.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$12.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$12.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$12.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$12.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$12.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$12.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$12.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$12.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$12.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$12.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$12.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$12.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$12.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$12.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$12.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$12.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$12.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$12.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$12.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$12.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$12.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$12.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$12.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$12.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$12.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$12.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$12.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$12.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$12.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$12.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$12.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$12.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$12.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$12.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$12.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$12.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$12.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$12.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$12.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$12.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$12.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$12.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$12.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$12.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$12.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$12.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$12.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$12.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$12.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$12.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$12.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$12.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$12.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$12.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$12.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$12.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$12.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$12.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$12.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$12.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$12.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$12.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$12.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$12.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$12.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$12.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$12.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$12.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$12.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$12.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$12.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$12.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$12.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$12.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$12.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$12.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$12.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$12.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$12.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$12.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$12.CreateSessionResponse> createSession($grpc.ServiceCall call, $12.CreateSessionRequest request);
  $async.Future<$12.GetSessionResponse> getSession($grpc.ServiceCall call, $12.GetSessionRequest request);
  $async.Future<$12.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $12.UpdateSessionRequest request);
  $async.Future<$12.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $12.UpdateSessionStatusRequest request);
  $async.Future<$12.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $12.CancelSessionRequest request);
  $async.Future<$12.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $12.DuplicateSessionRequest request);
  $async.Future<$12.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $12.AddSessionPartRequest request);
  $async.Future<$12.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $12.UpdateSessionPartRequest request);
  $async.Future<$12.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $12.DeleteSessionPartRequest request);
  $async.Future<$12.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $12.UpdateSessionScheduleRequest request);
  $async.Future<$12.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $12.UpdateSessionLocationRequest request);
  $async.Future<$12.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $12.ListSessionParticipantsRequest request);
  $async.Future<$12.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $12.AddSessionParticipantRequest request);
  $async.Future<$12.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $12.UpdateSessionParticipantRequest request);
  $async.Future<$12.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $12.ListSessionSongsRequest request);
  $async.Future<$12.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $12.GetSessionSongRequest request);
  $async.Future<$12.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $12.UpdateSessionSongRequest request);
  $async.Future<$12.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $12.DeleteSessionSongRequest request);
  $async.Future<$12.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $12.AddSongEntryRequest request);
  $async.Future<$12.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $12.DeleteSongEntryRequest request);
  $async.Future<$12.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $12.AddSessionSongResourceRequest request);
  $async.Future<$12.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $12.ListSessionSongResourcesRequest request);
  $async.Future<$12.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $12.DeleteSessionSongResourceRequest request);
  $async.Future<$12.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $12.ListSessionOrganizersRequest request);
  $async.Future<$12.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $12.AddSessionOrganizerRequest request);
  $async.Future<$12.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $12.DeleteSessionOrganizerRequest request);
  $async.Future<$12.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $12.CreateSessionThreadRequest request);
  $async.Future<$12.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $12.ListSessionThreadsRequest request);
  $async.Future<$12.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $12.CreateSongThreadRequest request);
  $async.Future<$12.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $12.GetSessionThreadRequest request);
  $async.Future<$12.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $12.DeleteSessionThreadRequest request);
  $async.Future<$12.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $12.CreateSessionNotificationRequest request);
  $async.Future<$12.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $12.GetSessionTimetableRequest request);
  $async.Future<$12.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $12.UpdateSessionTimetableRequest request);
  $async.Future<$12.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $12.GetOptimizedTimetableRequest request);
  $async.Future<$12.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $12.GetTimetableProgressRequest request);
  $async.Future<$12.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $12.UpdateTimetableProgressRequest request);
  $async.Future<$12.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $12.AddSessionResourceRequest request);
  $async.Future<$12.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $12.ListSessionResourcesRequest request);
  $async.Future<$12.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $12.DeleteSessionResourceRequest request);
  $async.Future<$12.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $12.AddSessionFeedbackRequest request);
  $async.Future<$12.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $12.ListSessionFeedbacksRequest request);
  $async.Future<$12.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $12.ListRelatedSessionsRequest request);
  $async.Future<$12.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $12.AddRelatedSessionRequest request);
  $async.Future<$12.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $12.CreateSessionPartyRequest request);
  $async.Future<$12.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $12.GetSessionPartyRequest request);
  $async.Future<$12.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $12.AddPartyParticipantRequest request);
  $async.Future<$12.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $12.ListPartyParticipantsRequest request);
  $async.Future<$12.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $12.UpdatePartyParticipantRequest request);
  $async.Future<$12.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $12.DeletePartyParticipantRequest request);
}
