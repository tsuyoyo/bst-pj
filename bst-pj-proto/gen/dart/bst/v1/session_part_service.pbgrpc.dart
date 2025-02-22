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

import 'session_part_service.pb.dart' as $16;

export 'session_part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionPartService')
class SessionPartServiceClient extends $grpc.Client {
  static final _$listSessionParts = $grpc.ClientMethod<$16.ListSessionPartsRequest, $16.ListSessionPartsResponse>(
      '/bst.v1.SessionPartService/ListSessionParts',
      ($16.ListSessionPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ListSessionPartsResponse.fromBuffer(value));
  static final _$addSessionPart = $grpc.ClientMethod<$16.AddSessionPartRequest, $16.AddSessionPartResponse>(
      '/bst.v1.SessionPartService/AddSessionPart',
      ($16.AddSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.AddSessionPartResponse.fromBuffer(value));
  static final _$updateSessionPart = $grpc.ClientMethod<$16.UpdateSessionPartRequest, $16.UpdateSessionPartResponse>(
      '/bst.v1.SessionPartService/UpdateSessionPart',
      ($16.UpdateSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateSessionPartResponse.fromBuffer(value));
  static final _$deleteSessionPart = $grpc.ClientMethod<$16.DeleteSessionPartRequest, $16.DeleteSessionPartResponse>(
      '/bst.v1.SessionPartService/DeleteSessionPart',
      ($16.DeleteSessionPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteSessionPartResponse.fromBuffer(value));

  SessionPartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.ListSessionPartsResponse> listSessionParts($16.ListSessionPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionParts, request, options: options);
  }

  $grpc.ResponseFuture<$16.AddSessionPartResponse> addSessionPart($16.AddSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateSessionPartResponse> updateSessionPart($16.UpdateSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionPart, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteSessionPartResponse> deleteSessionPart($16.DeleteSessionPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSessionPart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionPartService')
abstract class SessionPartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionPartService';

  SessionPartServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.ListSessionPartsRequest, $16.ListSessionPartsResponse>(
        'ListSessionParts',
        listSessionParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ListSessionPartsRequest.fromBuffer(value),
        ($16.ListSessionPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.AddSessionPartRequest, $16.AddSessionPartResponse>(
        'AddSessionPart',
        addSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.AddSessionPartRequest.fromBuffer(value),
        ($16.AddSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateSessionPartRequest, $16.UpdateSessionPartResponse>(
        'UpdateSessionPart',
        updateSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateSessionPartRequest.fromBuffer(value),
        ($16.UpdateSessionPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteSessionPartRequest, $16.DeleteSessionPartResponse>(
        'DeleteSessionPart',
        deleteSessionPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteSessionPartRequest.fromBuffer(value),
        ($16.DeleteSessionPartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.ListSessionPartsResponse> listSessionParts_Pre($grpc.ServiceCall call, $async.Future<$16.ListSessionPartsRequest> request) async {
    return listSessionParts(call, await request);
  }

  $async.Future<$16.AddSessionPartResponse> addSessionPart_Pre($grpc.ServiceCall call, $async.Future<$16.AddSessionPartRequest> request) async {
    return addSessionPart(call, await request);
  }

  $async.Future<$16.UpdateSessionPartResponse> updateSessionPart_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateSessionPartRequest> request) async {
    return updateSessionPart(call, await request);
  }

  $async.Future<$16.DeleteSessionPartResponse> deleteSessionPart_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteSessionPartRequest> request) async {
    return deleteSessionPart(call, await request);
  }

  $async.Future<$16.ListSessionPartsResponse> listSessionParts($grpc.ServiceCall call, $16.ListSessionPartsRequest request);
  $async.Future<$16.AddSessionPartResponse> addSessionPart($grpc.ServiceCall call, $16.AddSessionPartRequest request);
  $async.Future<$16.UpdateSessionPartResponse> updateSessionPart($grpc.ServiceCall call, $16.UpdateSessionPartRequest request);
  $async.Future<$16.DeleteSessionPartResponse> deleteSessionPart($grpc.ServiceCall call, $16.DeleteSessionPartRequest request);
}
