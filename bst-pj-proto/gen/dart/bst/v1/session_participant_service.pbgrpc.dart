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

import 'session_participant_service.pb.dart' as $17;

export 'session_participant_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionParticipantService')
class SessionParticipantServiceClient extends $grpc.Client {
  static final _$listSessionParticipants = $grpc.ClientMethod<$17.ListSessionParticipantsRequest, $17.ListSessionParticipantsResponse>(
      '/bst.v1.SessionParticipantService/ListSessionParticipants',
      ($17.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$17.AddSessionParticipantRequest, $17.AddSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/AddSessionParticipant',
      ($17.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.AddSessionParticipantResponse.fromBuffer(value));
  static final _$setSessionParticipantIsOrganizer = $grpc.ClientMethod<$17.SetSessionParticipantIsOrganizerRequest, $17.SetSessionParticipantIsOrganizerResponse>(
      '/bst.v1.SessionParticipantService/SetSessionParticipantIsOrganizer',
      ($17.SetSessionParticipantIsOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.SetSessionParticipantIsOrganizerResponse.fromBuffer(value));
  static final _$addSessionParticipantParts = $grpc.ClientMethod<$17.AddSessionParticipantPartsRequest, $17.AddSessionParticipantPartsResponse>(
      '/bst.v1.SessionParticipantService/AddSessionParticipantParts',
      ($17.AddSessionParticipantPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.AddSessionParticipantPartsResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$17.UpdateSessionParticipantRequest, $17.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/UpdateSessionParticipant',
      ($17.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipantStatus = $grpc.ClientMethod<$17.UpdateSessionParticipantStatusRequest, $17.UpdateSessionParticipantStatusResponse>(
      '/bst.v1.SessionParticipantService/UpdateSessionParticipantStatus',
      ($17.UpdateSessionParticipantStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateSessionParticipantStatusResponse.fromBuffer(value));
  static final _$deleteSessionParticipant = $grpc.ClientMethod<$17.DeleteSessionParticipantRequest, $17.DeleteSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/DeleteSessionParticipant',
      ($17.DeleteSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteSessionParticipantResponse.fromBuffer(value));

  SessionParticipantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.ListSessionParticipantsResponse> listSessionParticipants($17.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$17.AddSessionParticipantResponse> addSessionParticipant($17.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$17.SetSessionParticipantIsOrganizerResponse> setSessionParticipantIsOrganizer($17.SetSessionParticipantIsOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSessionParticipantIsOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$17.AddSessionParticipantPartsResponse> addSessionParticipantParts($17.AddSessionParticipantPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipantParts, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateSessionParticipantResponse> updateSessionParticipant($17.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus($17.UpdateSessionParticipantStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipantStatus, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteSessionParticipantResponse> deleteSessionParticipant($17.DeleteSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionParticipantService')
abstract class SessionParticipantServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionParticipantService';

  SessionParticipantServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.ListSessionParticipantsRequest, $17.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ListSessionParticipantsRequest.fromBuffer(value),
        ($17.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.AddSessionParticipantRequest, $17.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.AddSessionParticipantRequest.fromBuffer(value),
        ($17.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.SetSessionParticipantIsOrganizerRequest, $17.SetSessionParticipantIsOrganizerResponse>(
        'SetSessionParticipantIsOrganizer',
        setSessionParticipantIsOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.SetSessionParticipantIsOrganizerRequest.fromBuffer(value),
        ($17.SetSessionParticipantIsOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.AddSessionParticipantPartsRequest, $17.AddSessionParticipantPartsResponse>(
        'AddSessionParticipantParts',
        addSessionParticipantParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.AddSessionParticipantPartsRequest.fromBuffer(value),
        ($17.AddSessionParticipantPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateSessionParticipantRequest, $17.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateSessionParticipantRequest.fromBuffer(value),
        ($17.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateSessionParticipantStatusRequest, $17.UpdateSessionParticipantStatusResponse>(
        'UpdateSessionParticipantStatus',
        updateSessionParticipantStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateSessionParticipantStatusRequest.fromBuffer(value),
        ($17.UpdateSessionParticipantStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteSessionParticipantRequest, $17.DeleteSessionParticipantResponse>(
        'DeleteSessionParticipant',
        deleteSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteSessionParticipantRequest.fromBuffer(value),
        ($17.DeleteSessionParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$17.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$17.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$17.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$17.SetSessionParticipantIsOrganizerResponse> setSessionParticipantIsOrganizer_Pre($grpc.ServiceCall call, $async.Future<$17.SetSessionParticipantIsOrganizerRequest> request) async {
    return setSessionParticipantIsOrganizer(call, await request);
  }

  $async.Future<$17.AddSessionParticipantPartsResponse> addSessionParticipantParts_Pre($grpc.ServiceCall call, $async.Future<$17.AddSessionParticipantPartsRequest> request) async {
    return addSessionParticipantParts(call, await request);
  }

  $async.Future<$17.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$17.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateSessionParticipantStatusRequest> request) async {
    return updateSessionParticipantStatus(call, await request);
  }

  $async.Future<$17.DeleteSessionParticipantResponse> deleteSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteSessionParticipantRequest> request) async {
    return deleteSessionParticipant(call, await request);
  }

  $async.Future<$17.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $17.ListSessionParticipantsRequest request);
  $async.Future<$17.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $17.AddSessionParticipantRequest request);
  $async.Future<$17.SetSessionParticipantIsOrganizerResponse> setSessionParticipantIsOrganizer($grpc.ServiceCall call, $17.SetSessionParticipantIsOrganizerRequest request);
  $async.Future<$17.AddSessionParticipantPartsResponse> addSessionParticipantParts($grpc.ServiceCall call, $17.AddSessionParticipantPartsRequest request);
  $async.Future<$17.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $17.UpdateSessionParticipantRequest request);
  $async.Future<$17.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus($grpc.ServiceCall call, $17.UpdateSessionParticipantStatusRequest request);
  $async.Future<$17.DeleteSessionParticipantResponse> deleteSessionParticipant($grpc.ServiceCall call, $17.DeleteSessionParticipantRequest request);
}
