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

import 'session_part_service.pb.dart' as $14;

export 'session_part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionPartService')
class SessionPartServiceClient extends $grpc.Client {
  static final _$listSessionParts = $grpc.ClientMethod<$14.ListSessionPartsRequest, $14.ListSessionPartsResponse>(
      '/bst.v1.SessionPartService/ListSessionParts',
      ($14.ListSessionPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionPartsResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$14.AddSessionPartRequest, $14.AddSessionPartResponse>(
      '/bst.v1.SessionPartService/AddSessionPart',
      ($14.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$14.UpdateSessionPartRequest, $14.UpdateSessionPartResponse>(
      '/bst.v1.SessionPartService/UpdateSessionPart',
      ($14.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$14.DeleteSessionPartRequest, $14.DeleteSessionPartResponse>(
      '/bst.v1.SessionPartService/DeleteSessionPart',
      ($14.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSessionPartResponse.fromBuffer(value));

  SessionPartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.ListSessionPartsResponse> listSessionParts($14.ListSessionPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParts, request, options: options);
  }

  $grpc.ResponseFuture<$14.AddSessionPartResponse> addSessionPart($14.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSessionPartResponse> updateSessionPart($14.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSessionPartResponse> deleteSessionPart($14.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionPartService')
abstract class SessionPartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionPartService';

  SessionPartServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.ListSessionPartsRequest, $14.ListSessionPartsResponse>(
        'ListSessionParts',
        listSessionParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionPartsRequest.fromBuffer(value),
        ($14.ListSessionPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AddSessionPartRequest, $14.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionPartRequest.fromBuffer(value),
        ($14.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSessionPartRequest, $14.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSessionPartRequest.fromBuffer(value),
        ($14.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSessionPartRequest, $14.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSessionPartRequest.fromBuffer(value),
        ($14.DeleteSessionPartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.ListSessionPartsResponse> listSessionParts_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionPartsRequest> request) async {
    return listSessionParts(call, await request);
  }

  $async.Future<$14.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$14.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$14.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$14.ListSessionPartsResponse> listSessionParts($grpc.ServiceCall call, $14.ListSessionPartsRequest request);
  $async.Future<$14.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $14.AddSessionPartRequest request);
  $async.Future<$14.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $14.UpdateSessionPartRequest request);
  $async.Future<$14.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $14.DeleteSessionPartRequest request);
}
