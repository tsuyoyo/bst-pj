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

import 'session_service.pb.dart' as $19;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$19.CreateSessionRequest, $19.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($19.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$19.GetSessionRequest, $19.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($19.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$19.UpdateSessionRequest, $19.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($19.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStudio = $grpc.ClientMethod<$19.UpdateSessionStudioRequest, $19.UpdateSessionStudioResponse>(
      '/bst.v1.SessionService/UpdateSessionStudio',
      ($19.UpdateSessionStudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSessionStudioResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$19.UpdateSessionStatusRequest, $19.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($19.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$19.CancelSessionRequest, $19.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($19.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$19.DuplicateSessionRequest, $19.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($19.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.DuplicateSessionResponse.fromBuffer(value));
  static final _$updateSessionEntryStartDate = $grpc.ClientMethod<$19.UpdateSessionEntryStartDateRequest, $19.UpdateSessionEntryStartDateResponse>(
      '/bst.v1.SessionService/UpdateSessionEntryStartDate',
      ($19.UpdateSessionEntryStartDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSessionEntryStartDateResponse.fromBuffer(value));
  static final _$updateSessionEntryEndDate = $grpc.ClientMethod<$19.UpdateSessionEntryEndDateRequest, $19.UpdateSessionEntryEndDateResponse>(
      '/bst.v1.SessionService/UpdateSessionEntryEndDate',
      ($19.UpdateSessionEntryEndDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSessionEntryEndDateResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$19.UpdateSessionScheduleRequest, $19.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($19.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$19.UpdateSessionLocationRequest, $19.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($19.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$19.CreateSessionNotificationRequest, $19.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($19.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$19.ListRelatedSessionsRequest, $19.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($19.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$19.AddRelatedSessionRequest, $19.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($19.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.AddRelatedSessionResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$19.CreateSessionResponse> createSession($19.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$19.GetSessionResponse> getSession($19.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSessionResponse> updateSession($19.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSessionStudioResponse> updateSessionStudio($19.UpdateSessionStudioRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStudio, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSessionStatusResponse> updateSessionStatus($19.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$19.CancelSessionResponse> cancelSession($19.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$19.DuplicateSessionResponse> duplicateSession($19.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSessionEntryStartDateResponse> updateSessionEntryStartDate($19.UpdateSessionEntryStartDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionEntryStartDate, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSessionEntryEndDateResponse> updateSessionEntryEndDate($19.UpdateSessionEntryEndDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionEntryEndDate, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSessionScheduleResponse> updateSessionSchedule($19.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateSessionLocationResponse> updateSessionLocation($19.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$19.CreateSessionNotificationResponse> createSessionNotification($19.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$19.ListRelatedSessionsResponse> listRelatedSessions($19.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$19.AddRelatedSessionResponse> addRelatedSession($19.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.CreateSessionRequest, $19.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CreateSessionRequest.fromBuffer(value),
        ($19.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.GetSessionRequest, $19.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.GetSessionRequest.fromBuffer(value),
        ($19.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSessionRequest, $19.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSessionRequest.fromBuffer(value),
        ($19.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSessionStudioRequest, $19.UpdateSessionStudioResponse>(
        'UpdateSessionStudio',
        updateSessionStudio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSessionStudioRequest.fromBuffer(value),
        ($19.UpdateSessionStudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSessionStatusRequest, $19.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSessionStatusRequest.fromBuffer(value),
        ($19.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.CancelSessionRequest, $19.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CancelSessionRequest.fromBuffer(value),
        ($19.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.DuplicateSessionRequest, $19.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.DuplicateSessionRequest.fromBuffer(value),
        ($19.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSessionEntryStartDateRequest, $19.UpdateSessionEntryStartDateResponse>(
        'UpdateSessionEntryStartDate',
        updateSessionEntryStartDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSessionEntryStartDateRequest.fromBuffer(value),
        ($19.UpdateSessionEntryStartDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSessionEntryEndDateRequest, $19.UpdateSessionEntryEndDateResponse>(
        'UpdateSessionEntryEndDate',
        updateSessionEntryEndDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSessionEntryEndDateRequest.fromBuffer(value),
        ($19.UpdateSessionEntryEndDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSessionScheduleRequest, $19.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSessionScheduleRequest.fromBuffer(value),
        ($19.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateSessionLocationRequest, $19.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateSessionLocationRequest.fromBuffer(value),
        ($19.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.CreateSessionNotificationRequest, $19.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CreateSessionNotificationRequest.fromBuffer(value),
        ($19.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ListRelatedSessionsRequest, $19.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ListRelatedSessionsRequest.fromBuffer(value),
        ($19.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.AddRelatedSessionRequest, $19.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.AddRelatedSessionRequest.fromBuffer(value),
        ($19.AddRelatedSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$19.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$19.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$19.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$19.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$19.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$19.UpdateSessionStudioResponse> updateSessionStudio_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSessionStudioRequest> request) async {
    return updateSessionStudio(call, await request);
  }

  $async.Future<$19.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$19.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$19.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$19.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$19.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$19.UpdateSessionEntryStartDateResponse> updateSessionEntryStartDate_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSessionEntryStartDateRequest> request) async {
    return updateSessionEntryStartDate(call, await request);
  }

  $async.Future<$19.UpdateSessionEntryEndDateResponse> updateSessionEntryEndDate_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSessionEntryEndDateRequest> request) async {
    return updateSessionEntryEndDate(call, await request);
  }

  $async.Future<$19.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$19.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$19.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$19.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$19.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$19.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$19.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$19.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$19.CreateSessionResponse> createSession($grpc.ServiceCall call, $19.CreateSessionRequest request);
  $async.Future<$19.GetSessionResponse> getSession($grpc.ServiceCall call, $19.GetSessionRequest request);
  $async.Future<$19.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $19.UpdateSessionRequest request);
  $async.Future<$19.UpdateSessionStudioResponse> updateSessionStudio($grpc.ServiceCall call, $19.UpdateSessionStudioRequest request);
  $async.Future<$19.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $19.UpdateSessionStatusRequest request);
  $async.Future<$19.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $19.CancelSessionRequest request);
  $async.Future<$19.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $19.DuplicateSessionRequest request);
  $async.Future<$19.UpdateSessionEntryStartDateResponse> updateSessionEntryStartDate($grpc.ServiceCall call, $19.UpdateSessionEntryStartDateRequest request);
  $async.Future<$19.UpdateSessionEntryEndDateResponse> updateSessionEntryEndDate($grpc.ServiceCall call, $19.UpdateSessionEntryEndDateRequest request);
  $async.Future<$19.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $19.UpdateSessionScheduleRequest request);
  $async.Future<$19.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $19.UpdateSessionLocationRequest request);
  $async.Future<$19.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $19.CreateSessionNotificationRequest request);
  $async.Future<$19.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $19.ListRelatedSessionsRequest request);
  $async.Future<$19.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $19.AddRelatedSessionRequest request);
}
