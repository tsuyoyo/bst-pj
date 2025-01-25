//
//  Generated code. Do not modify.
//  source: session.proto
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

import 'session.pb.dart' as $1;

export 'session.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$1.CreateSessionRequest, $1.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($1.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$1.GetSessionRequest, $1.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($1.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetSessionResponse.fromBuffer(value));
  static final _$listSessions = $grpc.ClientMethod<$1.ListSessionsRequest, $1.ListSessionsResponse>(
      '/bst.v1.SessionService/ListSessions',
      ($1.ListSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListSessionsResponse.fromBuffer(value));
  static final _$updateSession = $grpc.ClientMethod<$1.UpdateSessionRequest, $1.UpdateSessionResponse>(
      '/bst.v1.SessionService/UpdateSession',
      ($1.UpdateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateSessionResponse.fromBuffer(value));
  static final _$deleteSession = $grpc.ClientMethod<$1.DeleteSessionRequest, $1.DeleteSessionResponse>(
      '/bst.v1.SessionService/DeleteSession',
      ($1.DeleteSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteSessionResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateSessionResponse> createSession($1.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetSessionResponse> getSession($1.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListSessionsResponse> listSessions($1.ListSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessions, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateSessionResponse> updateSession($1.UpdateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteSessionResponse> deleteSession($1.DeleteSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSession, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateSessionRequest, $1.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateSessionRequest.fromBuffer(value),
        ($1.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetSessionRequest, $1.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetSessionRequest.fromBuffer(value),
        ($1.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListSessionsRequest, $1.ListSessionsResponse>(
        'ListSessions',
        listSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListSessionsRequest.fromBuffer(value),
        ($1.ListSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateSessionRequest, $1.UpdateSessionResponse>(
        'UpdateSession',
        updateSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateSessionRequest.fromBuffer(value),
        ($1.UpdateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteSessionRequest, $1.DeleteSessionResponse>(
        'DeleteSession',
        deleteSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteSessionRequest.fromBuffer(value),
        ($1.DeleteSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$1.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$1.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$1.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$1.ListSessionsResponse> listSessions_Pre($grpc.ServiceCall call, $async.Future<$1.ListSessionsRequest> request) async {
    return listSessions(call, await request);
  }

  $async.Future<$1.UpdateSessionResponse> updateSession_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$1.DeleteSessionResponse> deleteSession_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteSessionRequest> request) async {
    return deleteSession(call, await request);
  }

  $async.Future<$1.CreateSessionResponse> createSession($grpc.ServiceCall call, $1.CreateSessionRequest request);
  $async.Future<$1.GetSessionResponse> getSession($grpc.ServiceCall call, $1.GetSessionRequest request);
  $async.Future<$1.ListSessionsResponse> listSessions($grpc.ServiceCall call, $1.ListSessionsRequest request);
  $async.Future<$1.UpdateSessionResponse> updateSession($grpc.ServiceCall call, $1.UpdateSessionRequest request);
  $async.Future<$1.DeleteSessionResponse> deleteSession($grpc.ServiceCall call, $1.DeleteSessionRequest request);
}
