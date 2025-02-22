//
//  Generated code. Do not modify.
//  source: bst/v1/session_organizer_service.proto
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

import 'session_organizer_service.pb.dart' as $15;

export 'session_organizer_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionOrganizerService')
class SessionOrganizerServiceClient extends $grpc.Client {
  static final _$listSessionOrganizers = $grpc.ClientMethod<$15.ListSessionOrganizersRequest, $15.ListSessionOrganizersResponse>(
      '/bst.v1.SessionOrganizerService/ListSessionOrganizers',
      ($15.ListSessionOrganizersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionOrganizersResponse.fromBuffer(value));
  static final _$addSessionOrganizer = $grpc.ClientMethod<$15.AddSessionOrganizerRequest, $15.AddSessionOrganizerResponse>(
      '/bst.v1.SessionOrganizerService/AddSessionOrganizer',
      ($15.AddSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionOrganizerResponse.fromBuffer(value));
  static final _$deleteSessionOrganizer = $grpc.ClientMethod<$15.DeleteSessionOrganizerRequest, $15.DeleteSessionOrganizerResponse>(
      '/bst.v1.SessionOrganizerService/DeleteSessionOrganizer',
      ($15.DeleteSessionOrganizerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSessionOrganizerResponse.fromBuffer(value));

  SessionOrganizerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.ListSessionOrganizersResponse> listSessionOrganizers($15.ListSessionOrganizersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionOrganizers, request, options: options);
  }

  $grpc.ResponseFuture<$15.AddSessionOrganizerResponse> addSessionOrganizer($15.AddSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionOrganizer, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSessionOrganizerResponse> deleteSessionOrganizer($15.DeleteSessionOrganizerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionOrganizer, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionOrganizerService')
abstract class SessionOrganizerServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionOrganizerService';

  SessionOrganizerServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.ListSessionOrganizersRequest, $15.ListSessionOrganizersResponse>(
        'ListSessionOrganizers',
        listSessionOrganizers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionOrganizersRequest.fromBuffer(value),
        ($15.ListSessionOrganizersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AddSessionOrganizerRequest, $15.AddSessionOrganizerResponse>(
        'AddSessionOrganizer',
        addSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionOrganizerRequest.fromBuffer(value),
        ($15.AddSessionOrganizerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSessionOrganizerRequest, $15.DeleteSessionOrganizerResponse>(
        'DeleteSessionOrganizer',
        deleteSessionOrganizer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSessionOrganizerRequest.fromBuffer(value),
        ($15.DeleteSessionOrganizerResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.ListSessionOrganizersResponse> listSessionOrganizers_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionOrganizersRequest> request) async {
    return listSessionOrganizers(call, await request);
  }

  $async.Future<$15.AddSessionOrganizerResponse> addSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionOrganizerRequest> request) async {
    return addSessionOrganizer(call, await request);
  }

  $async.Future<$15.DeleteSessionOrganizerResponse> deleteSessionOrganizer_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSessionOrganizerRequest> request) async {
    return deleteSessionOrganizer(call, await request);
  }

  $async.Future<$15.ListSessionOrganizersResponse> listSessionOrganizers($grpc.ServiceCall call, $15.ListSessionOrganizersRequest request);
  $async.Future<$15.AddSessionOrganizerResponse> addSessionOrganizer($grpc.ServiceCall call, $15.AddSessionOrganizerRequest request);
  $async.Future<$15.DeleteSessionOrganizerResponse> deleteSessionOrganizer($grpc.ServiceCall call, $15.DeleteSessionOrganizerRequest request);
}
