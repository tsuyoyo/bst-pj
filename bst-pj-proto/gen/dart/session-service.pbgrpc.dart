//
//  Generated code. Do not modify.
//  source: session-service.proto
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

import 'session-service.pb.dart' as $2;

export 'session-service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$2.CreateSessionRequest, $2.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($2.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$2.GetSessionRequest, $2.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($2.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$2.UpdateSessionRequest, $2.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($2.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$2.UpdateSessionStatusRequest, $2.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($2.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$2.CancelSessionRequest, $2.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($2.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$2.DuplicateSessionRequest, $2.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($2.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$2.AddSessionPartRequest, $2.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($2.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$2.UpdateSessionPartRequest, $2.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($2.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$2.DeleteSessionPartRequest, $2.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($2.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$2.UpdateSessionScheduleRequest, $2.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($2.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$2.UpdateSessionLocationRequest, $2.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($2.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$2.ListSessionParticipantsRequest, $2.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($2.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$2.AddSessionParticipantRequest, $2.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($2.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$2.UpdateSessionParticipantRequest, $2.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($2.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$2.ListSessionSongsRequest, $2.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($2.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$2.GetSessionSongRequest, $2.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($2.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$2.UpdateSessionSongRequest, $2.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($2.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$2.DeleteSessionSongRequest, $2.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($2.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$2.AddSongEntryRequest, $2.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($2.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$2.DeleteSongEntryRequest, $2.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($2.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$2.AddSessionSongResourceRequest, $2.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($2.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$2.ListSessionSongResourcesRequest, $2.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($2.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$2.DeleteSessionSongResourceRequest, $2.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($2.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$2.ListSessionOrganizersRequest, $2.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($2.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$2.AddSessionOrganizerRequest, $2.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($2.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$2.DeleteSessionOrganizerRequest, $2.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($2.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$2.CreateSessionThreadRequest, $2.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($2.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$2.ListSessionThreadsRequest, $2.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($2.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$2.CreateSongThreadRequest, $2.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($2.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$2.GetSessionThreadRequest, $2.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($2.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$2.DeleteSessionThreadRequest, $2.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($2.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$2.CreateSessionNotificationRequest, $2.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($2.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$2.GetSessionTimetableRequest, $2.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($2.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$2.UpdateSessionTimetableRequest, $2.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($2.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$2.GetOptimizedTimetableRequest, $2.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($2.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$2.GetTimetableProgressRequest, $2.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($2.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$2.UpdateTimetableProgressRequest, $2.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($2.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$2.AddSessionResourceRequest, $2.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($2.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$2.ListSessionResourcesRequest, $2.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($2.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$2.DeleteSessionResourceRequest, $2.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($2.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$2.AddSessionFeedbackRequest, $2.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($2.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$2.ListSessionFeedbacksRequest, $2.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($2.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$2.ListRelatedSessionsRequest, $2.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($2.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$2.AddRelatedSessionRequest, $2.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($2.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$2.CreateSessionPartyRequest, $2.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($2.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$2.GetSessionPartyRequest, $2.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($2.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$2.AddPartyParticipantRequest, $2.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($2.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$2.ListPartyParticipantsRequest, $2.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($2.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$2.UpdatePartyParticipantRequest, $2.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($2.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$2.DeletePartyParticipantRequest, $2.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($2.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateSessionResponse> createSession($2.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetSessionResponse> getSession($2.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionResponse> updateSession($2.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionStatusResponse> updateSessionStatus($2.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$2.CancelSessionResponse> cancelSession($2.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.DuplicateSessionResponse> duplicateSession($2.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSessionPartResponse> addSessionPart($2.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionPartResponse> updateSessionPart($2.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteSessionPartResponse> deleteSessionPart($2.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionScheduleResponse> updateSessionSchedule($2.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionLocationResponse> updateSessionLocation($2.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionParticipantsResponse> listSessionParticipants($2.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSessionParticipantResponse> addSessionParticipant($2.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionParticipantResponse> updateSessionParticipant($2.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionSongsResponse> listSessionSongs($2.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetSessionSongResponse> getSessionSong($2.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionSongResponse> updateSessionSong($2.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteSessionSongResponse> deleteSessionSong($2.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSongEntryResponse> addSongEntry($2.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteSongEntryResponse> deleteSongEntry($2.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSessionSongResourceResponse> addSessionSongResource($2.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionSongResourcesResponse> listSessionSongResources($2.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteSessionSongResourceResponse> deleteSessionSongResource($2.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionOrganizersResponse> listSessionOrganizers($2.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSessionOrganizerResponse> addSessionOrganizer($2.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteSessionOrganizerResponse> deleteSessionOrganizer($2.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateSessionThreadResponse> createSessionThread($2.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionThreadsResponse> listSessionThreads($2.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateSongThreadResponse> createSongThread($2.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetSessionThreadResponse> getSessionThread($2.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteSessionThreadResponse> deleteSessionThread($2.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateSessionNotificationResponse> createSessionNotification($2.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetSessionTimetableResponse> getSessionTimetable($2.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSessionTimetableResponse> updateSessionTimetable($2.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetOptimizedTimetableResponse> getOptimizedTimetable($2.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetTimetableProgressResponse> getTimetableProgress($2.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateTimetableProgressResponse> updateTimetableProgress($2.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSessionResourceResponse> addSessionResource($2.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionResourcesResponse> listSessionResources($2.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteSessionResourceResponse> deleteSessionResource($2.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSessionFeedbackResponse> addSessionFeedback($2.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionFeedbacksResponse> listSessionFeedbacks($2.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListRelatedSessionsResponse> listRelatedSessions($2.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddRelatedSessionResponse> addRelatedSession($2.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateSessionPartyResponse> createSessionParty($2.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetSessionPartyResponse> getSessionParty($2.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddPartyParticipantResponse> addPartyParticipant($2.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListPartyParticipantsResponse> listPartyParticipants($2.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdatePartyParticipantResponse> updatePartyParticipant($2.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeletePartyParticipantResponse> deletePartyParticipant($2.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateSessionRequest, $2.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateSessionRequest.fromBuffer(value),
        ($2.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetSessionRequest, $2.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetSessionRequest.fromBuffer(value),
        ($2.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionRequest, $2.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionRequest.fromBuffer(value),
        ($2.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionStatusRequest, $2.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionStatusRequest.fromBuffer(value),
        ($2.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CancelSessionRequest, $2.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CancelSessionRequest.fromBuffer(value),
        ($2.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DuplicateSessionRequest, $2.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DuplicateSessionRequest.fromBuffer(value),
        ($2.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSessionPartRequest, $2.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSessionPartRequest.fromBuffer(value),
        ($2.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionPartRequest, $2.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionPartRequest.fromBuffer(value),
        ($2.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteSessionPartRequest, $2.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteSessionPartRequest.fromBuffer(value),
        ($2.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionScheduleRequest, $2.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionScheduleRequest.fromBuffer(value),
        ($2.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionLocationRequest, $2.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionLocationRequest.fromBuffer(value),
        ($2.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSessionParticipantsRequest, $2.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSessionParticipantsRequest.fromBuffer(value),
        ($2.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSessionParticipantRequest, $2.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSessionParticipantRequest.fromBuffer(value),
        ($2.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionParticipantRequest, $2.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionParticipantRequest.fromBuffer(value),
        ($2.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSessionSongsRequest, $2.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSessionSongsRequest.fromBuffer(value),
        ($2.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetSessionSongRequest, $2.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetSessionSongRequest.fromBuffer(value),
        ($2.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionSongRequest, $2.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionSongRequest.fromBuffer(value),
        ($2.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteSessionSongRequest, $2.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteSessionSongRequest.fromBuffer(value),
        ($2.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSongEntryRequest, $2.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSongEntryRequest.fromBuffer(value),
        ($2.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteSongEntryRequest, $2.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteSongEntryRequest.fromBuffer(value),
        ($2.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSessionSongResourceRequest, $2.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSessionSongResourceRequest.fromBuffer(value),
        ($2.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSessionSongResourcesRequest, $2.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSessionSongResourcesRequest.fromBuffer(value),
        ($2.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteSessionSongResourceRequest, $2.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($2.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSessionOrganizersRequest, $2.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSessionOrganizersRequest.fromBuffer(value),
        ($2.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSessionOrganizerRequest, $2.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSessionOrganizerRequest.fromBuffer(value),
        ($2.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteSessionOrganizerRequest, $2.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($2.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateSessionThreadRequest, $2.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateSessionThreadRequest.fromBuffer(value),
        ($2.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSessionThreadsRequest, $2.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSessionThreadsRequest.fromBuffer(value),
        ($2.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateSongThreadRequest, $2.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateSongThreadRequest.fromBuffer(value),
        ($2.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetSessionThreadRequest, $2.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetSessionThreadRequest.fromBuffer(value),
        ($2.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteSessionThreadRequest, $2.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteSessionThreadRequest.fromBuffer(value),
        ($2.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateSessionNotificationRequest, $2.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateSessionNotificationRequest.fromBuffer(value),
        ($2.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetSessionTimetableRequest, $2.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetSessionTimetableRequest.fromBuffer(value),
        ($2.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateSessionTimetableRequest, $2.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateSessionTimetableRequest.fromBuffer(value),
        ($2.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetOptimizedTimetableRequest, $2.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetOptimizedTimetableRequest.fromBuffer(value),
        ($2.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetTimetableProgressRequest, $2.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetTimetableProgressRequest.fromBuffer(value),
        ($2.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateTimetableProgressRequest, $2.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateTimetableProgressRequest.fromBuffer(value),
        ($2.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSessionResourceRequest, $2.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSessionResourceRequest.fromBuffer(value),
        ($2.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSessionResourcesRequest, $2.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSessionResourcesRequest.fromBuffer(value),
        ($2.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteSessionResourceRequest, $2.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteSessionResourceRequest.fromBuffer(value),
        ($2.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSessionFeedbackRequest, $2.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSessionFeedbackRequest.fromBuffer(value),
        ($2.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSessionFeedbacksRequest, $2.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSessionFeedbacksRequest.fromBuffer(value),
        ($2.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListRelatedSessionsRequest, $2.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListRelatedSessionsRequest.fromBuffer(value),
        ($2.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddRelatedSessionRequest, $2.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddRelatedSessionRequest.fromBuffer(value),
        ($2.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateSessionPartyRequest, $2.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateSessionPartyRequest.fromBuffer(value),
        ($2.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetSessionPartyRequest, $2.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetSessionPartyRequest.fromBuffer(value),
        ($2.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddPartyParticipantRequest, $2.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddPartyParticipantRequest.fromBuffer(value),
        ($2.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListPartyParticipantsRequest, $2.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListPartyParticipantsRequest.fromBuffer(value),
        ($2.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePartyParticipantRequest, $2.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdatePartyParticipantRequest.fromBuffer(value),
        ($2.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeletePartyParticipantRequest, $2.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeletePartyParticipantRequest.fromBuffer(value),
        ($2.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$2.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$2.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$2.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$2.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$2.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$2.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$2.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$2.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$2.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$2.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$2.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$2.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$2.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$2.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$2.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$2.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$2.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$2.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$2.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$2.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$2.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$2.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$2.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$2.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$2.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$2.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$2.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$2.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$2.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$2.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$2.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$2.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$2.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$2.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$2.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$2.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$2.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$2.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$2.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$2.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$2.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$2.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$2.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$2.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$2.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$2.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$2.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$2.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$2.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$2.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$2.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$2.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$2.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$2.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$2.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$2.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$2.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$2.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$2.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$2.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$2.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$2.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$2.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$2.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$2.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$2.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$2.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$2.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$2.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$2.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$2.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$2.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$2.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$2.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$2.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$2.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$2.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$2.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$2.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$2.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$2.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$2.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$2.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$2.CreateSessionResponse> createSession($grpc.ServiceCall call, $2.CreateSessionRequest request);
  $async.Future<$2.GetSessionResponse> getSession($grpc.ServiceCall call, $2.GetSessionRequest request);
  $async.Future<$2.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $2.UpdateSessionRequest request);
  $async.Future<$2.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $2.UpdateSessionStatusRequest request);
  $async.Future<$2.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $2.CancelSessionRequest request);
  $async.Future<$2.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $2.DuplicateSessionRequest request);
  $async.Future<$2.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $2.AddSessionPartRequest request);
  $async.Future<$2.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $2.UpdateSessionPartRequest request);
  $async.Future<$2.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $2.DeleteSessionPartRequest request);
  $async.Future<$2.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $2.UpdateSessionScheduleRequest request);
  $async.Future<$2.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $2.UpdateSessionLocationRequest request);
  $async.Future<$2.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $2.ListSessionParticipantsRequest request);
  $async.Future<$2.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $2.AddSessionParticipantRequest request);
  $async.Future<$2.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $2.UpdateSessionParticipantRequest request);
  $async.Future<$2.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $2.ListSessionSongsRequest request);
  $async.Future<$2.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $2.GetSessionSongRequest request);
  $async.Future<$2.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $2.UpdateSessionSongRequest request);
  $async.Future<$2.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $2.DeleteSessionSongRequest request);
  $async.Future<$2.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $2.AddSongEntryRequest request);
  $async.Future<$2.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $2.DeleteSongEntryRequest request);
  $async.Future<$2.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $2.AddSessionSongResourceRequest request);
  $async.Future<$2.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $2.ListSessionSongResourcesRequest request);
  $async.Future<$2.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $2.DeleteSessionSongResourceRequest request);
  $async.Future<$2.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $2.ListSessionOrganizersRequest request);
  $async.Future<$2.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $2.AddSessionOrganizerRequest request);
  $async.Future<$2.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $2.DeleteSessionOrganizerRequest request);
  $async.Future<$2.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $2.CreateSessionThreadRequest request);
  $async.Future<$2.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $2.ListSessionThreadsRequest request);
  $async.Future<$2.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $2.CreateSongThreadRequest request);
  $async.Future<$2.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $2.GetSessionThreadRequest request);
  $async.Future<$2.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $2.DeleteSessionThreadRequest request);
  $async.Future<$2.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $2.CreateSessionNotificationRequest request);
  $async.Future<$2.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $2.GetSessionTimetableRequest request);
  $async.Future<$2.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $2.UpdateSessionTimetableRequest request);
  $async.Future<$2.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $2.GetOptimizedTimetableRequest request);
  $async.Future<$2.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $2.GetTimetableProgressRequest request);
  $async.Future<$2.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $2.UpdateTimetableProgressRequest request);
  $async.Future<$2.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $2.AddSessionResourceRequest request);
  $async.Future<$2.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $2.ListSessionResourcesRequest request);
  $async.Future<$2.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $2.DeleteSessionResourceRequest request);
  $async.Future<$2.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $2.AddSessionFeedbackRequest request);
  $async.Future<$2.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $2.ListSessionFeedbacksRequest request);
  $async.Future<$2.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $2.ListRelatedSessionsRequest request);
  $async.Future<$2.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $2.AddRelatedSessionRequest request);
  $async.Future<$2.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $2.CreateSessionPartyRequest request);
  $async.Future<$2.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $2.GetSessionPartyRequest request);
  $async.Future<$2.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $2.AddPartyParticipantRequest request);
  $async.Future<$2.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $2.ListPartyParticipantsRequest request);
  $async.Future<$2.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $2.UpdatePartyParticipantRequest request);
  $async.Future<$2.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $2.DeletePartyParticipantRequest request);
}
