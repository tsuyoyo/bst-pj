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

import 'reaction_service.pb.dart' as $11;

export 'reaction_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ReactionService')
class ReactionServiceClient extends $grpc.Client {
  static final _$createReactionType = $grpc.ClientMethod<$11.CreateReactionTypeRequest, $11.CreateReactionTypeResponse>(
      '/bst.v1.ReactionService/CreateReactionType',
      ($11.CreateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateReactionTypeResponse.fromBuffer(value));
  static final _$getReactionType = $grpc.ClientMethod<$11.GetReactionTypeRequest, $11.GetReactionTypeResponse>(
      '/bst.v1.ReactionService/GetReactionType',
      ($11.GetReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetReactionTypeResponse.fromBuffer(value));
  static final _$listReactionTypes = $grpc.ClientMethod<$11.ListReactionTypesRequest, $11.ListReactionTypesResponse>(
      '/bst.v1.ReactionService/ListReactionTypes',
      ($11.ListReactionTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListReactionTypesResponse.fromBuffer(value));
  static final _$updateReactionType = $grpc.ClientMethod<$11.UpdateReactionTypeRequest, $11.UpdateReactionTypeResponse>(
      '/bst.v1.ReactionService/UpdateReactionType',
      ($11.UpdateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateReactionTypeResponse.fromBuffer(value));
  static final _$deleteReactionType = $grpc.ClientMethod<$11.DeleteReactionTypeRequest, $11.DeleteReactionTypeResponse>(
      '/bst.v1.ReactionService/DeleteReactionType',
      ($11.DeleteReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteReactionTypeResponse.fromBuffer(value));
  static final _$createReaction = $grpc.ClientMethod<$11.CreateReactionRequest, $11.CreateReactionResponse>(
      '/bst.v1.ReactionService/CreateReaction',
      ($11.CreateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateReactionResponse.fromBuffer(value));
  static final _$getReaction = $grpc.ClientMethod<$11.GetReactionRequest, $11.GetReactionResponse>(
      '/bst.v1.ReactionService/GetReaction',
      ($11.GetReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetReactionResponse.fromBuffer(value));
  static final _$listReactions = $grpc.ClientMethod<$11.ListReactionsRequest, $11.ListReactionsResponse>(
      '/bst.v1.ReactionService/ListReactions',
      ($11.ListReactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ListReactionsResponse.fromBuffer(value));
  static final _$updateReaction = $grpc.ClientMethod<$11.UpdateReactionRequest, $11.UpdateReactionResponse>(
      '/bst.v1.ReactionService/UpdateReaction',
      ($11.UpdateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateReactionResponse.fromBuffer(value));
  static final _$deleteReaction = $grpc.ClientMethod<$11.DeleteReactionRequest, $11.DeleteReactionResponse>(
      '/bst.v1.ReactionService/DeleteReaction',
      ($11.DeleteReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteReactionResponse.fromBuffer(value));

  ReactionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateReactionTypeResponse> createReactionType($11.CreateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetReactionTypeResponse> getReactionType($11.GetReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListReactionTypesResponse> listReactionTypes($11.ListReactionTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactionTypes, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateReactionTypeResponse> updateReactionType($11.UpdateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteReactionTypeResponse> deleteReactionType($11.DeleteReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateReactionResponse> createReaction($11.CreateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReaction, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetReactionResponse> getReaction($11.GetReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReaction, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListReactionsResponse> listReactions($11.ListReactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactions, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateReactionResponse> updateReaction($11.UpdateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReaction, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteReactionResponse> deleteReaction($11.DeleteReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ReactionService')
abstract class ReactionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ReactionService';

  ReactionServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateReactionTypeRequest, $11.CreateReactionTypeResponse>(
        'CreateReactionType',
        createReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateReactionTypeRequest.fromBuffer(value),
        ($11.CreateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetReactionTypeRequest, $11.GetReactionTypeResponse>(
        'GetReactionType',
        getReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetReactionTypeRequest.fromBuffer(value),
        ($11.GetReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListReactionTypesRequest, $11.ListReactionTypesResponse>(
        'ListReactionTypes',
        listReactionTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListReactionTypesRequest.fromBuffer(value),
        ($11.ListReactionTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateReactionTypeRequest, $11.UpdateReactionTypeResponse>(
        'UpdateReactionType',
        updateReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateReactionTypeRequest.fromBuffer(value),
        ($11.UpdateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteReactionTypeRequest, $11.DeleteReactionTypeResponse>(
        'DeleteReactionType',
        deleteReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteReactionTypeRequest.fromBuffer(value),
        ($11.DeleteReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateReactionRequest, $11.CreateReactionResponse>(
        'CreateReaction',
        createReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateReactionRequest.fromBuffer(value),
        ($11.CreateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetReactionRequest, $11.GetReactionResponse>(
        'GetReaction',
        getReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetReactionRequest.fromBuffer(value),
        ($11.GetReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ListReactionsRequest, $11.ListReactionsResponse>(
        'ListReactions',
        listReactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ListReactionsRequest.fromBuffer(value),
        ($11.ListReactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateReactionRequest, $11.UpdateReactionResponse>(
        'UpdateReaction',
        updateReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateReactionRequest.fromBuffer(value),
        ($11.UpdateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteReactionRequest, $11.DeleteReactionResponse>(
        'DeleteReaction',
        deleteReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteReactionRequest.fromBuffer(value),
        ($11.DeleteReactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateReactionTypeResponse> createReactionType_Pre($grpc.ServiceCall call, $async.Future<$11.CreateReactionTypeRequest> request) async {
    return createReactionType(call, await request);
  }

  $async.Future<$11.GetReactionTypeResponse> getReactionType_Pre($grpc.ServiceCall call, $async.Future<$11.GetReactionTypeRequest> request) async {
    return getReactionType(call, await request);
  }

  $async.Future<$11.ListReactionTypesResponse> listReactionTypes_Pre($grpc.ServiceCall call, $async.Future<$11.ListReactionTypesRequest> request) async {
    return listReactionTypes(call, await request);
  }

  $async.Future<$11.UpdateReactionTypeResponse> updateReactionType_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateReactionTypeRequest> request) async {
    return updateReactionType(call, await request);
  }

  $async.Future<$11.DeleteReactionTypeResponse> deleteReactionType_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteReactionTypeRequest> request) async {
    return deleteReactionType(call, await request);
  }

  $async.Future<$11.CreateReactionResponse> createReaction_Pre($grpc.ServiceCall call, $async.Future<$11.CreateReactionRequest> request) async {
    return createReaction(call, await request);
  }

  $async.Future<$11.GetReactionResponse> getReaction_Pre($grpc.ServiceCall call, $async.Future<$11.GetReactionRequest> request) async {
    return getReaction(call, await request);
  }

  $async.Future<$11.ListReactionsResponse> listReactions_Pre($grpc.ServiceCall call, $async.Future<$11.ListReactionsRequest> request) async {
    return listReactions(call, await request);
  }

  $async.Future<$11.UpdateReactionResponse> updateReaction_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateReactionRequest> request) async {
    return updateReaction(call, await request);
  }

  $async.Future<$11.DeleteReactionResponse> deleteReaction_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteReactionRequest> request) async {
    return deleteReaction(call, await request);
  }

  $async.Future<$11.CreateReactionTypeResponse> createReactionType($grpc.ServiceCall call, $11.CreateReactionTypeRequest request);
  $async.Future<$11.GetReactionTypeResponse> getReactionType($grpc.ServiceCall call, $11.GetReactionTypeRequest request);
  $async.Future<$11.ListReactionTypesResponse> listReactionTypes($grpc.ServiceCall call, $11.ListReactionTypesRequest request);
  $async.Future<$11.UpdateReactionTypeResponse> updateReactionType($grpc.ServiceCall call, $11.UpdateReactionTypeRequest request);
  $async.Future<$11.DeleteReactionTypeResponse> deleteReactionType($grpc.ServiceCall call, $11.DeleteReactionTypeRequest request);
  $async.Future<$11.CreateReactionResponse> createReaction($grpc.ServiceCall call, $11.CreateReactionRequest request);
  $async.Future<$11.GetReactionResponse> getReaction($grpc.ServiceCall call, $11.GetReactionRequest request);
  $async.Future<$11.ListReactionsResponse> listReactions($grpc.ServiceCall call, $11.ListReactionsRequest request);
  $async.Future<$11.UpdateReactionResponse> updateReaction($grpc.ServiceCall call, $11.UpdateReactionRequest request);
  $async.Future<$11.DeleteReactionResponse> deleteReaction($grpc.ServiceCall call, $11.DeleteReactionRequest request);
}
