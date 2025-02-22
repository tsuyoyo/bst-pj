//
//  Generated code. Do not modify.
//  source: bst/v1/session_titmetable_service.proto
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

import 'session_titmetable_service.pb.dart' as $21;

export 'session_titmetable_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionTimetableService')
class SessionTimetableServiceClient extends $grpc.Client {
  static final _$getSessionTimetable = $grpc.ClientMethod<$21.GetSessionTimetableRequest, $21.GetSessionTimetableResponse>(
      '/bst.v1.SessionTimetableService/GetSessionTimetable',
      ($21.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$21.UpdateSessionTimetableRequest, $21.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionTimetableService/UpdateSessionTimetable',
      ($21.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$21.GetOptimizedTimetableRequest, $21.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionTimetableService/GetOptimizedTimetable',
      ($21.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$21.GetTimetableProgressRequest, $21.GetTimetableProgressResponse>(
      '/bst.v1.SessionTimetableService/GetTimetableProgress',
      ($21.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$21.UpdateTimetableProgressRequest, $21.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionTimetableService/UpdateTimetableProgress',
      ($21.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $21.UpdateTimetableProgressResponse.fromBuffer(value));

  SessionTimetableServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$21.GetSessionTimetableResponse> getSessionTimetable($21.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$21.UpdateSessionTimetableResponse> updateSessionTimetable($21.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$21.GetOptimizedTimetableResponse> getOptimizedTimetable($21.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$21.GetTimetableProgressResponse> getTimetableProgress($21.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$21.UpdateTimetableProgressResponse> updateTimetableProgress($21.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionTimetableService')
abstract class SessionTimetableServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionTimetableService';

  SessionTimetableServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.GetSessionTimetableRequest, $21.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.GetSessionTimetableRequest.fromBuffer(value),
        ($21.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.UpdateSessionTimetableRequest, $21.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.UpdateSessionTimetableRequest.fromBuffer(value),
        ($21.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.GetOptimizedTimetableRequest, $21.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.GetOptimizedTimetableRequest.fromBuffer(value),
        ($21.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.GetTimetableProgressRequest, $21.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.GetTimetableProgressRequest.fromBuffer(value),
        ($21.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$21.UpdateTimetableProgressRequest, $21.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.UpdateTimetableProgressRequest.fromBuffer(value),
        ($21.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
  }

  $async.Future<$21.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$21.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$21.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$21.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$21.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$21.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$21.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$21.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$21.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$21.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$21.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $21.GetSessionTimetableRequest request);
  $async.Future<$21.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $21.UpdateSessionTimetableRequest request);
  $async.Future<$21.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $21.GetOptimizedTimetableRequest request);
  $async.Future<$21.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $21.GetTimetableProgressRequest request);
  $async.Future<$21.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $21.UpdateTimetableProgressRequest request);
}
