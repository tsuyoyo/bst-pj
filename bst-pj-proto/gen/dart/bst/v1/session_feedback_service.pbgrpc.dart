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

import 'session_feedback_service.pb.dart' as $15;

export 'session_feedback_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.SessionFeedbackService')
class SessionFeedbackServiceClient extends $grpc.Client {
  static final _$addSessionFeedback = $grpc.ClientMethod<$15.AddSessionFeedbackRequest, $15.AddSessionFeedbackResponse>(
      '/bst.v1.SessionFeedbackService/AddSessionFeedback',
      ($15.AddSessionFeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AddSessionFeedbackResponse.fromBuffer(value));
  static final _$listSessionFeedbacks = $grpc.ClientMethod<$15.ListSessionFeedbacksRequest, $15.ListSessionFeedbacksResponse>(
      '/bst.v1.SessionFeedbackService/ListSessionFeedbacks',
      ($15.ListSessionFeedbacksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ListSessionFeedbacksResponse.fromBuffer(value));

  SessionFeedbackServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.AddSessionFeedbackResponse> addSessionFeedback($15.AddSessionFeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSessionFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$15.ListSessionFeedbacksResponse> listSessionFeedbacks($15.ListSessionFeedbacksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessionFeedbacks, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.SessionFeedbackService')
abstract class SessionFeedbackServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.SessionFeedbackService';

  SessionFeedbackServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.AddSessionFeedbackRequest, $15.AddSessionFeedbackResponse>(
        'AddSessionFeedback',
        addSessionFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AddSessionFeedbackRequest.fromBuffer(value),
        ($15.AddSessionFeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ListSessionFeedbacksRequest, $15.ListSessionFeedbacksResponse>(
        'ListSessionFeedbacks',
        listSessionFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ListSessionFeedbacksRequest.fromBuffer(value),
        ($15.ListSessionFeedbacksResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.AddSessionFeedbackResponse> addSessionFeedback_Pre($grpc.ServiceCall call, $async.Future<$15.AddSessionFeedbackRequest> request) async {
    return addSessionFeedback(call, await request);
  }

  $async.Future<$15.ListSessionFeedbacksResponse> listSessionFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$15.ListSessionFeedbacksRequest> request) async {
    return listSessionFeedbacks(call, await request);
  }

  $async.Future<$15.AddSessionFeedbackResponse> addSessionFeedback($grpc.ServiceCall call, $15.AddSessionFeedbackRequest request);
  $async.Future<$15.ListSessionFeedbacksResponse> listSessionFeedbacks($grpc.ServiceCall call, $15.ListSessionFeedbacksRequest request);
}
