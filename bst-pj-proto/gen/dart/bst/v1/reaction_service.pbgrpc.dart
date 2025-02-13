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

import 'reaction_service.pb.dart' as $7;

export 'reaction_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ReactionService')
class ReactionServiceClient extends $grpc.Client {
  static final _$createReactionType = $grpc.ClientMethod<$7.CreateReactionTypeRequest, $7.CreateReactionTypeResponse>(
      '/bst.v1.ReactionService/CreateReactionType',
      ($7.CreateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateReactionTypeResponse.fromBuffer(value));
  static final _$getReactionType = $grpc.ClientMethod<$7.GetReactionTypeRequest, $7.GetReactionTypeResponse>(
      '/bst.v1.ReactionService/GetReactionType',
      ($7.GetReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetReactionTypeResponse.fromBuffer(value));
  static final _$listReactionTypes = $grpc.ClientMethod<$7.ListReactionTypesRequest, $7.ListReactionTypesResponse>(
      '/bst.v1.ReactionService/ListReactionTypes',
      ($7.ListReactionTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListReactionTypesResponse.fromBuffer(value));
  static final _$updateReactionType = $grpc.ClientMethod<$7.UpdateReactionTypeRequest, $7.UpdateReactionTypeResponse>(
      '/bst.v1.ReactionService/UpdateReactionType',
      ($7.UpdateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateReactionTypeResponse.fromBuffer(value));
  static final _$deleteReactionType = $grpc.ClientMethod<$7.DeleteReactionTypeRequest, $7.DeleteReactionTypeResponse>(
      '/bst.v1.ReactionService/DeleteReactionType',
      ($7.DeleteReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteReactionTypeResponse.fromBuffer(value));
  static final _$createReaction = $grpc.ClientMethod<$7.CreateReactionRequest, $7.CreateReactionResponse>(
      '/bst.v1.ReactionService/CreateReaction',
      ($7.CreateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateReactionResponse.fromBuffer(value));
  static final _$getReaction = $grpc.ClientMethod<$7.GetReactionRequest, $7.GetReactionResponse>(
      '/bst.v1.ReactionService/GetReaction',
      ($7.GetReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetReactionResponse.fromBuffer(value));
  static final _$listReactions = $grpc.ClientMethod<$7.ListReactionsRequest, $7.ListReactionsResponse>(
      '/bst.v1.ReactionService/ListReactions',
      ($7.ListReactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListReactionsResponse.fromBuffer(value));
  static final _$updateReaction = $grpc.ClientMethod<$7.UpdateReactionRequest, $7.UpdateReactionResponse>(
      '/bst.v1.ReactionService/UpdateReaction',
      ($7.UpdateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateReactionResponse.fromBuffer(value));
  static final _$deleteReaction = $grpc.ClientMethod<$7.DeleteReactionRequest, $7.DeleteReactionResponse>(
      '/bst.v1.ReactionService/DeleteReaction',
      ($7.DeleteReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteReactionResponse.fromBuffer(value));

  ReactionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateReactionTypeResponse> createReactionType($7.CreateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetReactionTypeResponse> getReactionType($7.GetReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListReactionTypesResponse> listReactionTypes($7.ListReactionTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactionTypes, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateReactionTypeResponse> updateReactionType($7.UpdateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteReactionTypeResponse> deleteReactionType($7.DeleteReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateReactionResponse> createReaction($7.CreateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReaction, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetReactionResponse> getReaction($7.GetReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReaction, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListReactionsResponse> listReactions($7.ListReactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactions, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateReactionResponse> updateReaction($7.UpdateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReaction, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteReactionResponse> deleteReaction($7.DeleteReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ReactionService')
abstract class ReactionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ReactionService';

  ReactionServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateReactionTypeRequest, $7.CreateReactionTypeResponse>(
        'CreateReactionType',
        createReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateReactionTypeRequest.fromBuffer(value),
        ($7.CreateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetReactionTypeRequest, $7.GetReactionTypeResponse>(
        'GetReactionType',
        getReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetReactionTypeRequest.fromBuffer(value),
        ($7.GetReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListReactionTypesRequest, $7.ListReactionTypesResponse>(
        'ListReactionTypes',
        listReactionTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListReactionTypesRequest.fromBuffer(value),
        ($7.ListReactionTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateReactionTypeRequest, $7.UpdateReactionTypeResponse>(
        'UpdateReactionType',
        updateReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateReactionTypeRequest.fromBuffer(value),
        ($7.UpdateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteReactionTypeRequest, $7.DeleteReactionTypeResponse>(
        'DeleteReactionType',
        deleteReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteReactionTypeRequest.fromBuffer(value),
        ($7.DeleteReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateReactionRequest, $7.CreateReactionResponse>(
        'CreateReaction',
        createReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateReactionRequest.fromBuffer(value),
        ($7.CreateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetReactionRequest, $7.GetReactionResponse>(
        'GetReaction',
        getReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetReactionRequest.fromBuffer(value),
        ($7.GetReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListReactionsRequest, $7.ListReactionsResponse>(
        'ListReactions',
        listReactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListReactionsRequest.fromBuffer(value),
        ($7.ListReactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateReactionRequest, $7.UpdateReactionResponse>(
        'UpdateReaction',
        updateReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateReactionRequest.fromBuffer(value),
        ($7.UpdateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteReactionRequest, $7.DeleteReactionResponse>(
        'DeleteReaction',
        deleteReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteReactionRequest.fromBuffer(value),
        ($7.DeleteReactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateReactionTypeResponse> createReactionType_Pre($grpc.ServiceCall call, $async.Future<$7.CreateReactionTypeRequest> request) async {
    return createReactionType(call, await request);
  }

  $async.Future<$7.GetReactionTypeResponse> getReactionType_Pre($grpc.ServiceCall call, $async.Future<$7.GetReactionTypeRequest> request) async {
    return getReactionType(call, await request);
  }

  $async.Future<$7.ListReactionTypesResponse> listReactionTypes_Pre($grpc.ServiceCall call, $async.Future<$7.ListReactionTypesRequest> request) async {
    return listReactionTypes(call, await request);
  }

  $async.Future<$7.UpdateReactionTypeResponse> updateReactionType_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateReactionTypeRequest> request) async {
    return updateReactionType(call, await request);
  }

  $async.Future<$7.DeleteReactionTypeResponse> deleteReactionType_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteReactionTypeRequest> request) async {
    return deleteReactionType(call, await request);
  }

  $async.Future<$7.CreateReactionResponse> createReaction_Pre($grpc.ServiceCall call, $async.Future<$7.CreateReactionRequest> request) async {
    return createReaction(call, await request);
  }

  $async.Future<$7.GetReactionResponse> getReaction_Pre($grpc.ServiceCall call, $async.Future<$7.GetReactionRequest> request) async {
    return getReaction(call, await request);
  }

  $async.Future<$7.ListReactionsResponse> listReactions_Pre($grpc.ServiceCall call, $async.Future<$7.ListReactionsRequest> request) async {
    return listReactions(call, await request);
  }

  $async.Future<$7.UpdateReactionResponse> updateReaction_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateReactionRequest> request) async {
    return updateReaction(call, await request);
  }

  $async.Future<$7.DeleteReactionResponse> deleteReaction_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteReactionRequest> request) async {
    return deleteReaction(call, await request);
  }

  $async.Future<$7.CreateReactionTypeResponse> createReactionType($grpc.ServiceCall call, $7.CreateReactionTypeRequest request);
  $async.Future<$7.GetReactionTypeResponse> getReactionType($grpc.ServiceCall call, $7.GetReactionTypeRequest request);
  $async.Future<$7.ListReactionTypesResponse> listReactionTypes($grpc.ServiceCall call, $7.ListReactionTypesRequest request);
  $async.Future<$7.UpdateReactionTypeResponse> updateReactionType($grpc.ServiceCall call, $7.UpdateReactionTypeRequest request);
  $async.Future<$7.DeleteReactionTypeResponse> deleteReactionType($grpc.ServiceCall call, $7.DeleteReactionTypeRequest request);
  $async.Future<$7.CreateReactionResponse> createReaction($grpc.ServiceCall call, $7.CreateReactionRequest request);
  $async.Future<$7.GetReactionResponse> getReaction($grpc.ServiceCall call, $7.GetReactionRequest request);
  $async.Future<$7.ListReactionsResponse> listReactions($grpc.ServiceCall call, $7.ListReactionsRequest request);
  $async.Future<$7.UpdateReactionResponse> updateReaction($grpc.ServiceCall call, $7.UpdateReactionRequest request);
  $async.Future<$7.DeleteReactionResponse> deleteReaction($grpc.ServiceCall call, $7.DeleteReactionRequest request);
}
