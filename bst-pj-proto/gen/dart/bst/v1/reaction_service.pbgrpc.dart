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

import 'reaction_service.pb.dart' as $10;

export 'reaction_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ReactionService')
class ReactionServiceClient extends $grpc.Client {
  static final _$createReactionType = $grpc.ClientMethod<$10.CreateReactionTypeRequest, $10.CreateReactionTypeResponse>(
      '/bst.v1.ReactionService/CreateReactionType',
      ($10.CreateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateReactionTypeResponse.fromBuffer(value));
  static final _$getReactionType = $grpc.ClientMethod<$10.GetReactionTypeRequest, $10.GetReactionTypeResponse>(
      '/bst.v1.ReactionService/GetReactionType',
      ($10.GetReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetReactionTypeResponse.fromBuffer(value));
  static final _$listReactionTypes = $grpc.ClientMethod<$10.ListReactionTypesRequest, $10.ListReactionTypesResponse>(
      '/bst.v1.ReactionService/ListReactionTypes',
      ($10.ListReactionTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ListReactionTypesResponse.fromBuffer(value));
  static final _$updateReactionType = $grpc.ClientMethod<$10.UpdateReactionTypeRequest, $10.UpdateReactionTypeResponse>(
      '/bst.v1.ReactionService/UpdateReactionType',
      ($10.UpdateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateReactionTypeResponse.fromBuffer(value));
  static final _$deleteReactionType = $grpc.ClientMethod<$10.DeleteReactionTypeRequest, $10.DeleteReactionTypeResponse>(
      '/bst.v1.ReactionService/DeleteReactionType',
      ($10.DeleteReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteReactionTypeResponse.fromBuffer(value));
  static final _$createReaction = $grpc.ClientMethod<$10.CreateReactionRequest, $10.CreateReactionResponse>(
      '/bst.v1.ReactionService/CreateReaction',
      ($10.CreateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateReactionResponse.fromBuffer(value));
  static final _$getReaction = $grpc.ClientMethod<$10.GetReactionRequest, $10.GetReactionResponse>(
      '/bst.v1.ReactionService/GetReaction',
      ($10.GetReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetReactionResponse.fromBuffer(value));
  static final _$listReactions = $grpc.ClientMethod<$10.ListReactionsRequest, $10.ListReactionsResponse>(
      '/bst.v1.ReactionService/ListReactions',
      ($10.ListReactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ListReactionsResponse.fromBuffer(value));
  static final _$updateReaction = $grpc.ClientMethod<$10.UpdateReactionRequest, $10.UpdateReactionResponse>(
      '/bst.v1.ReactionService/UpdateReaction',
      ($10.UpdateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateReactionResponse.fromBuffer(value));
  static final _$deleteReaction = $grpc.ClientMethod<$10.DeleteReactionRequest, $10.DeleteReactionResponse>(
      '/bst.v1.ReactionService/DeleteReaction',
      ($10.DeleteReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteReactionResponse.fromBuffer(value));

  ReactionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateReactionTypeResponse> createReactionType($10.CreateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetReactionTypeResponse> getReactionType($10.GetReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$10.ListReactionTypesResponse> listReactionTypes($10.ListReactionTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactionTypes, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateReactionTypeResponse> updateReactionType($10.UpdateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteReactionTypeResponse> deleteReactionType($10.DeleteReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$10.CreateReactionResponse> createReaction($10.CreateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReaction, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetReactionResponse> getReaction($10.GetReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReaction, request, options: options);
  }

  $grpc.ResponseFuture<$10.ListReactionsResponse> listReactions($10.ListReactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactions, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateReactionResponse> updateReaction($10.UpdateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReaction, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteReactionResponse> deleteReaction($10.DeleteReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ReactionService')
abstract class ReactionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ReactionService';

  ReactionServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateReactionTypeRequest, $10.CreateReactionTypeResponse>(
        'CreateReactionType',
        createReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateReactionTypeRequest.fromBuffer(value),
        ($10.CreateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetReactionTypeRequest, $10.GetReactionTypeResponse>(
        'GetReactionType',
        getReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetReactionTypeRequest.fromBuffer(value),
        ($10.GetReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListReactionTypesRequest, $10.ListReactionTypesResponse>(
        'ListReactionTypes',
        listReactionTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ListReactionTypesRequest.fromBuffer(value),
        ($10.ListReactionTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateReactionTypeRequest, $10.UpdateReactionTypeResponse>(
        'UpdateReactionType',
        updateReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateReactionTypeRequest.fromBuffer(value),
        ($10.UpdateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteReactionTypeRequest, $10.DeleteReactionTypeResponse>(
        'DeleteReactionType',
        deleteReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteReactionTypeRequest.fromBuffer(value),
        ($10.DeleteReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.CreateReactionRequest, $10.CreateReactionResponse>(
        'CreateReaction',
        createReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateReactionRequest.fromBuffer(value),
        ($10.CreateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetReactionRequest, $10.GetReactionResponse>(
        'GetReaction',
        getReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetReactionRequest.fromBuffer(value),
        ($10.GetReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ListReactionsRequest, $10.ListReactionsResponse>(
        'ListReactions',
        listReactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ListReactionsRequest.fromBuffer(value),
        ($10.ListReactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateReactionRequest, $10.UpdateReactionResponse>(
        'UpdateReaction',
        updateReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateReactionRequest.fromBuffer(value),
        ($10.UpdateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteReactionRequest, $10.DeleteReactionResponse>(
        'DeleteReaction',
        deleteReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteReactionRequest.fromBuffer(value),
        ($10.DeleteReactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateReactionTypeResponse> createReactionType_Pre($grpc.ServiceCall call, $async.Future<$10.CreateReactionTypeRequest> request) async {
    return createReactionType(call, await request);
  }

  $async.Future<$10.GetReactionTypeResponse> getReactionType_Pre($grpc.ServiceCall call, $async.Future<$10.GetReactionTypeRequest> request) async {
    return getReactionType(call, await request);
  }

  $async.Future<$10.ListReactionTypesResponse> listReactionTypes_Pre($grpc.ServiceCall call, $async.Future<$10.ListReactionTypesRequest> request) async {
    return listReactionTypes(call, await request);
  }

  $async.Future<$10.UpdateReactionTypeResponse> updateReactionType_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateReactionTypeRequest> request) async {
    return updateReactionType(call, await request);
  }

  $async.Future<$10.DeleteReactionTypeResponse> deleteReactionType_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteReactionTypeRequest> request) async {
    return deleteReactionType(call, await request);
  }

  $async.Future<$10.CreateReactionResponse> createReaction_Pre($grpc.ServiceCall call, $async.Future<$10.CreateReactionRequest> request) async {
    return createReaction(call, await request);
  }

  $async.Future<$10.GetReactionResponse> getReaction_Pre($grpc.ServiceCall call, $async.Future<$10.GetReactionRequest> request) async {
    return getReaction(call, await request);
  }

  $async.Future<$10.ListReactionsResponse> listReactions_Pre($grpc.ServiceCall call, $async.Future<$10.ListReactionsRequest> request) async {
    return listReactions(call, await request);
  }

  $async.Future<$10.UpdateReactionResponse> updateReaction_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateReactionRequest> request) async {
    return updateReaction(call, await request);
  }

  $async.Future<$10.DeleteReactionResponse> deleteReaction_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteReactionRequest> request) async {
    return deleteReaction(call, await request);
  }

  $async.Future<$10.CreateReactionTypeResponse> createReactionType($grpc.ServiceCall call, $10.CreateReactionTypeRequest request);
  $async.Future<$10.GetReactionTypeResponse> getReactionType($grpc.ServiceCall call, $10.GetReactionTypeRequest request);
  $async.Future<$10.ListReactionTypesResponse> listReactionTypes($grpc.ServiceCall call, $10.ListReactionTypesRequest request);
  $async.Future<$10.UpdateReactionTypeResponse> updateReactionType($grpc.ServiceCall call, $10.UpdateReactionTypeRequest request);
  $async.Future<$10.DeleteReactionTypeResponse> deleteReactionType($grpc.ServiceCall call, $10.DeleteReactionTypeRequest request);
  $async.Future<$10.CreateReactionResponse> createReaction($grpc.ServiceCall call, $10.CreateReactionRequest request);
  $async.Future<$10.GetReactionResponse> getReaction($grpc.ServiceCall call, $10.GetReactionRequest request);
  $async.Future<$10.ListReactionsResponse> listReactions($grpc.ServiceCall call, $10.ListReactionsRequest request);
  $async.Future<$10.UpdateReactionResponse> updateReaction($grpc.ServiceCall call, $10.UpdateReactionRequest request);
  $async.Future<$10.DeleteReactionResponse> deleteReaction($grpc.ServiceCall call, $10.DeleteReactionRequest request);
}
