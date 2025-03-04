//
//  Generated code. Do not modify.
//  source: bst/v1/party_service.proto
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

import 'party_service.pb.dart' as $9;

export 'party_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.PartyService')
class PartyServiceClient extends $grpc.Client {
  static final _$createParty = $grpc.ClientMethod<$9.CreatePartyRequest, $9.CreatePartyResponse>(
      '/bst.v1.PartyService/CreateParty',
      ($9.CreatePartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreatePartyResponse.fromBuffer(value));
  static final _$getParty = $grpc.ClientMethod<$9.GetPartyRequest, $9.GetPartyRequest>(
      '/bst.v1.PartyService/GetParty',
      ($9.GetPartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetPartyRequest.fromBuffer(value));
  static final _$updateParty = $grpc.ClientMethod<$9.UpdatePartyRequest, $9.UpdatePartyResponse>(
      '/bst.v1.PartyService/UpdateParty',
      ($9.UpdatePartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdatePartyResponse.fromBuffer(value));
  static final _$deleteParty = $grpc.ClientMethod<$9.DeletePartyRequest, $9.DeletePartyResponse>(
      '/bst.v1.PartyService/DeleteParty',
      ($9.DeletePartyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeletePartyResponse.fromBuffer(value));
  static final _$addPartyParticipant = $grpc.ClientMethod<$9.AddPartyParticipantRequest, $9.AddPartyParticipantResponse>(
      '/bst.v1.PartyService/AddPartyParticipant',
      ($9.AddPartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddPartyParticipantResponse.fromBuffer(value));
  static final _$updatePartyParticipant = $grpc.ClientMethod<$9.UpdatePartyParticipantRequest, $9.UpdatePartyParticipantResponse>(
      '/bst.v1.PartyService/UpdatePartyParticipant',
      ($9.UpdatePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdatePartyParticipantResponse.fromBuffer(value));
  static final _$removePartyParticipant = $grpc.ClientMethod<$9.RemovePartyParticipantRequest, $9.RemovePartyParticipantResponse>(
      '/bst.v1.PartyService/RemovePartyParticipant',
      ($9.RemovePartyParticipantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.RemovePartyParticipantResponse.fromBuffer(value));

  PartyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreatePartyResponse> createParty($9.CreatePartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createParty, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetPartyRequest> getParty($9.GetPartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getParty, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdatePartyResponse> updateParty($9.UpdatePartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateParty, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeletePartyResponse> deleteParty($9.DeletePartyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteParty, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddPartyParticipantResponse> addPartyParticipant($9.AddPartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdatePartyParticipantResponse> updatePartyParticipant($9.UpdatePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePartyParticipant, request, options: options);
  }

  $grpc.ResponseFuture<$9.RemovePartyParticipantResponse> removePartyParticipant($9.RemovePartyParticipantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removePartyParticipant, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.PartyService')
abstract class PartyServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.PartyService';

  PartyServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreatePartyRequest, $9.CreatePartyResponse>(
        'CreateParty',
        createParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreatePartyRequest.fromBuffer(value),
        ($9.CreatePartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetPartyRequest, $9.GetPartyRequest>(
        'GetParty',
        getParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetPartyRequest.fromBuffer(value),
        ($9.GetPartyRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdatePartyRequest, $9.UpdatePartyResponse>(
        'UpdateParty',
        updateParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdatePartyRequest.fromBuffer(value),
        ($9.UpdatePartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeletePartyRequest, $9.DeletePartyResponse>(
        'DeleteParty',
        deleteParty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeletePartyRequest.fromBuffer(value),
        ($9.DeletePartyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddPartyParticipantRequest, $9.AddPartyParticipantResponse>(
        'AddPartyParticipant',
        addPartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddPartyParticipantRequest.fromBuffer(value),
        ($9.AddPartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdatePartyParticipantRequest, $9.UpdatePartyParticipantResponse>(
        'UpdatePartyParticipant',
        updatePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdatePartyParticipantRequest.fromBuffer(value),
        ($9.UpdatePartyParticipantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.RemovePartyParticipantRequest, $9.RemovePartyParticipantResponse>(
        'RemovePartyParticipant',
        removePartyParticipant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.RemovePartyParticipantRequest.fromBuffer(value),
        ($9.RemovePartyParticipantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreatePartyResponse> createParty_Pre($grpc.ServiceCall call, $async.Future<$9.CreatePartyRequest> request) async {
    return createParty(call, await request);
  }

  $async.Future<$9.GetPartyRequest> getParty_Pre($grpc.ServiceCall call, $async.Future<$9.GetPartyRequest> request) async {
    return getParty(call, await request);
  }

  $async.Future<$9.UpdatePartyResponse> updateParty_Pre($grpc.ServiceCall call, $async.Future<$9.UpdatePartyRequest> request) async {
    return updateParty(call, await request);
  }

  $async.Future<$9.DeletePartyResponse> deleteParty_Pre($grpc.ServiceCall call, $async.Future<$9.DeletePartyRequest> request) async {
    return deleteParty(call, await request);
  }

  $async.Future<$9.AddPartyParticipantResponse> addPartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.AddPartyParticipantRequest> request) async {
    return addPartyParticipant(call, await request);
  }

  $async.Future<$9.UpdatePartyParticipantResponse> updatePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.UpdatePartyParticipantRequest> request) async {
    return updatePartyParticipant(call, await request);
  }

  $async.Future<$9.RemovePartyParticipantResponse> removePartyParticipant_Pre($grpc.ServiceCall call, $async.Future<$9.RemovePartyParticipantRequest> request) async {
    return removePartyParticipant(call, await request);
  }

  $async.Future<$9.CreatePartyResponse> createParty($grpc.ServiceCall call, $9.CreatePartyRequest request);
  $async.Future<$9.GetPartyRequest> getParty($grpc.ServiceCall call, $9.GetPartyRequest request);
  $async.Future<$9.UpdatePartyResponse> updateParty($grpc.ServiceCall call, $9.UpdatePartyRequest request);
  $async.Future<$9.DeletePartyResponse> deleteParty($grpc.ServiceCall call, $9.DeletePartyRequest request);
  $async.Future<$9.AddPartyParticipantResponse> addPartyParticipant($grpc.ServiceCall call, $9.AddPartyParticipantRequest request);
  $async.Future<$9.UpdatePartyParticipantResponse> updatePartyParticipant($grpc.ServiceCall call, $9.UpdatePartyParticipantRequest request);
  $async.Future<$9.RemovePartyParticipantResponse> removePartyParticipant($grpc.ServiceCall call, $9.RemovePartyParticipantRequest request);
}
