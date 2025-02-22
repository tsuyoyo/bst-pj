//
//  Generated code. Do not modify.
//  source: bst/v1/session_participant_service.proto
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

import 'session_participant_service.pb.dart' as $15;

export 'session_participant_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionParticipantService')
class SessionParticipantServiceClient extends $grpc.Client {
  static final _$listSessionParticipants = $grpc.ClientMethod<$15.ListSessionParticipantsRequest, $15.ListSessionParticipantsResponse>(
      '/bst.v1.SessionParticipantService/ListSessionParticipants',
      ($15.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$15.AddSessionParticipantRequest, $15.AddSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/AddSessionParticipant',
      ($15.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionParticipantResponse.fromBuffer(value));
  static final _$setSessionParticipantIsOrganizer = $grpc.ClientMethod<$15.SetSessionParticipantIsOrganizerRequest, $15.SetSessionParticipantIsOrganizerResponse>(
      '/bst.v1.SessionParticipantService/SetSessionParticipantIsOrganizer',
      ($15.SetSessionParticipantIsOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.SetSessionParticipantIsOrganizerResponse.fromBuffer(value));
  static final _$addSessionParticipantParts = $grpc.ClientMethod<$15.AddSessionParticipantPartsRequest, $15.AddSessionParticipantPartsResponse>(
      '/bst.v1.SessionParticipantService/AddSessionParticipantParts',
      ($15.AddSessionParticipantPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionParticipantPartsResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$15.UpdateSessionParticipantRequest, $15.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/UpdateSessionParticipant',
      ($15.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipantStatus = $grpc.ClientMethod<$15.UpdateSessionParticipantStatusRequest, $15.UpdateSessionParticipantStatusResponse>(
      '/bst.v1.SessionParticipantService/UpdateSessionParticipantStatus',
      ($15.UpdateSessionParticipantStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSessionParticipantStatusResponse.fromBuffer(value));
  static final _$deleteSessionParticipant = $grpc.ClientMethod<$15.DeleteSessionParticipantRequest, $15.DeleteSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/DeleteSessionParticipant',
      ($15.DeleteSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSessionParticipantResponse.fromBuffer(value));

  SessionParticipantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.ListSessionParticipantsResponse> listSessionParticipants($15.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionParticipantResponse> addSessionParticipant($15.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$15.SetSessionParticipantIsOrganizerResponse> setSessionParticipantIsOrganizer($15.SetSessionParticipantIsOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSessionParticipantIsOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionParticipantPartsResponse> addSessionParticipantParts($15.AddSessionParticipantPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipantParts, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionParticipantResponse> updateSessionParticipant($15.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus($15.UpdateSessionParticipantStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipantStatus, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSessionParticipantResponse> deleteSessionParticipant($15.DeleteSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionParticipantService')
abstract class SessionParticipantServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionParticipantService';

  SessionParticipantServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.ListSessionParticipantsRequest, $15.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionParticipantsRequest.fromBuffer(value),
        ($15.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionParticipantRequest, $15.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionParticipantRequest.fromBuffer(value),
        ($15.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.SetSessionParticipantIsOrganizerRequest, $15.SetSessionParticipantIsOrganizerResponse>(
        'SetSessionParticipantIsOrganizer',
        setSessionParticipantIsOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.SetSessionParticipantIsOrganizerRequest.fromBuffer(value),
        ($15.SetSessionParticipantIsOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionParticipantPartsRequest, $15.AddSessionParticipantPartsResponse>(
        'AddSessionParticipantParts',
        addSessionParticipantParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionParticipantPartsRequest.fromBuffer(value),
        ($15.AddSessionParticipantPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionParticipantRequest, $15.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionParticipantRequest.fromBuffer(value),
        ($15.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSessionParticipantStatusRequest, $15.UpdateSessionParticipantStatusResponse>(
        'UpdateSessionParticipantStatus',
        updateSessionParticipantStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSessionParticipantStatusRequest.fromBuffer(value),
        ($15.UpdateSessionParticipantStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSessionParticipantRequest, $15.DeleteSessionParticipantResponse>(
        'DeleteSessionParticipant',
        deleteSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSessionParticipantRequest.fromBuffer(value),
        ($15.DeleteSessionParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$15.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$15.SetSessionParticipantIsOrganizerResponse> setSessionParticipantIsOrganizer_Pre($grpc.ServiceCall call, $async.Future<$15.SetSessionParticipantIsOrganizerRequest> request) async {
    return setSessionParticipantIsOrganizer(call, await request);
  }

  $async.Future<$15.AddSessionParticipantPartsResponse> addSessionParticipantParts_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionParticipantPartsRequest> request) async {
    return addSessionParticipantParts(call, await request);
  }

  $async.Future<$15.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$15.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSessionParticipantStatusRequest> request) async {
    return updateSessionParticipantStatus(call, await request);
  }

  $async.Future<$15.DeleteSessionParticipantResponse> deleteSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSessionParticipantRequest> request) async {
    return deleteSessionParticipant(call, await request);
  }

  $async.Future<$15.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $15.ListSessionParticipantsRequest request);
  $async.Future<$15.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $15.AddSessionParticipantRequest request);
  $async.Future<$15.SetSessionParticipantIsOrganizerResponse> setSessionParticipantIsOrganizer($grpc.ServiceCall call, $15.SetSessionParticipantIsOrganizerRequest request);
  $async.Future<$15.AddSessionParticipantPartsResponse> addSessionParticipantParts($grpc.ServiceCall call, $15.AddSessionParticipantPartsRequest request);
  $async.Future<$15.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $15.UpdateSessionParticipantRequest request);
  $async.Future<$15.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus($grpc.ServiceCall call, $15.UpdateSessionParticipantStatusRequest request);
  $async.Future<$15.DeleteSessionParticipantResponse> deleteSessionParticipant($grpc.ServiceCall call, $15.DeleteSessionParticipantRequest request);
}
