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

import 'session.pb.dart' as $0;

export 'session.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionService')
class SessionServiceClient extends $grpc.Client {
  static final _$createSession = $grpc.ClientMethod<$0.CreateSessionRequest, $0.CreateSessionResponse>(
      '/bst.v1.SessionService/CreateSession',
      ($0.CreateSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateSessionResponse.fromBuffer(value));
  static final _$getSession = $grpc.ClientMethod<$0.GetSessionRequest, $0.GetSessionResponse>(
      '/bst.v1.SessionService/GetSession',
      ($0.GetSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSessionResponse.fromBuffer(value));
  static final _$listSessions = $grpc.ClientMethod<$0.ListSessionsRequest, $0.ListSessionsResponse>(
      '/bst.v1.SessionService/ListSessions',
      ($0.ListSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListSessionsResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateSessionResponse> createSession($0.CreateSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSessionResponse> getSession($0.GetSessionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListSessionsResponse> listSessions($0.ListSessionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessions, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionService')
abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateSessionRequest, $0.CreateSessionResponse>(
        'CreateSession',
        createSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateSessionRequest.fromBuffer(value),
        ($0.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSessionRequest, $0.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSessionRequest.fromBuffer(value),
        ($0.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListSessionsRequest, $0.ListSessionsResponse>(
        'ListSessions',
        listSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListSessionsRequest.fromBuffer(value),
        ($0.ListSessionsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateSessionResponse> createSession_Pre($grpc.ServiceCall call, $async.Future<$0.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$0.GetSessionResponse> getSession_Pre($grpc.ServiceCall call, $async.Future<$0.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$0.ListSessionsResponse> listSessions_Pre($grpc.ServiceCall call, $async.Future<$0.ListSessionsRequest> request) async {
    return listSessions(call, await request);
  }

  $async.Future<$0.CreateSessionResponse> createSession($grpc.ServiceCall call, $0.CreateSessionRequest request);
  $async.Future<$0.GetSessionResponse> getSession($grpc.ServiceCall call, $0.GetSessionRequest request);
  $async.Future<$0.ListSessionsResponse> listSessions($grpc.ServiceCall call, $0.ListSessionsRequest request);
}
