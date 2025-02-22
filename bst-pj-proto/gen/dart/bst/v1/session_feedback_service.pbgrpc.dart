//
//  Generated code. Do not modify.
//  source: bst/v1/session_feedback_service.proto
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

import 'session_feedback_service.pb.dart' as $14;

export 'session_feedback_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionFeedbackService')
class SessionFeedbackServiceClient extends $grpc.Client {
  static final _$addSessionFeedback = $grpc.ClientMethod<$14.AddSessionFeedbackRequest, $14.AddSessionFeedbackResponse>(
      '/bst.v1.SessionFeedbackService/AddSessionFeedback',
      ($14.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$14.ListSessionFeedbacksRequest, $14.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionFeedbackService/ListSessionFeedbacks',
      ($14.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ListSessionFeedbacksResponse.fromBuffer(value));

  SessionFeedbackServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.AddSessionFeedbackResponse> addSessionFeedback($14.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$14.ListSessionFeedbacksResponse> listSessionFeedbacks($14.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionFeedbackService')
abstract class SessionFeedbackServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionFeedbackService';

  SessionFeedbackServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.AddSessionFeedbackRequest, $14.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AddSessionFeedbackRequest.fromBuffer(value),
        ($14.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ListSessionFeedbacksRequest, $14.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ListSessionFeedbacksRequest.fromBuffer(value),
        ($14.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$14.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$14.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$14.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$14.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $14.AddSessionFeedbackRequest request);
  $async.Future<$14.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $14.ListSessionFeedbacksRequest request);
}
