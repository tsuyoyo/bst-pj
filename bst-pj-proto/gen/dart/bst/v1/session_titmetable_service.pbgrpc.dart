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

import 'session_titmetable_service.pb.dart' as $22;

export 'session_titmetable_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionTimetableService')
class SessionTimetableServiceClient extends $grpc.Client {
  static final _$getSessionTimetable = $grpc.ClientMethod<$22.GetSessionTimetableRequest, $22.GetSessionTimetableResponse>(
      '/bst.v1.SessionTimetableService/GetSessionTimetable',
      ($22.GetSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetSessionTimetableResponse.fromBuffer(value));
  static final _$updateSessionTimetable = $grpc.ClientMethod<$22.UpdateSessionTimetableRequest, $22.UpdateSessionTimetableResponse>(
      '/bst.v1.SessionTimetableService/UpdateSessionTimetable',
      ($22.UpdateSessionTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.UpdateSessionTimetableResponse.fromBuffer(value));
  static final _$getOptimizedTimetable = $grpc.ClientMethod<$22.GetOptimizedTimetableRequest, $22.GetOptimizedTimetableResponse>(
      '/bst.v1.SessionTimetableService/GetOptimizedTimetable',
      ($22.GetOptimizedTimetableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetOptimizedTimetableResponse.fromBuffer(value));
  static final _$getTimetableProgress = $grpc.ClientMethod<$22.GetTimetableProgressRequest, $22.GetTimetableProgressResponse>(
      '/bst.v1.SessionTimetableService/GetTimetableProgress',
      ($22.GetTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.GetTimetableProgressResponse.fromBuffer(value));
  static final _$updateTimetableProgress = $grpc.ClientMethod<$22.UpdateTimetableProgressRequest, $22.UpdateTimetableProgressResponse>(
      '/bst.v1.SessionTimetableService/UpdateTimetableProgress',
      ($22.UpdateTimetableProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $22.UpdateTimetableProgressResponse.fromBuffer(value));

  SessionTimetableServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$22.GetSessionTimetableResponse> getSessionTimetable($22.GetSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$22.UpdateSessionTimetableResponse> updateSessionTimetable($22.UpdateSessionTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSessionTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$22.GetOptimizedTimetableResponse> getOptimizedTimetable($22.GetOptimizedTimetableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOptimizedTimetable, request, options: options);
  }

  $grpc.ResponseFuture<$22.GetTimetableProgressResponse> getTimetableProgress($22.GetTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimetableProgress, request, options: options);
  }

  $grpc.ResponseFuture<$22.UpdateTimetableProgressResponse> updateTimetableProgress($22.UpdateTimetableProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTimetableProgress, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionTimetableService')
abstract class SessionTimetableServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionTimetableService';

  SessionTimetableServiceBase() {
    $addMethod($grpc.ServiceMethod<$22.GetSessionTimetableRequest, $22.GetSessionTimetableResponse>(
        'GetSessionTimetable',
        getSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetSessionTimetableRequest.fromBuffer(value),
        ($22.GetSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.UpdateSessionTimetableRequest, $22.UpdateSessionTimetableResponse>(
        'UpdateSessionTimetable',
        updateSessionTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.UpdateSessionTimetableRequest.fromBuffer(value),
        ($22.UpdateSessionTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.GetOptimizedTimetableRequest, $22.GetOptimizedTimetableResponse>(
        'GetOptimizedTimetable',
        getOptimizedTimetable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetOptimizedTimetableRequest.fromBuffer(value),
        ($22.GetOptimizedTimetableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.GetTimetableProgressRequest, $22.GetTimetableProgressResponse>(
        'GetTimetableProgress',
        getTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.GetTimetableProgressRequest.fromBuffer(value),
        ($22.GetTimetableProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$22.UpdateTimetableProgressRequest, $22.UpdateTimetableProgressResponse>(
        'UpdateTimetableProgress',
        updateTimetableProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.UpdateTimetableProgressRequest.fromBuffer(value),
        ($22.UpdateTimetableProgressResponse value) => value.writeToBuffer()));
  }

  $async.Future<$22.GetSessionTimetableResponse> getSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$22.GetSessionTimetableRequest> request) async {
    return getSessionTimetable(call, await request);
  }

  $async.Future<$22.UpdateSessionTimetableResponse> updateSessionTimetable_Pre($grpc.ServiceCall call, $async.Future<$22.UpdateSessionTimetableRequest> request) async {
    return updateSessionTimetable(call, await request);
  }

  $async.Future<$22.GetOptimizedTimetableResponse> getOptimizedTimetable_Pre($grpc.ServiceCall call, $async.Future<$22.GetOptimizedTimetableRequest> request) async {
    return getOptimizedTimetable(call, await request);
  }

  $async.Future<$22.GetTimetableProgressResponse> getTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$22.GetTimetableProgressRequest> request) async {
    return getTimetableProgress(call, await request);
  }

  $async.Future<$22.UpdateTimetableProgressResponse> updateTimetableProgress_Pre($grpc.ServiceCall call, $async.Future<$22.UpdateTimetableProgressRequest> request) async {
    return updateTimetableProgress(call, await request);
  }

  $async.Future<$22.GetSessionTimetableResponse> getSessionTimetable($grpc.ServiceCall call, $22.GetSessionTimetableRequest request);
  $async.Future<$22.UpdateSessionTimetableResponse> updateSessionTimetable($grpc.ServiceCall call, $22.UpdateSessionTimetableRequest request);
  $async.Future<$22.GetOptimizedTimetableResponse> getOptimizedTimetable($grpc.ServiceCall call, $22.GetOptimizedTimetableRequest request);
  $async.Future<$22.GetTimetableProgressResponse> getTimetableProgress($grpc.ServiceCall call, $22.GetTimetableProgressRequest request);
  $async.Future<$22.UpdateTimetableProgressResponse> updateTimetableProgress($grpc.ServiceCall call, $22.UpdateTimetableProgressRequest request);
}
