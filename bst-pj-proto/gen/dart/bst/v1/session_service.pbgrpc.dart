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

import 'session_service.pb.dart' as $18;

export 'session_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$18.CreateSessionRequest, $18.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($18.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$18.GetSessionRequest, $18.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($18.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.GetSessionResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$18.UpdateSessionRequest, $18.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($18.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionResponse.fromBuffer(value));
  static final _$updateSessionStatus = $grpc.ClientMethod<$18.UpdateSessionStatusRequest, $18.UpdateSessionStatusResponse>(
      '/bst.v1.SessionService/UpdateSessionStatus',
      ($18.UpdateSessionStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionStatusResponse.fromBuffer(value));
  static final _$cancelSession = $grpc.ClientMethod<$18.CancelSessionRequest, $18.CancelSessionResponse>(
      '/bst.v1.SessionService/CancelSession',
      ($18.CancelSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CancelSessionResponse.fromBuffer(value));
  static final _$duplicateSession = $grpc.ClientMethod<$18.DuplicateSessionRequest, $18.DuplicateSessionResponse>(
      '/bst.v1.SessionService/DuplicateSession',
      ($18.DuplicateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DuplicateSessionResponse.fromBuffer(value));
  static final _$updateSessionEntryStartDate = $grpc.ClientMethod<$18.UpdateSessionEntryStartDateRequest, $18.UpdateSessionEntryStartDateResponse>(
      '/bst.v1.SessionService/UpdateSessionEntryStartDate',
      ($18.UpdateSessionEntryStartDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionEntryStartDateResponse.fromBuffer(value));
  static final _$updateSessionEntryEndDate = $grpc.ClientMethod<$18.UpdateSessionEntryEndDateRequest, $18.UpdateSessionEntryEndDateResponse>(
      '/bst.v1.SessionService/UpdateSessionEntryEndDate',
      ($18.UpdateSessionEntryEndDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionEntryEndDateResponse.fromBuffer(value));
  static final _$updateSessionSchedule = $grpc.ClientMethod<$18.UpdateSessionScheduleRequest, $18.UpdateSessionScheduleResponse>(
      '/bst.v1.SessionService/UpdateSessionSchedule',
      ($18.UpdateSessionScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionScheduleResponse.fromBuffer(value));
  static final _$updateSessionLocation = $grpc.ClientMethod<$18.UpdateSessionLocationRequest, $18.UpdateSessionLocationResponse>(
      '/bst.v1.SessionService/UpdateSessionLocation',
      ($18.UpdateSessionLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionLocationResponse.fromBuffer(value));
  static final _$createSessionNotification = $grpc.ClientMethod<$18.CreateSessionNotificationRequest, $18.CreateSessionNotificationResponse>(
      '/bst.v1.SessionService/CreateSessionNotification',
      ($18.CreateSessionNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateSessionNotificationResponse.fromBuffer(value));
  static final _$listRelatedSessions = $grpc.ClientMethod<$18.ListRelatedSessionsRequest, $18.ListRelatedSessionsResponse>(
      '/bst.v1.SessionService/ListRelatedSessions',
      ($18.ListRelatedSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListRelatedSessionsResponse.fromBuffer(value));
  static final _$addRelatedSession = $grpc.ClientMethod<$18.AddRelatedSessionRequest, $18.AddRelatedSessionResponse>(
      '/bst.v1.SessionService/AddRelatedSession',
      ($18.AddRelatedSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.AddRelatedSessionResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.CreateSessionResponse> createSession($18.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$18.GetSessionResponse> getSession($18.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionResponse> updateSession($18.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionStatusResponse> updateSessionStatus($18.UpdateSessionStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionStatus, request, options: options);
  }

  $grpc.ResponseFuture<$18.CancelSessionResponse> cancelSession($18.CancelSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$18.DuplicateSessionResponse> duplicateSession($18.DuplicateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$duplicateSession, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionEntryStartDateResponse> updateSessionEntryStartDate($18.UpdateSessionEntryStartDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionEntryStartDate, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionEntryEndDateResponse> updateSessionEntryEndDate($18.UpdateSessionEntryEndDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionEntryEndDate, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionScheduleResponse> updateSessionSchedule($18.UpdateSessionScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionLocationResponse> updateSessionLocation($18.UpdateSessionLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionLocation, request, options: options);
  }

  $grpc.ResponseFuture<$18.CreateSessionNotificationResponse> createSessionNotification($18.CreateSessionNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSessionNotification, request, options: options);
  }

  $grpc.ResponseFuture<$18.ListRelatedSessionsResponse> listRelatedSessions($18.ListRelatedSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRelatedSessions, request, options: options);
  }

  $grpc.ResponseFuture<$18.AddRelatedSessionResponse> addRelatedSession($18.AddRelatedSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRelatedSession, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.CreateSessionRequest, $18.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateSessionRequest.fromBuffer(value),
        ($18.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.GetSessionRequest, $18.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.GetSessionRequest.fromBuffer(value),
        ($18.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionRequest, $18.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionRequest.fromBuffer(value),
        ($18.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionStatusRequest, $18.UpdateSessionStatusResponse>(
        'UpdateSessionStatus',
        updateSessionStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionStatusRequest.fromBuffer(value),
        ($18.UpdateSessionStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.CancelSessionRequest, $18.CancelSessionResponse>(
        'CancelSession',
        cancelSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CancelSessionRequest.fromBuffer(value),
        ($18.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DuplicateSessionRequest, $18.DuplicateSessionResponse>(
        'DuplicateSession',
        duplicateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DuplicateSessionRequest.fromBuffer(value),
        ($18.DuplicateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionEntryStartDateRequest, $18.UpdateSessionEntryStartDateResponse>(
        'UpdateSessionEntryStartDate',
        updateSessionEntryStartDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionEntryStartDateRequest.fromBuffer(value),
        ($18.UpdateSessionEntryStartDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionEntryEndDateRequest, $18.UpdateSessionEntryEndDateResponse>(
        'UpdateSessionEntryEndDate',
        updateSessionEntryEndDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionEntryEndDateRequest.fromBuffer(value),
        ($18.UpdateSessionEntryEndDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionScheduleRequest, $18.UpdateSessionScheduleResponse>(
        'UpdateSessionSchedule',
        updateSessionSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionScheduleRequest.fromBuffer(value),
        ($18.UpdateSessionScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionLocationRequest, $18.UpdateSessionLocationResponse>(
        'UpdateSessionLocation',
        updateSessionLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionLocationRequest.fromBuffer(value),
        ($18.UpdateSessionLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.CreateSessionNotificationRequest, $18.CreateSessionNotificationResponse>(
        'CreateSessionNotification',
        createSessionNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateSessionNotificationRequest.fromBuffer(value),
        ($18.CreateSessionNotificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ListRelatedSessionsRequest, $18.ListRelatedSessionsResponse>(
        'ListRelatedSessions',
        listRelatedSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListRelatedSessionsRequest.fromBuffer(value),
        ($18.ListRelatedSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.AddRelatedSessionRequest, $18.AddRelatedSessionResponse>(
        'AddRelatedSession',
        addRelatedSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.AddRelatedSessionRequest.fromBuffer(value),
        ($18.AddRelatedSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$18.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$18.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$18.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$18.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$18.UpdateSessionStatusResponse> updateSessionStatus_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionStatusRequest> request) async {
    return updateSessionStatus(call, await request);
  }

  $async.Future<$18.CancelSessionResponse> cancelSession_Pre($grpc.ServiceCall call, $async.Future<$18.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$18.DuplicateSessionResponse> duplicateSession_Pre($grpc.ServiceCall call, $async.Future<$18.DuplicateSessionRequest> request) async {
    return duplicateSession(call, await request);
  }

  $async.Future<$18.UpdateSessionEntryStartDateResponse> updateSessionEntryStartDate_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionEntryStartDateRequest> request) async {
    return updateSessionEntryStartDate(call, await request);
  }

  $async.Future<$18.UpdateSessionEntryEndDateResponse> updateSessionEntryEndDate_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionEntryEndDateRequest> request) async {
    return updateSessionEntryEndDate(call, await request);
  }

  $async.Future<$18.UpdateSessionScheduleResponse> updateSessionSchedule_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionScheduleRequest> request) async {
    return updateSessionSchedule(call, await request);
  }

  $async.Future<$18.UpdateSessionLocationResponse> updateSessionLocation_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionLocationRequest> request) async {
    return updateSessionLocation(call, await request);
  }

  $async.Future<$18.CreateSessionNotificationResponse> createSessionNotification_Pre($grpc.ServiceCall call, $async.Future<$18.CreateSessionNotificationRequest> request) async {
    return createSessionNotification(call, await request);
  }

  $async.Future<$18.ListRelatedSessionsResponse> listRelatedSessions_Pre($grpc.ServiceCall call, $async.Future<$18.ListRelatedSessionsRequest> request) async {
    return listRelatedSessions(call, await request);
  }

  $async.Future<$18.AddRelatedSessionResponse> addRelatedSession_Pre($grpc.ServiceCall call, $async.Future<$18.AddRelatedSessionRequest> request) async {
    return addRelatedSession(call, await request);
  }

  $async.Future<$18.CreateSessionResponse> createSession($grpc.ServiceCall call, $18.CreateSessionRequest request);
  $async.Future<$18.GetSessionResponse> getSession($grpc.ServiceCall call, $18.GetSessionRequest request);
  $async.Future<$18.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $18.UpdateSessionRequest request);
  $async.Future<$18.UpdateSessionStatusResponse> updateSessionStatus($grpc.ServiceCall call, $18.UpdateSessionStatusRequest request);
  $async.Future<$18.CancelSessionResponse> cancelSession($grpc.ServiceCall call, $18.CancelSessionRequest request);
  $async.Future<$18.DuplicateSessionResponse> duplicateSession($grpc.ServiceCall call, $18.DuplicateSessionRequest request);
  $async.Future<$18.UpdateSessionEntryStartDateResponse> updateSessionEntryStartDate($grpc.ServiceCall call, $18.UpdateSessionEntryStartDateRequest request);
  $async.Future<$18.UpdateSessionEntryEndDateResponse> updateSessionEntryEndDate($grpc.ServiceCall call, $18.UpdateSessionEntryEndDateRequest request);
  $async.Future<$18.UpdateSessionScheduleResponse> updateSessionSchedule($grpc.ServiceCall call, $18.UpdateSessionScheduleRequest request);
  $async.Future<$18.UpdateSessionLocationResponse> updateSessionLocation($grpc.ServiceCall call, $18.UpdateSessionLocationRequest request);
  $async.Future<$18.CreateSessionNotificationResponse> createSessionNotification($grpc.ServiceCall call, $18.CreateSessionNotificationRequest request);
  $async.Future<$18.ListRelatedSessionsResponse> listRelatedSessions($grpc.ServiceCall call, $18.ListRelatedSessionsRequest request);
  $async.Future<$18.AddRelatedSessionResponse> addRelatedSession($grpc.ServiceCall call, $18.AddRelatedSessionRequest request);
}
