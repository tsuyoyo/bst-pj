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

import 'session_service.pb.dart' as $9;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$9.CreateSessionRequest, $9.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($9.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$9.GetSessionRequest, $9.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($9.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$9.UpdateSessionRequest, $9.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($9.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$9.UpdateSessionStatusRequest, $9.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($9.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$9.CancelSessionRequest, $9.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($9.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$9.DuplicateSessionRequest, $9.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($9.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DuplicateSessionResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$9.AddSessionPartRequest, $9.AddSessionPartResponse>(
      '/bst.v1.SessionService/AddSessionPart',
      ($9.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$9.UpdateSessionPartRequest, $9.UpdateSessionPartResponse>(
      '/bst.v1.SessionService/UpdateSessionPart',
      ($9.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$9.DeleteSessionPartRequest, $9.DeleteSessionPartResponse>(
      '/bst.v1.SessionService/DeleteSessionPart',
      ($9.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSessionPartResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$9.UpdateSessionScheduleRequest, $9.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($9.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$9.UpdateSessionLocationRequest, $9.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($9.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$listSessionParticipants = $grpc.ClientMethod<$9.ListSessionParticipantsRequest, $9.ListSessionParticipantsResponse>(
      '/bst.v1.SessionService/ListSessionParticipants',
      ($9.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$9.AddSessionParticipantRequest, $9.AddSessionParticipantResponse>(
      '/bst.v1.SessionService/AddSessionParticipant',
      ($9.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$9.UpdateSessionParticipantRequest, $9.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionService/UpdateSessionParticipant',
      ($9.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$listSessionSongs = $grpc.ClientMethod<$9.ListSessionSongsRequest, $9.ListSessionSongsResponse>(
      '/bst.v1.SessionService/ListSessionSongs',
      ($9.ListSessionSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListSessionSongsResponse.fromBuffer(value));
  static final _$getSessionSong = $grpc.ClientMethod<$9.GetSessionSongRequest, $9.GetSessionSongResponse>(
      '/bst.v1.SessionService/GetSessionSong',
      ($9.GetSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetSessionSongResponse.fromBuffer(value));
  static final _$updateSessionSong = $grpc.ClientMethod<$9.UpdateSessionSongRequest, $9.UpdateSessionSongResponse>(
      '/bst.v1.SessionService/UpdateSessionSong',
      ($9.UpdateSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionSongResponse.fromBuffer(value));
  static final _$deleteSessionSong = $grpc.ClientMethod<$9.DeleteSessionSongRequest, $9.DeleteSessionSongResponse>(
      '/bst.v1.SessionService/DeleteSessionSong',
      ($9.DeleteSessionSongRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSessionSongResponse.fromBuffer(value));
  static final _$addSongEntry = $grpc.ClientMethod<$9.AddSongEntryRequest, $9.AddSongEntryResponse>(
      '/bst.v1.SessionService/AddSongEntry',
      ($9.AddSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSongEntryResponse.fromBuffer(value));
  static final _$deleteSongEntry = $grpc.ClientMethod<$9.DeleteSongEntryRequest, $9.DeleteSongEntryResponse>(
      '/bst.v1.SessionService/DeleteSongEntry',
      ($9.DeleteSongEntryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSongEntryResponse.fromBuffer(value));
  static final _$addSessionSongResource = $grpc.ClientMethod<$9.AddSessionSongResourceRequest, $9.AddSessionSongResourceResponse>(
      '/bst.v1.SessionService/AddSessionSongResource',
      ($9.AddSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionSongResources = $grpc.ClientMethod<$9.ListSessionSongResourcesRequest, $9.ListSessionSongResourcesResponse>(
      '/bst.v1.SessionService/ListSessionSongResources',
      ($9.ListSessionSongResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListSessionSongResourcesResponse.fromBuffer(value));
  static final _$deleteSessionSongResource = $grpc.ClientMethod<$9.DeleteSessionSongResourceRequest, $9.DeleteSessionSongResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionSongResource',
      ($9.DeleteSessionSongResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSessionSongResourceResponse.fromBuffer(value));
  static final _$listSessionOrganizers = $grpc.ClientMethod<$9.ListSessionOrganizersRequest, $9.ListSessionOrganizersResponse>(
      '/bst.v1.SessionService/ListSessionOrganizers',
      ($9.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$9.AddSessionOrganizerRequest, $9.AddSessionOrganizerResponse>(
      '/bst.v1.SessionService/AddSessionOrganizer',
      ($9.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$9.DeleteSessionOrganizerRequest, $9.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionService/DeleteSessionOrganizer',
      ($9.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSessionOrganizerResponse.fromBuffer(value));
  static final _$createSessionThread = $grpc.ClientMethod<$9.CreateSessionThreadRequest, $9.CreateSessionThreadResponse>(
      '/bst.v1.SessionService/CreateSessionThread',
      ($9.CreateSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateSessionThreadResponse.fromBuffer(value));
  static final _$listSessionThreads = $grpc.ClientMethod<$9.ListSessionThreadsRequest, $9.ListSessionThreadsResponse>(
      '/bst.v1.SessionService/ListSessionThreads',
      ($9.ListSessionThreadsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListSessionThreadsResponse.fromBuffer(value));
  static final _$createSongThread = $grpc.ClientMethod<$9.CreateSongThreadRequest, $9.CreateSongThreadResponse>(
      '/bst.v1.SessionService/CreateSongThread',
      ($9.CreateSongThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateSongThreadResponse.fromBuffer(value));
  static final _$getSessionThread = $grpc.ClientMethod<$9.GetSessionThreadRequest, $9.GetSessionThreadResponse>(
      '/bst.v1.SessionService/GetSessionThread',
      ($9.GetSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetSessionThreadResponse.fromBuffer(value));
  static final _$deleteSessionThread = $grpc.ClientMethod<$9.DeleteSessionThreadRequest, $9.DeleteSessionThreadResponse>(
      '/bst.v1.SessionService/DeleteSessionThread',
      ($9.DeleteSessionThreadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSessionThreadResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$9.CreateSessionNotificationRequest, $9.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($9.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$getSessionTimetable = $grpc.ClientMethod<$9.GetSessionTimetableRequest, $9.GetSessionTimetableResponse>(
      '/bst.v1.SessionService/GetSessionTimetable',
      ($9.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$9.UpdateSessionTimetableRequest, $9.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionService/UpdateSessionTimetable',
      ($9.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$9.GetOptimizedTimetableRequest, $9.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionService/GetOptimizedTimetable',
      ($9.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$9.GetTimetableProgressRequest, $9.GetTimetableProgressResponse>(
      '/bst.v1.SessionService/GetTimetableProgress',
      ($9.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$9.UpdateTimetableProgressRequest, $9.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionService/UpdateTimetableProgress',
      ($9.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateTimetableProgressResponse.fromBuffer(value));
  static final _$addSessionResource = $grpc.ClientMethod<$9.AddSessionResourceRequest, $9.AddSessionResourceResponse>(
      '/bst.v1.SessionService/AddSessionResource',
      ($9.AddSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSessionResourceResponse.fromBuffer(value));
  static final _$listSessionResources = $grpc.ClientMethod<$9.ListSessionResourcesRequest, $9.ListSessionResourcesResponse>(
      '/bst.v1.SessionService/ListSessionResources',
      ($9.ListSessionResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListSessionResourcesResponse.fromBuffer(value));
  static final _$deleteSessionResource = $grpc.ClientMethod<$9.DeleteSessionResourceRequest, $9.DeleteSessionResourceResponse>(
      '/bst.v1.SessionService/DeleteSessionResource',
      ($9.DeleteSessionResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSessionResourceResponse.fromBuffer(value));
  static final _$addSessionFeedback = $grpc.ClientMethod<$9.AddSessionFeedbackRequest, $9.AddSessionFeedbackResponse>(
      '/bst.v1.SessionService/AddSessionFeedback',
      ($9.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$9.ListSessionFeedbacksRequest, $9.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionService/ListSessionFeedbacks',
      ($9.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListSessionFeedbacksResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$9.ListRelatedSessionsRequest, $9.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($9.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$9.AddRelatedSessionRequest, $9.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($9.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddRelatedSessionResponse.fromBuffer(value));
  static final _$createSessionParty = $grpc.ClientMethod<$9.CreateSessionPartyRequest, $9.CreateSessionPartyResponse>(
      '/bst.v1.SessionService/CreateSessionParty',
      ($9.CreateSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateSessionPartyResponse.fromBuffer(value));
  static final _$getSessionParty = $grpc.ClientMethod<$9.GetSessionPartyRequest, $9.GetSessionPartyResponse>(
      '/bst.v1.SessionService/GetSessionParty',
      ($9.GetSessionPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetSessionPartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$9.AddPartyParticipantRequest, $9.AddPartyParticipantResponse>(
      '/bst.v1.SessionService/AddPartyParticipant',
      ($9.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddPartyParticipantResponse.fromBuffer(value));
  static final _$listPartyParticipants = $grpc.ClientMethod<$9.ListPartyParticipantsRequest, $9.ListPartyParticipantsResponse>(
      '/bst.v1.SessionService/ListPartyParticipants',
      ($9.ListPartyParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListPartyParticipantsResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$9.UpdatePartyParticipantRequest, $9.UpdatePartyParticipantResponse>(
      '/bst.v1.SessionService/UpdatePartyParticipant',
      ($9.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$deletePartyParticipant = $grpc.ClientMethod<$9.DeletePartyParticipantRequest, $9.DeletePartyParticipantResponse>(
      '/bst.v1.SessionService/DeletePartyParticipant',
      ($9.DeletePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeletePartyParticipantResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateSessionResponse> createSession($9.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetSessionResponse> getSession($9.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionResponse> updateSession($9.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionStatusResponse> updateSessionStatus($9.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$9.CancelSessionResponse> cancelSession($9.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$9.DuplicateSessionResponse> duplicateSession($9.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSessionPartResponse> addSessionPart($9.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionPartResponse> updateSessionPart($9.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSessionPartResponse> deleteSessionPart($9.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionScheduleResponse> updateSessionSchedule($9.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionLocationResponse> updateSessionLocation($9.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListSessionParticipantsResponse> listSessionParticipants($9.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSessionParticipantResponse> addSessionParticipant($9.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionParticipantResponse> updateSessionParticipant($9.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListSessionSongsResponse> listSessionSongs($9.ListSessionSongsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongs, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetSessionSongResponse> getSessionSong($9.GetSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionSongResponse> updateSessionSong($9.UpdateSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSessionSongResponse> deleteSessionSong($9.DeleteSessionSongRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSong, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSongEntryResponse> addSongEntry($9.AddSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSongEntryResponse> deleteSongEntry($9.DeleteSongEntryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSongEntry, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSessionSongResourceResponse> addSessionSongResource($9.AddSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListSessionSongResourcesResponse> listSessionSongResources($9.ListSessionSongResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionSongResources, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSessionSongResourceResponse> deleteSessionSongResource($9.DeleteSessionSongResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionSongResource, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListSessionOrganizersResponse> listSessionOrganizers($9.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSessionOrganizerResponse> addSessionOrganizer($9.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSessionOrganizerResponse> deleteSessionOrganizer($9.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateSessionThreadResponse> createSessionThread($9.CreateSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListSessionThreadsResponse> listSessionThreads($9.ListSessionThreadsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionThreads, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateSongThreadResponse> createSongThread($9.CreateSongThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSongThread, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetSessionThreadResponse> getSessionThread($9.GetSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSessionThreadResponse> deleteSessionThread($9.DeleteSessionThreadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionThread, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateSessionNotificationResponse> createSessionNotification($9.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetSessionTimetableResponse> getSessionTimetable($9.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSessionTimetableResponse> updateSessionTimetable($9.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetOptimizedTimetableResponse> getOptimizedTimetable($9.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetTimetableProgressResponse> getTimetableProgress($9.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateTimetableProgressResponse> updateTimetableProgress($9.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSessionResourceResponse> addSessionResource($9.AddSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListSessionResourcesResponse> listSessionResources($9.ListSessionResourcesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionResources, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSessionResourceResponse> deleteSessionResource($9.DeleteSessionResourceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionResource, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSessionFeedbackResponse> addSessionFeedback($9.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListSessionFeedbacksResponse> listSessionFeedbacks($9.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListRelatedSessionsResponse> listRelatedSessions($9.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddRelatedSessionResponse> addRelatedSession($9.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateSessionPartyResponse> createSessionParty($9.CreateSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetSessionPartyResponse> getSessionParty($9.GetSessionPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionParty, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddPartyParticipantResponse> addPartyParticipant($9.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListPartyParticipantsResponse> listPartyParticipants($9.ListPartyParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPartyParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdatePartyParticipantResponse> updatePartyParticipant($9.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeletePartyParticipantResponse> deletePartyParticipant($9.DeletePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateSessionRequest, $9.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateSessionRequest.fromBuffer(value),
        ($9.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetSessionRequest, $9.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetSessionRequest.fromBuffer(value),
        ($9.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionRequest, $9.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionRequest.fromBuffer(value),
        ($9.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionStatusRequest, $9.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionStatusRequest.fromBuffer(value),
        ($9.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CancelSessionRequest, $9.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CancelSessionRequest.fromBuffer(value),
        ($9.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DuplicateSessionRequest, $9.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DuplicateSessionRequest.fromBuffer(value),
        ($9.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSessionPartRequest, $9.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSessionPartRequest.fromBuffer(value),
        ($9.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionPartRequest, $9.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionPartRequest.fromBuffer(value),
        ($9.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSessionPartRequest, $9.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSessionPartRequest.fromBuffer(value),
        ($9.DeleteSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionScheduleRequest, $9.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionScheduleRequest.fromBuffer(value),
        ($9.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionLocationRequest, $9.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionLocationRequest.fromBuffer(value),
        ($9.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListSessionParticipantsRequest, $9.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListSessionParticipantsRequest.fromBuffer(value),
        ($9.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSessionParticipantRequest, $9.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSessionParticipantRequest.fromBuffer(value),
        ($9.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionParticipantRequest, $9.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionParticipantRequest.fromBuffer(value),
        ($9.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListSessionSongsRequest, $9.ListSessionSongsResponse>(
        'ListSessionSongs',
        listSessionSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListSessionSongsRequest.fromBuffer(value),
        ($9.ListSessionSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetSessionSongRequest, $9.GetSessionSongResponse>(
        'GetSessionSong',
        getSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetSessionSongRequest.fromBuffer(value),
        ($9.GetSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionSongRequest, $9.UpdateSessionSongResponse>(
        'UpdateSessionSong',
        updateSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionSongRequest.fromBuffer(value),
        ($9.UpdateSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSessionSongRequest, $9.DeleteSessionSongResponse>(
        'DeleteSessionSong',
        deleteSessionSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSessionSongRequest.fromBuffer(value),
        ($9.DeleteSessionSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSongEntryRequest, $9.AddSongEntryResponse>(
        'AddSongEntry',
        addSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSongEntryRequest.fromBuffer(value),
        ($9.AddSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSongEntryRequest, $9.DeleteSongEntryResponse>(
        'DeleteSongEntry',
        deleteSongEntry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSongEntryRequest.fromBuffer(value),
        ($9.DeleteSongEntryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSessionSongResourceRequest, $9.AddSessionSongResourceResponse>(
        'AddSessionSongResource',
        addSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSessionSongResourceRequest.fromBuffer(value),
        ($9.AddSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListSessionSongResourcesRequest, $9.ListSessionSongResourcesResponse>(
        'ListSessionSongResources',
        listSessionSongResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListSessionSongResourcesRequest.fromBuffer(value),
        ($9.ListSessionSongResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSessionSongResourceRequest, $9.DeleteSessionSongResourceResponse>(
        'DeleteSessionSongResource',
        deleteSessionSongResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSessionSongResourceRequest.fromBuffer(value),
        ($9.DeleteSessionSongResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListSessionOrganizersRequest, $9.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListSessionOrganizersRequest.fromBuffer(value),
        ($9.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSessionOrganizerRequest, $9.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSessionOrganizerRequest.fromBuffer(value),
        ($9.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSessionOrganizerRequest, $9.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($9.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateSessionThreadRequest, $9.CreateSessionThreadResponse>(
        'CreateSessionThread',
        createSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateSessionThreadRequest.fromBuffer(value),
        ($9.CreateSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListSessionThreadsRequest, $9.ListSessionThreadsResponse>(
        'ListSessionThreads',
        listSessionThreads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListSessionThreadsRequest.fromBuffer(value),
        ($9.ListSessionThreadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateSongThreadRequest, $9.CreateSongThreadResponse>(
        'CreateSongThread',
        createSongThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateSongThreadRequest.fromBuffer(value),
        ($9.CreateSongThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetSessionThreadRequest, $9.GetSessionThreadResponse>(
        'GetSessionThread',
        getSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetSessionThreadRequest.fromBuffer(value),
        ($9.GetSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSessionThreadRequest, $9.DeleteSessionThreadResponse>(
        'DeleteSessionThread',
        deleteSessionThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSessionThreadRequest.fromBuffer(value),
        ($9.DeleteSessionThreadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateSessionNotificationRequest, $9.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateSessionNotificationRequest.fromBuffer(value),
        ($9.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetSessionTimetableRequest, $9.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetSessionTimetableRequest.fromBuffer(value),
        ($9.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSessionTimetableRequest, $9.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSessionTimetableRequest.fromBuffer(value),
        ($9.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetOptimizedTimetableRequest, $9.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetOptimizedTimetableRequest.fromBuffer(value),
        ($9.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetTimetableProgressRequest, $9.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetTimetableProgressRequest.fromBuffer(value),
        ($9.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateTimetableProgressRequest, $9.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateTimetableProgressRequest.fromBuffer(value),
        ($9.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSessionResourceRequest, $9.AddSessionResourceResponse>(
        'AddSessionResource',
        addSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSessionResourceRequest.fromBuffer(value),
        ($9.AddSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListSessionResourcesRequest, $9.ListSessionResourcesResponse>(
        'ListSessionResources',
        listSessionResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListSessionResourcesRequest.fromBuffer(value),
        ($9.ListSessionResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSessionResourceRequest, $9.DeleteSessionResourceResponse>(
        'DeleteSessionResource',
        deleteSessionResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSessionResourceRequest.fromBuffer(value),
        ($9.DeleteSessionResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSessionFeedbackRequest, $9.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSessionFeedbackRequest.fromBuffer(value),
        ($9.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListSessionFeedbacksRequest, $9.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListSessionFeedbacksRequest.fromBuffer(value),
        ($9.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListRelatedSessionsRequest, $9.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListRelatedSessionsRequest.fromBuffer(value),
        ($9.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddRelatedSessionRequest, $9.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddRelatedSessionRequest.fromBuffer(value),
        ($9.AddRelatedSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateSessionPartyRequest, $9.CreateSessionPartyResponse>(
        'CreateSessionParty',
        createSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateSessionPartyRequest.fromBuffer(value),
        ($9.CreateSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetSessionPartyRequest, $9.GetSessionPartyResponse>(
        'GetSessionParty',
        getSessionParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetSessionPartyRequest.fromBuffer(value),
        ($9.GetSessionPartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddPartyParticipantRequest, $9.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddPartyParticipantRequest.fromBuffer(value),
        ($9.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListPartyParticipantsRequest, $9.ListPartyParticipantsResponse>(
        'ListPartyParticipants',
        listPartyParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListPartyParticipantsRequest.fromBuffer(value),
        ($9.ListPartyParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdatePartyParticipantRequest, $9.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdatePartyParticipantRequest.fromBuffer(value),
        ($9.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeletePartyParticipantRequest, $9.DeletePartyParticipantResponse>(
        'DeletePartyParticipant',
        deletePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeletePartyParticipantRequest.fromBuffer(value),
        ($9.DeletePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$9.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$9.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$9.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$9.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$9.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$9.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$9.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$9.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$9.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$9.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$9.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$9.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$9.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$9.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$9.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$9.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$9.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$9.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$9.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$9.ListSessionSongsResponse> listSessionSongs_Pre($grpc.ServiceCall call, $async.Future<$9.ListSessionSongsRequest> request) async {
    return listSessionSongs(call, await request);
  }

  $async.Future<$9.GetSessionSongResponse> getSessionSong_Pre($grpc.ServiceCall call, $async.Future<$9.GetSessionSongRequest> request) async {
    return getSessionSong(call, await request);
  }

  $async.Future<$9.UpdateSessionSongResponse> updateSessionSong_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionSongRequest> request) async {
    return updateSessionSong(call, await request);
  }

  $async.Future<$9.DeleteSessionSongResponse> deleteSessionSong_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSessionSongRequest> request) async {
    return deleteSessionSong(call, await request);
  }

  $async.Future<$9.AddSongEntryResponse> addSongEntry_Pre($grpc.ServiceCall call, $async.Future<$9.AddSongEntryRequest> request) async {
    return addSongEntry(call, await request);
  }

  $async.Future<$9.DeleteSongEntryResponse> deleteSongEntry_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSongEntryRequest> request) async {
    return deleteSongEntry(call, await request);
  }

  $async.Future<$9.AddSessionSongResourceResponse> addSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$9.AddSessionSongResourceRequest> request) async {
    return addSessionSongResource(call, await request);
  }

  $async.Future<$9.ListSessionSongResourcesResponse> listSessionSongResources_Pre($grpc.ServiceCall call, $async.Future<$9.ListSessionSongResourcesRequest> request) async {
    return listSessionSongResources(call, await request);
  }

  $async.Future<$9.DeleteSessionSongResourceResponse> deleteSessionSongResource_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSessionSongResourceRequest> request) async {
    return deleteSessionSongResource(call, await request);
  }

  $async.Future<$9.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$9.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$9.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$9.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$9.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$9.CreateSessionThreadResponse> createSessionThread_Pre($grpc.ServiceCall call, $async.Future<$9.CreateSessionThreadRequest> request) async {
    return createSessionThread(call, await request);
  }

  $async.Future<$9.ListSessionThreadsResponse> listSessionThreads_Pre($grpc.ServiceCall call, $async.Future<$9.ListSessionThreadsRequest> request) async {
    return listSessionThreads(call, await request);
  }

  $async.Future<$9.CreateSongThreadResponse> createSongThread_Pre($grpc.ServiceCall call, $async.Future<$9.CreateSongThreadRequest> request) async {
    return createSongThread(call, await request);
  }

  $async.Future<$9.GetSessionThreadResponse> getSessionThread_Pre($grpc.ServiceCall call, $async.Future<$9.GetSessionThreadRequest> request) async {
    return getSessionThread(call, await request);
  }

  $async.Future<$9.DeleteSessionThreadResponse> deleteSessionThread_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSessionThreadRequest> request) async {
    return deleteSessionThread(call, await request);
  }

  $async.Future<$9.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$9.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$9.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$9.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$9.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$9.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$9.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$9.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$9.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$9.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$9.AddSessionResourceResponse> addSessionResource_Pre($grpc.ServiceCall call, $async.Future<$9.AddSessionResourceRequest> request) async {
    return addSessionResource(call, await request);
  }

  $async.Future<$9.ListSessionResourcesResponse> listSessionResources_Pre($grpc.ServiceCall call, $async.Future<$9.ListSessionResourcesRequest> request) async {
    return listSessionResources(call, await request);
  }

  $async.Future<$9.DeleteSessionResourceResponse> deleteSessionResource_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSessionResourceRequest> request) async {
    return deleteSessionResource(call, await request);
  }

  $async.Future<$9.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$9.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$9.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$9.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$9.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$9.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$9.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$9.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$9.CreateSessionPartyResponse> createSessionParty_Pre($grpc.ServiceCall call, $async.Future<$9.CreateSessionPartyRequest> request) async {
    return createSessionParty(call, await request);
  }

  $async.Future<$9.GetSessionPartyResponse> getSessionParty_Pre($grpc.ServiceCall call, $async.Future<$9.GetSessionPartyRequest> request) async {
    return getSessionParty(call, await request);
  }

  $async.Future<$9.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$9.ListPartyParticipantsResponse> listPartyParticipants_Pre($grpc.ServiceCall call, $async.Future<$9.ListPartyParticipantsRequest> request) async {
    return listPartyParticipants(call, await request);
  }

  $async.Future<$9.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$9.DeletePartyParticipantResponse> deletePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.DeletePartyParticipantRequest> request) async {
    return deletePartyParticipant(call, await request);
  }

  $async.Future<$9.CreateSessionResponse> createSession($grpc.ServiceCall call, $9.CreateSessionRequest request);
  $async.Future<$9.GetSessionResponse> getSession($grpc.ServiceCall call, $9.GetSessionRequest request);
  $async.Future<$9.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $9.UpdateSessionRequest request);
  $async.Future<$9.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $9.UpdateSessionStatusRequest request);
  $async.Future<$9.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $9.CancelSessionRequest request);
  $async.Future<$9.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $9.DuplicateSessionRequest request);
  $async.Future<$9.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $9.AddSessionPartRequest request);
  $async.Future<$9.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $9.UpdateSessionPartRequest request);
  $async.Future<$9.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $9.DeleteSessionPartRequest request);
  $async.Future<$9.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $9.UpdateSessionScheduleRequest request);
  $async.Future<$9.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $9.UpdateSessionLocationRequest request);
  $async.Future<$9.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $9.ListSessionParticipantsRequest request);
  $async.Future<$9.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $9.AddSessionParticipantRequest request);
  $async.Future<$9.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $9.UpdateSessionParticipantRequest request);
  $async.Future<$9.ListSessionSongsResponse> listSessionSongs($grpc.ServiceCall call, $9.ListSessionSongsRequest request);
  $async.Future<$9.GetSessionSongResponse> getSessionSong($grpc.ServiceCall call, $9.GetSessionSongRequest request);
  $async.Future<$9.UpdateSessionSongResponse> updateSessionSong($grpc.ServiceCall call, $9.UpdateSessionSongRequest request);
  $async.Future<$9.DeleteSessionSongResponse> deleteSessionSong($grpc.ServiceCall call, $9.DeleteSessionSongRequest request);
  $async.Future<$9.AddSongEntryResponse> addSongEntry($grpc.ServiceCall call, $9.AddSongEntryRequest request);
  $async.Future<$9.DeleteSongEntryResponse> deleteSongEntry($grpc.ServiceCall call, $9.DeleteSongEntryRequest request);
  $async.Future<$9.AddSessionSongResourceResponse> addSessionSongResource($grpc.ServiceCall call, $9.AddSessionSongResourceRequest request);
  $async.Future<$9.ListSessionSongResourcesResponse> listSessionSongResources($grpc.ServiceCall call, $9.ListSessionSongResourcesRequest request);
  $async.Future<$9.DeleteSessionSongResourceResponse> deleteSessionSongResource($grpc.ServiceCall call, $9.DeleteSessionSongResourceRequest request);
  $async.Future<$9.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $9.ListSessionOrganizersRequest request);
  $async.Future<$9.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $9.AddSessionOrganizerRequest request);
  $async.Future<$9.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $9.DeleteSessionOrganizerRequest request);
  $async.Future<$9.CreateSessionThreadResponse> createSessionThread($grpc.ServiceCall call, $9.CreateSessionThreadRequest request);
  $async.Future<$9.ListSessionThreadsResponse> listSessionThreads($grpc.ServiceCall call, $9.ListSessionThreadsRequest request);
  $async.Future<$9.CreateSongThreadResponse> createSongThread($grpc.ServiceCall call, $9.CreateSongThreadRequest request);
  $async.Future<$9.GetSessionThreadResponse> getSessionThread($grpc.ServiceCall call, $9.GetSessionThreadRequest request);
  $async.Future<$9.DeleteSessionThreadResponse> deleteSessionThread($grpc.ServiceCall call, $9.DeleteSessionThreadRequest request);
  $async.Future<$9.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $9.CreateSessionNotificationRequest request);
  $async.Future<$9.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $9.GetSessionTimetableRequest request);
  $async.Future<$9.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $9.UpdateSessionTimetableRequest request);
  $async.Future<$9.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $9.GetOptimizedTimetableRequest request);
  $async.Future<$9.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $9.GetTimetableProgressRequest request);
  $async.Future<$9.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $9.UpdateTimetableProgressRequest request);
  $async.Future<$9.AddSessionResourceResponse> addSessionResource($grpc.ServiceCall call, $9.AddSessionResourceRequest request);
  $async.Future<$9.ListSessionResourcesResponse> listSessionResources($grpc.ServiceCall call, $9.ListSessionResourcesRequest request);
  $async.Future<$9.DeleteSessionResourceResponse> deleteSessionResource($grpc.ServiceCall call, $9.DeleteSessionResourceRequest request);
  $async.Future<$9.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $9.AddSessionFeedbackRequest request);
  $async.Future<$9.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $9.ListSessionFeedbacksRequest request);
  $async.Future<$9.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $9.ListRelatedSessionsRequest request);
  $async.Future<$9.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $9.AddRelatedSessionRequest request);
  $async.Future<$9.CreateSessionPartyResponse> createSessionParty($grpc.ServiceCall call, $9.CreateSessionPartyRequest request);
  $async.Future<$9.GetSessionPartyResponse> getSessionParty($grpc.ServiceCall call, $9.GetSessionPartyRequest request);
  $async.Future<$9.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $9.AddPartyParticipantRequest request);
  $async.Future<$9.ListPartyParticipantsResponse> listPartyParticipants($grpc.ServiceCall call, $9.ListPartyParticipantsRequest request);
  $async.Future<$9.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $9.UpdatePartyParticipantRequest request);
  $async.Future<$9.DeletePartyParticipantResponse> deletePartyParticipant($grpc.ServiceCall call, $9.DeletePartyParticipantRequest request);
}
