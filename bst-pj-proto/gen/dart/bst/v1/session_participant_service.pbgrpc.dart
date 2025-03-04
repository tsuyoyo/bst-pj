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

import 'session_participant_service.pb.dart' as $18;

export 'session_participant_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionParticipantService')
class SessionParticipantServiceClient extends $grpc.Client {
  static final _$listSessionParticipants = $grpc.ClientMethod<$18.ListSessionParticipantsRequest, $18.ListSessionParticipantsResponse>(
      '/bst.v1.SessionParticipantService/ListSessionParticipants',
      ($18.ListSessionParticipantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ListSessionParticipantsResponse.fromBuffer(value));
  static final _$addSessionParticipant = $grpc.ClientMethod<$18.AddSessionParticipantRequest, $18.AddSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/AddSessionParticipant',
      ($18.AddSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.AddSessionParticipantResponse.fromBuffer(value));
  static final _$setSessionParticipantIsAdmin = $grpc.ClientMethod<$18.SetSessionParticipantIsAdminRequest, $18.SetSessionParticipantIsAdminResponse>(
      '/bst.v1.SessionParticipantService/SetSessionParticipantIsAdmin',
      ($18.SetSessionParticipantIsAdminRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.SetSessionParticipantIsAdminResponse.fromBuffer(value));
  static final _$addSessionParticipantParts = $grpc.ClientMethod<$18.AddSessionParticipantPartsRequest, $18.AddSessionParticipantPartsResponse>(
      '/bst.v1.SessionParticipantService/AddSessionParticipantParts',
      ($18.AddSessionParticipantPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.AddSessionParticipantPartsResponse.fromBuffer(value));
  static final _$updateSessionParticipant = $grpc.ClientMethod<$18.UpdateSessionParticipantRequest, $18.UpdateSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/UpdateSessionParticipant',
      ($18.UpdateSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionParticipantResponse.fromBuffer(value));
  static final _$updateSessionParticipantStatus = $grpc.ClientMethod<$18.UpdateSessionParticipantStatusRequest, $18.UpdateSessionParticipantStatusResponse>(
      '/bst.v1.SessionParticipantService/UpdateSessionParticipantStatus',
      ($18.UpdateSessionParticipantStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateSessionParticipantStatusResponse.fromBuffer(value));
  static final _$deleteSessionParticipant = $grpc.ClientMethod<$18.DeleteSessionParticipantRequest, $18.DeleteSessionParticipantResponse>(
      '/bst.v1.SessionParticipantService/DeleteSessionParticipant',
      ($18.DeleteSessionParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.DeleteSessionParticipantResponse.fromBuffer(value));

  SessionParticipantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.ListSessionParticipantsResponse> listSessionParticipants($18.ListSessionParticipantsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParticipants, request, options: options);
  }

  $grpc.ResponseFuture<$18.AddSessionParticipantResponse> addSessionParticipant($18.AddSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$18.SetSessionParticipantIsAdminResponse> setSessionParticipantIsAdmin($18.SetSessionParticipantIsAdminRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSessionParticipantIsAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$18.AddSessionParticipantPartsResponse> addSessionParticipantParts($18.AddSessionParticipantPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionParticipantParts, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionParticipantResponse> updateSessionParticipant($18.UpdateSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus($18.UpdateSessionParticipantStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionParticipantStatus, request, options: options);
  }

  $grpc.ResponseFuture<$18.DeleteSessionParticipantResponse> deleteSessionParticipant($18.DeleteSessionParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionParticipantService')
abstract class SessionParticipantServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionParticipantService';

  SessionParticipantServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.ListSessionParticipantsRequest, $18.ListSessionParticipantsResponse>(
        'ListSessionParticipants',
        listSessionParticipants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ListSessionParticipantsRequest.fromBuffer(value),
        ($18.ListSessionParticipantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.AddSessionParticipantRequest, $18.AddSessionParticipantResponse>(
        'AddSessionParticipant',
        addSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.AddSessionParticipantRequest.fromBuffer(value),
        ($18.AddSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.SetSessionParticipantIsAdminRequest, $18.SetSessionParticipantIsAdminResponse>(
        'SetSessionParticipantIsAdmin',
        setSessionParticipantIsAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.SetSessionParticipantIsAdminRequest.fromBuffer(value),
        ($18.SetSessionParticipantIsAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.AddSessionParticipantPartsRequest, $18.AddSessionParticipantPartsResponse>(
        'AddSessionParticipantParts',
        addSessionParticipantParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.AddSessionParticipantPartsRequest.fromBuffer(value),
        ($18.AddSessionParticipantPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionParticipantRequest, $18.UpdateSessionParticipantResponse>(
        'UpdateSessionParticipant',
        updateSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionParticipantRequest.fromBuffer(value),
        ($18.UpdateSessionParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateSessionParticipantStatusRequest, $18.UpdateSessionParticipantStatusResponse>(
        'UpdateSessionParticipantStatus',
        updateSessionParticipantStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateSessionParticipantStatusRequest.fromBuffer(value),
        ($18.UpdateSessionParticipantStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.DeleteSessionParticipantRequest, $18.DeleteSessionParticipantResponse>(
        'DeleteSessionParticipant',
        deleteSessionParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.DeleteSessionParticipantRequest.fromBuffer(value),
        ($18.DeleteSessionParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.ListSessionParticipantsResponse> listSessionParticipants_Pre($grpc.ServiceCall call, $async.Future<$18.ListSessionParticipantsRequest> request) async {
    return listSessionParticipants(call, await request);
  }

  $async.Future<$18.AddSessionParticipantResponse> addSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$18.AddSessionParticipantRequest> request) async {
    return addSessionParticipant(call, await request);
  }

  $async.Future<$18.SetSessionParticipantIsAdminResponse> setSessionParticipantIsAdmin_Pre($grpc.ServiceCall call, $async.Future<$18.SetSessionParticipantIsAdminRequest> request) async {
    return setSessionParticipantIsAdmin(call, await request);
  }

  $async.Future<$18.AddSessionParticipantPartsResponse> addSessionParticipantParts_Pre($grpc.ServiceCall call, $async.Future<$18.AddSessionParticipantPartsRequest> request) async {
    return addSessionParticipantParts(call, await request);
  }

  $async.Future<$18.UpdateSessionParticipantResponse> updateSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionParticipantRequest> request) async {
    return updateSessionParticipant(call, await request);
  }

  $async.Future<$18.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateSessionParticipantStatusRequest> request) async {
    return updateSessionParticipantStatus(call, await request);
  }

  $async.Future<$18.DeleteSessionParticipantResponse> deleteSessionParticipant_Pre($grpc.ServiceCall call, $async.Future<$18.DeleteSessionParticipantRequest> request) async {
    return deleteSessionParticipant(call, await request);
  }

  $async.Future<$18.ListSessionParticipantsResponse> listSessionParticipants($grpc.ServiceCall call, $18.ListSessionParticipantsRequest request);
  $async.Future<$18.AddSessionParticipantResponse> addSessionParticipant($grpc.ServiceCall call, $18.AddSessionParticipantRequest request);
  $async.Future<$18.SetSessionParticipantIsAdminResponse> setSessionParticipantIsAdmin($grpc.ServiceCall call, $18.SetSessionParticipantIsAdminRequest request);
  $async.Future<$18.AddSessionParticipantPartsResponse> addSessionParticipantParts($grpc.ServiceCall call, $18.AddSessionParticipantPartsRequest request);
  $async.Future<$18.UpdateSessionParticipantResponse> updateSessionParticipant($grpc.ServiceCall call, $18.UpdateSessionParticipantRequest request);
  $async.Future<$18.UpdateSessionParticipantStatusResponse> updateSessionParticipantStatus($grpc.ServiceCall call, $18.UpdateSessionParticipantStatusRequest request);
  $async.Future<$18.DeleteSessionParticipantResponse> deleteSessionParticipant($grpc.ServiceCall call, $18.DeleteSessionParticipantRequest request);
}
