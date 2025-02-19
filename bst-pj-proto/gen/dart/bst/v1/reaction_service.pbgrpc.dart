//
//  Generated code. Do not modify.
//  source: bst/v1/reaction_service.proto
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

import 'reaction_service.pb.dart' as $12;

export 'reaction_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ReactionService')
class ReactionServiceClient extends $grpc.Client {
  static final _$createReactionType = $grpc.ClientMethod<$12.CreateReactionTypeRequest, $12.CreateReactionTypeResponse>(
      '/bst.v1.ReactionService/CreateReactionType',
      ($12.CreateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateReactionTypeResponse.fromBuffer(value));
  static final _$getReactionType = $grpc.ClientMethod<$12.GetReactionTypeRequest, $12.GetReactionTypeResponse>(
      '/bst.v1.ReactionService/GetReactionType',
      ($12.GetReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetReactionTypeResponse.fromBuffer(value));
  static final _$listReactionTypes = $grpc.ClientMethod<$12.ListReactionTypesRequest, $12.ListReactionTypesResponse>(
      '/bst.v1.ReactionService/ListReactionTypes',
      ($12.ListReactionTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListReactionTypesResponse.fromBuffer(value));
  static final _$updateReactionType = $grpc.ClientMethod<$12.UpdateReactionTypeRequest, $12.UpdateReactionTypeResponse>(
      '/bst.v1.ReactionService/UpdateReactionType',
      ($12.UpdateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateReactionTypeResponse.fromBuffer(value));
  static final _$deleteReactionType = $grpc.ClientMethod<$12.DeleteReactionTypeRequest, $12.DeleteReactionTypeResponse>(
      '/bst.v1.ReactionService/DeleteReactionType',
      ($12.DeleteReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteReactionTypeResponse.fromBuffer(value));
  static final _$createReaction = $grpc.ClientMethod<$12.CreateReactionRequest, $12.CreateReactionResponse>(
      '/bst.v1.ReactionService/CreateReaction',
      ($12.CreateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateReactionResponse.fromBuffer(value));
  static final _$getReaction = $grpc.ClientMethod<$12.GetReactionRequest, $12.GetReactionResponse>(
      '/bst.v1.ReactionService/GetReaction',
      ($12.GetReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetReactionResponse.fromBuffer(value));
  static final _$listReactions = $grpc.ClientMethod<$12.ListReactionsRequest, $12.ListReactionsResponse>(
      '/bst.v1.ReactionService/ListReactions',
      ($12.ListReactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ListReactionsResponse.fromBuffer(value));
  static final _$updateReaction = $grpc.ClientMethod<$12.UpdateReactionRequest, $12.UpdateReactionResponse>(
      '/bst.v1.ReactionService/UpdateReaction',
      ($12.UpdateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateReactionResponse.fromBuffer(value));
  static final _$deleteReaction = $grpc.ClientMethod<$12.DeleteReactionRequest, $12.DeleteReactionResponse>(
      '/bst.v1.ReactionService/DeleteReaction',
      ($12.DeleteReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteReactionResponse.fromBuffer(value));

  ReactionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateReactionTypeResponse> createReactionType($12.CreateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetReactionTypeResponse> getReactionType($12.GetReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListReactionTypesResponse> listReactionTypes($12.ListReactionTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactionTypes, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateReactionTypeResponse> updateReactionType($12.UpdateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteReactionTypeResponse> deleteReactionType($12.DeleteReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$12.CreateReactionResponse> createReaction($12.CreateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReaction, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetReactionResponse> getReaction($12.GetReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReaction, request, options: options);
  }

  $grpc.ResponseFuture<$12.ListReactionsResponse> listReactions($12.ListReactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactions, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateReactionResponse> updateReaction($12.UpdateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReaction, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteReactionResponse> deleteReaction($12.DeleteReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ReactionService')
abstract class ReactionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ReactionService';

  ReactionServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateReactionTypeRequest, $12.CreateReactionTypeResponse>(
        'CreateReactionType',
        createReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateReactionTypeRequest.fromBuffer(value),
        ($12.CreateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetReactionTypeRequest, $12.GetReactionTypeResponse>(
        'GetReactionType',
        getReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetReactionTypeRequest.fromBuffer(value),
        ($12.GetReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListReactionTypesRequest, $12.ListReactionTypesResponse>(
        'ListReactionTypes',
        listReactionTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListReactionTypesRequest.fromBuffer(value),
        ($12.ListReactionTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateReactionTypeRequest, $12.UpdateReactionTypeResponse>(
        'UpdateReactionType',
        updateReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateReactionTypeRequest.fromBuffer(value),
        ($12.UpdateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteReactionTypeRequest, $12.DeleteReactionTypeResponse>(
        'DeleteReactionType',
        deleteReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteReactionTypeRequest.fromBuffer(value),
        ($12.DeleteReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CreateReactionRequest, $12.CreateReactionResponse>(
        'CreateReaction',
        createReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateReactionRequest.fromBuffer(value),
        ($12.CreateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetReactionRequest, $12.GetReactionResponse>(
        'GetReaction',
        getReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetReactionRequest.fromBuffer(value),
        ($12.GetReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ListReactionsRequest, $12.ListReactionsResponse>(
        'ListReactions',
        listReactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ListReactionsRequest.fromBuffer(value),
        ($12.ListReactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateReactionRequest, $12.UpdateReactionResponse>(
        'UpdateReaction',
        updateReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateReactionRequest.fromBuffer(value),
        ($12.UpdateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteReactionRequest, $12.DeleteReactionResponse>(
        'DeleteReaction',
        deleteReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteReactionRequest.fromBuffer(value),
        ($12.DeleteReactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateReactionTypeResponse> createReactionType_Pre($grpc.ServiceCall call, $async.Future<$12.CreateReactionTypeRequest> request) async {
    return createReactionType(call, await request);
  }

  $async.Future<$12.GetReactionTypeResponse> getReactionType_Pre($grpc.ServiceCall call, $async.Future<$12.GetReactionTypeRequest> request) async {
    return getReactionType(call, await request);
  }

  $async.Future<$12.ListReactionTypesResponse> listReactionTypes_Pre($grpc.ServiceCall call, $async.Future<$12.ListReactionTypesRequest> request) async {
    return listReactionTypes(call, await request);
  }

  $async.Future<$12.UpdateReactionTypeResponse> updateReactionType_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateReactionTypeRequest> request) async {
    return updateReactionType(call, await request);
  }

  $async.Future<$12.DeleteReactionTypeResponse> deleteReactionType_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteReactionTypeRequest> request) async {
    return deleteReactionType(call, await request);
  }

  $async.Future<$12.CreateReactionResponse> createReaction_Pre($grpc.ServiceCall call, $async.Future<$12.CreateReactionRequest> request) async {
    return createReaction(call, await request);
  }

  $async.Future<$12.GetReactionResponse> getReaction_Pre($grpc.ServiceCall call, $async.Future<$12.GetReactionRequest> request) async {
    return getReaction(call, await request);
  }

  $async.Future<$12.ListReactionsResponse> listReactions_Pre($grpc.ServiceCall call, $async.Future<$12.ListReactionsRequest> request) async {
    return listReactions(call, await request);
  }

  $async.Future<$12.UpdateReactionResponse> updateReaction_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateReactionRequest> request) async {
    return updateReaction(call, await request);
  }

  $async.Future<$12.DeleteReactionResponse> deleteReaction_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteReactionRequest> request) async {
    return deleteReaction(call, await request);
  }

  $async.Future<$12.CreateReactionTypeResponse> createReactionType($grpc.ServiceCall call, $12.CreateReactionTypeRequest request);
  $async.Future<$12.GetReactionTypeResponse> getReactionType($grpc.ServiceCall call, $12.GetReactionTypeRequest request);
  $async.Future<$12.ListReactionTypesResponse> listReactionTypes($grpc.ServiceCall call, $12.ListReactionTypesRequest request);
  $async.Future<$12.UpdateReactionTypeResponse> updateReactionType($grpc.ServiceCall call, $12.UpdateReactionTypeRequest request);
  $async.Future<$12.DeleteReactionTypeResponse> deleteReactionType($grpc.ServiceCall call, $12.DeleteReactionTypeRequest request);
  $async.Future<$12.CreateReactionResponse> createReaction($grpc.ServiceCall call, $12.CreateReactionRequest request);
  $async.Future<$12.GetReactionResponse> getReaction($grpc.ServiceCall call, $12.GetReactionRequest request);
  $async.Future<$12.ListReactionsResponse> listReactions($grpc.ServiceCall call, $12.ListReactionsRequest request);
  $async.Future<$12.UpdateReactionResponse> updateReaction($grpc.ServiceCall call, $12.UpdateReactionRequest request);
  $async.Future<$12.DeleteReactionResponse> deleteReaction($grpc.ServiceCall call, $12.DeleteReactionRequest request);
}
