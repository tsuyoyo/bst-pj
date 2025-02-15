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

import 'session_service.pb.dart' as $13;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$13.CreateSessionRequest, $13.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($13.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$13.GetSessionRequest, $13.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($13.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$13.UpdateSessionRequest, $13.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($13.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$13.UpdateSessionStatusRequest, $13.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($13.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$13.CancelSessionRequest, $13.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($13.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$13.DuplicateSessionRequest, $13.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($13.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$13.AddSessionPartRequest, $13.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($13.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$13.UpdateSessionPartRequest, $13.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($13.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$13.DeleteSessionPartRequest, $13.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($13.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$13.UpdateSessionScheduleRequest, $13.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($13.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$13.UpdateSessionLocationRequest, $13.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($13.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$13.ListSessionParticipantsRequest, $13.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($13.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$13.AddSessionParticipantRequest, $13.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($13.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$13.UpdateSessionParticipantRequest, $13.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($13.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$13.ListSessionSongsRequest, $13.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($13.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$13.GetSessionSongRequest, $13.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($13.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$13.UpdateSessionSongRequest, $13.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($13.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$13.DeleteSessionSongRequest, $13.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($13.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$13.AddSongEntryRequest, $13.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($13.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$13.DeleteSongEntryRequest, $13.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($13.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$13.AddSessionSongResourceRequest, $13.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($13.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$13.ListSessionSongResourcesRequest, $13.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($13.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$13.DeleteSessionSongResourceRequest, $13.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($13.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$13.ListSessionOrganizersRequest, $13.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($13.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$13.AddSessionOrganizerRequest, $13.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($13.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$13.DeleteSessionOrganizerRequest, $13.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($13.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$13.CreateSessionThreadRequest, $13.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($13.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$13.ListSessionThreadsRequest, $13.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($13.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$13.CreateSongThreadRequest, $13.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($13.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$13.GetSessionThreadRequest, $13.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($13.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$13.DeleteSessionThreadRequest, $13.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($13.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$13.CreateSessionNotificationRequest, $13.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($13.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$13.GetSessionTimetableRequest, $13.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($13.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$13.UpdateSessionTimetableRequest, $13.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($13.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$13.GetOptimizedTimetableRequest, $13.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($13.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$13.GetTimetableProgressRequest, $13.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($13.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$13.UpdateTimetableProgressRequest, $13.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($13.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$13.AddSessionResourceRequest, $13.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($13.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$13.ListSessionResourcesRequest, $13.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($13.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$13.DeleteSessionResourceRequest, $13.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($13.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$13.AddSessionFeedbackRequest, $13.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($13.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$13.ListSessionFeedbacksRequest, $13.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($13.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$13.ListRelatedSessionsRequest, $13.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($13.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$13.AddRelatedSessionRequest, $13.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($13.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$13.CreateSessionPartyRequest, $13.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($13.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$13.GetSessionPartyRequest, $13.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($13.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$13.AddPartyParticipantRequest, $13.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($13.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$13.ListPartyParticipantsRequest, $13.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($13.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$13.UpdatePartyParticipantRequest, $13.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($13.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$13.DeletePartyParticipantRequest, $13.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($13.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateSessionResponse> createSession($13.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetSessionResponse> getSession($13.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionResponse> updateSession($13.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionStatusResponse> updateSessionStatus($13.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$13.CancelSessionResponse> cancelSession($13.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$13.DuplicateSessionResponse> duplicateSession($13.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSessionPartResponse> addSessionPart($13.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionPartResponse> updateSessionPart($13.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSessionPartResponse> deleteSessionPart($13.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionScheduleResponse> updateSessionSchedule($13.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionLocationResponse> updateSessionLocation($13.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSessionParticipantsResponse> listSessionParticipants($13.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSessionParticipantResponse> addSessionParticipant($13.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionParticipantResponse> updateSessionParticipant($13.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSessionSongsResponse> listSessionSongs($13.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetSessionSongResponse> getSessionSong($13.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionSongResponse> updateSessionSong($13.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSessionSongResponse> deleteSessionSong($13.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSongEntryResponse> addSongEntry($13.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSongEntryResponse> deleteSongEntry($13.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSessionSongResourceResponse> addSessionSongResource($13.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSessionSongResourcesResponse> listSessionSongResources($13.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSessionSongResourceResponse> deleteSessionSongResource($13.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSessionOrganizersResponse> listSessionOrganizers($13.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSessionOrganizerResponse> addSessionOrganizer($13.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSessionOrganizerResponse> deleteSessionOrganizer($13.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateSessionThreadResponse> createSessionThread($13.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSessionThreadsResponse> listSessionThreads($13.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateSongThreadResponse> createSongThread($13.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetSessionThreadResponse> getSessionThread($13.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSessionThreadResponse> deleteSessionThread($13.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateSessionNotificationResponse> createSessionNotification($13.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetSessionTimetableResponse> getSessionTimetable($13.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSessionTimetableResponse> updateSessionTimetable($13.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetOptimizedTimetableResponse> getOptimizedTimetable($13.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetTimetableProgressResponse> getTimetableProgress($13.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateTimetableProgressResponse> updateTimetableProgress($13.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSessionResourceResponse> addSessionResource($13.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSessionResourcesResponse> listSessionResources($13.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSessionResourceResponse> deleteSessionResource($13.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddSessionFeedbackResponse> addSessionFeedback($13.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListSessionFeedbacksResponse> listSessionFeedbacks($13.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListRelatedSessionsResponse> listRelatedSessions($13.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddRelatedSessionResponse> addRelatedSession($13.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateSessionPartyResponse> createSessionParty($13.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetSessionPartyResponse> getSessionParty($13.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$13.AddPartyParticipantResponse> addPartyParticipant($13.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListPartyParticipantsResponse> listPartyParticipants($13.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdatePartyParticipantResponse> updatePartyParticipant($13.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeletePartyParticipantResponse> deletePartyParticipant($13.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateSessionRequest, $13.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateSessionRequest.fromBuffer(value),
        ($13.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetSessionRequest, $13.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetSessionRequest.fromBuffer(value),
        ($13.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionRequest, $13.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionRequest.fromBuffer(value),
        ($13.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionStatusRequest, $13.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionStatusRequest.fromBuffer(value),
        ($13.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CancelSessionRequest, $13.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CancelSessionRequest.fromBuffer(value),
        ($13.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DuplicateSessionRequest, $13.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DuplicateSessionRequest.fromBuffer(value),
        ($13.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSessionPartRequest, $13.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSessionPartRequest.fromBuffer(value),
        ($13.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionPartRequest, $13.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionPartRequest.fromBuffer(value),
        ($13.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSessionPartRequest, $13.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSessionPartRequest.fromBuffer(value),
        ($13.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionScheduleRequest, $13.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionScheduleRequest.fromBuffer(value),
        ($13.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionLocationRequest, $13.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionLocationRequest.fromBuffer(value),
        ($13.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSessionParticipantsRequest, $13.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSessionParticipantsRequest.fromBuffer(value),
        ($13.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSessionParticipantRequest, $13.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSessionParticipantRequest.fromBuffer(value),
        ($13.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionParticipantRequest, $13.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionParticipantRequest.fromBuffer(value),
        ($13.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSessionSongsRequest, $13.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSessionSongsRequest.fromBuffer(value),
        ($13.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetSessionSongRequest, $13.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetSessionSongRequest.fromBuffer(value),
        ($13.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionSongRequest, $13.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionSongRequest.fromBuffer(value),
        ($13.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSessionSongRequest, $13.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSessionSongRequest.fromBuffer(value),
        ($13.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSongEntryRequest, $13.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSongEntryRequest.fromBuffer(value),
        ($13.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSongEntryRequest, $13.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSongEntryRequest.fromBuffer(value),
        ($13.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSessionSongResourceRequest, $13.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSessionSongResourceRequest.fromBuffer(value),
        ($13.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSessionSongResourcesRequest, $13.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSessionSongResourcesRequest.fromBuffer(value),
        ($13.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSessionSongResourceRequest, $13.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($13.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSessionOrganizersRequest, $13.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSessionOrganizersRequest.fromBuffer(value),
        ($13.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSessionOrganizerRequest, $13.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSessionOrganizerRequest.fromBuffer(value),
        ($13.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSessionOrganizerRequest, $13.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($13.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateSessionThreadRequest, $13.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateSessionThreadRequest.fromBuffer(value),
        ($13.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSessionThreadsRequest, $13.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSessionThreadsRequest.fromBuffer(value),
        ($13.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateSongThreadRequest, $13.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateSongThreadRequest.fromBuffer(value),
        ($13.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetSessionThreadRequest, $13.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetSessionThreadRequest.fromBuffer(value),
        ($13.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSessionThreadRequest, $13.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSessionThreadRequest.fromBuffer(value),
        ($13.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateSessionNotificationRequest, $13.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateSessionNotificationRequest.fromBuffer(value),
        ($13.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetSessionTimetableRequest, $13.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetSessionTimetableRequest.fromBuffer(value),
        ($13.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSessionTimetableRequest, $13.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSessionTimetableRequest.fromBuffer(value),
        ($13.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetOptimizedTimetableRequest, $13.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetOptimizedTimetableRequest.fromBuffer(value),
        ($13.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetTimetableProgressRequest, $13.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetTimetableProgressRequest.fromBuffer(value),
        ($13.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateTimetableProgressRequest, $13.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateTimetableProgressRequest.fromBuffer(value),
        ($13.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSessionResourceRequest, $13.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSessionResourceRequest.fromBuffer(value),
        ($13.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSessionResourcesRequest, $13.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSessionResourcesRequest.fromBuffer(value),
        ($13.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSessionResourceRequest, $13.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSessionResourceRequest.fromBuffer(value),
        ($13.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddSessionFeedbackRequest, $13.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddSessionFeedbackRequest.fromBuffer(value),
        ($13.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListSessionFeedbacksRequest, $13.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListSessionFeedbacksRequest.fromBuffer(value),
        ($13.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListRelatedSessionsRequest, $13.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListRelatedSessionsRequest.fromBuffer(value),
        ($13.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddRelatedSessionRequest, $13.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddRelatedSessionRequest.fromBuffer(value),
        ($13.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateSessionPartyRequest, $13.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateSessionPartyRequest.fromBuffer(value),
        ($13.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetSessionPartyRequest, $13.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetSessionPartyRequest.fromBuffer(value),
        ($13.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AddPartyParticipantRequest, $13.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AddPartyParticipantRequest.fromBuffer(value),
        ($13.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListPartyParticipantsRequest, $13.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListPartyParticipantsRequest.fromBuffer(value),
        ($13.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdatePartyParticipantRequest, $13.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdatePartyParticipantRequest.fromBuffer(value),
        ($13.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeletePartyParticipantRequest, $13.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeletePartyParticipantRequest.fromBuffer(value),
        ($13.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$13.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$13.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$13.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$13.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$13.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$13.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$13.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$13.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$13.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$13.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$13.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$13.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$13.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$13.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$13.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$13.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$13.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$13.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$13.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$13.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$13.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$13.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$13.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$13.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$13.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$13.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$13.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$13.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$13.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$13.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$13.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$13.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$13.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$13.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$13.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$13.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$13.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$13.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$13.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$13.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$13.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$13.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$13.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$13.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$13.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$13.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$13.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$13.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$13.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$13.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$13.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$13.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$13.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$13.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$13.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$13.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$13.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$13.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$13.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$13.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$13.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$13.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$13.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$13.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$13.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$13.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$13.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$13.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$13.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$13.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$13.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$13.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$13.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$13.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$13.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$13.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$13.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$13.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$13.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$13.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$13.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$13.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$13.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$13.CreateSessionResponse> createSession($grpc.ServiceCall call, $13.CreateSessionRequest request);
  $async.Future<$13.GetSessionResponse> getSession($grpc.ServiceCall call, $13.GetSessionRequest request);
  $async.Future<$13.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $13.UpdateSessionRequest request);
  $async.Future<$13.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $13.UpdateSessionStatusRequest request);
  $async.Future<$13.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $13.CancelSessionRequest request);
  $async.Future<$13.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $13.DuplicateSessionRequest request);
  $async.Future<$13.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $13.AddSessionPartRequest request);
  $async.Future<$13.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $13.UpdateSessionPartRequest request);
  $async.Future<$13.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $13.DeleteSessionPartRequest request);
  $async.Future<$13.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $13.UpdateSessionScheduleRequest request);
  $async.Future<$13.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $13.UpdateSessionLocationRequest request);
  $async.Future<$13.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $13.ListSessionParticipantsRequest request);
  $async.Future<$13.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $13.AddSessionParticipantRequest request);
  $async.Future<$13.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $13.UpdateSessionParticipantRequest request);
  $async.Future<$13.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $13.ListSessionSongsRequest request);
  $async.Future<$13.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $13.GetSessionSongRequest request);
  $async.Future<$13.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $13.UpdateSessionSongRequest request);
  $async.Future<$13.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $13.DeleteSessionSongRequest request);
  $async.Future<$13.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $13.AddSongEntryRequest request);
  $async.Future<$13.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $13.DeleteSongEntryRequest request);
  $async.Future<$13.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $13.AddSessionSongResourceRequest request);
  $async.Future<$13.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $13.ListSessionSongResourcesRequest request);
  $async.Future<$13.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $13.DeleteSessionSongResourceRequest request);
  $async.Future<$13.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $13.ListSessionOrganizersRequest request);
  $async.Future<$13.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $13.AddSessionOrganizerRequest request);
  $async.Future<$13.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $13.DeleteSessionOrganizerRequest request);
  $async.Future<$13.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $13.CreateSessionThreadRequest request);
  $async.Future<$13.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $13.ListSessionThreadsRequest request);
  $async.Future<$13.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $13.CreateSongThreadRequest request);
  $async.Future<$13.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $13.GetSessionThreadRequest request);
  $async.Future<$13.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $13.DeleteSessionThreadRequest request);
  $async.Future<$13.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $13.CreateSessionNotificationRequest request);
  $async.Future<$13.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $13.GetSessionTimetableRequest request);
  $async.Future<$13.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $13.UpdateSessionTimetableRequest request);
  $async.Future<$13.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $13.GetOptimizedTimetableRequest request);
  $async.Future<$13.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $13.GetTimetableProgressRequest request);
  $async.Future<$13.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $13.UpdateTimetableProgressRequest request);
  $async.Future<$13.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $13.AddSessionResourceRequest request);
  $async.Future<$13.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $13.ListSessionResourcesRequest request);
  $async.Future<$13.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $13.DeleteSessionResourceRequest request);
  $async.Future<$13.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $13.AddSessionFeedbackRequest request);
  $async.Future<$13.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $13.ListSessionFeedbacksRequest request);
  $async.Future<$13.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $13.ListRelatedSessionsRequest request);
  $async.Future<$13.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $13.AddRelatedSessionRequest request);
  $async.Future<$13.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $13.CreateSessionPartyRequest request);
  $async.Future<$13.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $13.GetSessionPartyRequest request);
  $async.Future<$13.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $13.AddPartyParticipantRequest request);
  $async.Future<$13.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $13.ListPartyParticipantsRequest request);
  $async.Future<$13.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $13.UpdatePartyParticipantRequest request);
  $async.Future<$13.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $13.DeletePartyParticipantRequest request);
}
