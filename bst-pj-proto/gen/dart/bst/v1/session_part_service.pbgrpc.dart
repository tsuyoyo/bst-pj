//
//  Generated code. Do not modify.
//  source: bst/v1/session_part_service.proto
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

import 'session_part_service.pb.dart' as $17;

export 'session_part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionPartService')
class SessionPartServiceClient extends $grpc.Client {
  static final _$listSessionParts = $grpc.ClientMethod<$17.ListSessionPartsRequest, $17.ListSessionPartsResponse>(
      '/bst.v1.SessionPartService/ListSessionParts',
      ($17.ListSessionPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ListSessionPartsResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$17.AddSessionPartRequest, $17.AddSessionPartResponse>(
      '/bst.v1.SessionPartService/AddSessionPart',
      ($17.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$17.UpdateSessionPartRequest, $17.UpdateSessionPartResponse>(
      '/bst.v1.SessionPartService/UpdateSessionPart',
      ($17.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$17.DeleteSessionPartRequest, $17.DeleteSessionPartResponse>(
      '/bst.v1.SessionPartService/DeleteSessionPart',
      ($17.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.DeleteSessionPartResponse.fromBuffer(value));

  SessionPartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.ListSessionPartsResponse> listSessionParts($17.ListSessionPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParts, request, options: options);
  }

  $grpc.ResponseFuture<$17.AddSessionPartResponse> addSessionPart($17.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateSessionPartResponse> updateSessionPart($17.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$17.DeleteSessionPartResponse> deleteSessionPart($17.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionPartService')
abstract class SessionPartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionPartService';

  SessionPartServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.ListSessionPartsRequest, $17.ListSessionPartsResponse>(
        'ListSessionParts',
        listSessionParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ListSessionPartsRequest.fromBuffer(value),
        ($17.ListSessionPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.AddSessionPartRequest, $17.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.AddSessionPartRequest.fromBuffer(value),
        ($17.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateSessionPartRequest, $17.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateSessionPartRequest.fromBuffer(value),
        ($17.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.DeleteSessionPartRequest, $17.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.DeleteSessionPartRequest.fromBuffer(value),
        ($17.DeleteSessionPartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.ListSessionPartsResponse> listSessionParts_Pre($grpc.ServiceCall call, $async.Future<$17.ListSessionPartsRequest> request) async {
    return listSessionParts(call, await request);
  }

  $async.Future<$17.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$17.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$17.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$17.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$17.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$17.ListSessionPartsResponse> listSessionParts($grpc.ServiceCall call, $17.ListSessionPartsRequest request);
  $async.Future<$17.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $17.AddSessionPartRequest request);
  $async.Future<$17.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $17.UpdateSessionPartRequest request);
  $async.Future<$17.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $17.DeleteSessionPartRequest request);
}
