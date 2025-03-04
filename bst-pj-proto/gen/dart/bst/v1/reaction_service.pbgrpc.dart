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

import 'reaction_service.pb.dart' as $13;

export 'reaction_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ReactionService')
class ReactionServiceClient extends $grpc.Client {
  static final _$createReactionType = $grpc.ClientMethod<$13.CreateReactionTypeRequest, $13.CreateReactionTypeResponse>(
      '/bst.v1.ReactionService/CreateReactionType',
      ($13.CreateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateReactionTypeResponse.fromBuffer(value));
  static final _$getReactionType = $grpc.ClientMethod<$13.GetReactionTypeRequest, $13.GetReactionTypeResponse>(
      '/bst.v1.ReactionService/GetReactionType',
      ($13.GetReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetReactionTypeResponse.fromBuffer(value));
  static final _$listReactionTypes = $grpc.ClientMethod<$13.ListReactionTypesRequest, $13.ListReactionTypesResponse>(
      '/bst.v1.ReactionService/ListReactionTypes',
      ($13.ListReactionTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListReactionTypesResponse.fromBuffer(value));
  static final _$updateReactionType = $grpc.ClientMethod<$13.UpdateReactionTypeRequest, $13.UpdateReactionTypeResponse>(
      '/bst.v1.ReactionService/UpdateReactionType',
      ($13.UpdateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateReactionTypeResponse.fromBuffer(value));
  static final _$deleteReactionType = $grpc.ClientMethod<$13.DeleteReactionTypeRequest, $13.DeleteReactionTypeResponse>(
      '/bst.v1.ReactionService/DeleteReactionType',
      ($13.DeleteReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteReactionTypeResponse.fromBuffer(value));
  static final _$createReaction = $grpc.ClientMethod<$13.CreateReactionRequest, $13.CreateReactionResponse>(
      '/bst.v1.ReactionService/CreateReaction',
      ($13.CreateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateReactionResponse.fromBuffer(value));
  static final _$getReaction = $grpc.ClientMethod<$13.GetReactionRequest, $13.GetReactionResponse>(
      '/bst.v1.ReactionService/GetReaction',
      ($13.GetReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetReactionResponse.fromBuffer(value));
  static final _$listReactions = $grpc.ClientMethod<$13.ListReactionsRequest, $13.ListReactionsResponse>(
      '/bst.v1.ReactionService/ListReactions',
      ($13.ListReactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ListReactionsResponse.fromBuffer(value));
  static final _$updateReaction = $grpc.ClientMethod<$13.UpdateReactionRequest, $13.UpdateReactionResponse>(
      '/bst.v1.ReactionService/UpdateReaction',
      ($13.UpdateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateReactionResponse.fromBuffer(value));
  static final _$deleteReaction = $grpc.ClientMethod<$13.DeleteReactionRequest, $13.DeleteReactionResponse>(
      '/bst.v1.ReactionService/DeleteReaction',
      ($13.DeleteReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteReactionResponse.fromBuffer(value));

  ReactionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateReactionTypeResponse> createReactionType($13.CreateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetReactionTypeResponse> getReactionType($13.GetReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListReactionTypesResponse> listReactionTypes($13.ListReactionTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactionTypes, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateReactionTypeResponse> updateReactionType($13.UpdateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteReactionTypeResponse> deleteReactionType($13.DeleteReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateReactionResponse> createReaction($13.CreateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReaction, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetReactionResponse> getReaction($13.GetReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReaction, request, options: options);
  }

  $grpc.ResponseFuture<$13.ListReactionsResponse> listReactions($13.ListReactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactions, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateReactionResponse> updateReaction($13.UpdateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReaction, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteReactionResponse> deleteReaction($13.DeleteReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ReactionService')
abstract class ReactionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ReactionService';

  ReactionServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateReactionTypeRequest, $13.CreateReactionTypeResponse>(
        'CreateReactionType',
        createReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateReactionTypeRequest.fromBuffer(value),
        ($13.CreateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetReactionTypeRequest, $13.GetReactionTypeResponse>(
        'GetReactionType',
        getReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetReactionTypeRequest.fromBuffer(value),
        ($13.GetReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListReactionTypesRequest, $13.ListReactionTypesResponse>(
        'ListReactionTypes',
        listReactionTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListReactionTypesRequest.fromBuffer(value),
        ($13.ListReactionTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateReactionTypeRequest, $13.UpdateReactionTypeResponse>(
        'UpdateReactionType',
        updateReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateReactionTypeRequest.fromBuffer(value),
        ($13.UpdateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteReactionTypeRequest, $13.DeleteReactionTypeResponse>(
        'DeleteReactionType',
        deleteReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteReactionTypeRequest.fromBuffer(value),
        ($13.DeleteReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateReactionRequest, $13.CreateReactionResponse>(
        'CreateReaction',
        createReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateReactionRequest.fromBuffer(value),
        ($13.CreateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetReactionRequest, $13.GetReactionResponse>(
        'GetReaction',
        getReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetReactionRequest.fromBuffer(value),
        ($13.GetReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ListReactionsRequest, $13.ListReactionsResponse>(
        'ListReactions',
        listReactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ListReactionsRequest.fromBuffer(value),
        ($13.ListReactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateReactionRequest, $13.UpdateReactionResponse>(
        'UpdateReaction',
        updateReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateReactionRequest.fromBuffer(value),
        ($13.UpdateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteReactionRequest, $13.DeleteReactionResponse>(
        'DeleteReaction',
        deleteReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteReactionRequest.fromBuffer(value),
        ($13.DeleteReactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateReactionTypeResponse> createReactionType_Pre($grpc.ServiceCall call, $async.Future<$13.CreateReactionTypeRequest> request) async {
    return createReactionType(call, await request);
  }

  $async.Future<$13.GetReactionTypeResponse> getReactionType_Pre($grpc.ServiceCall call, $async.Future<$13.GetReactionTypeRequest> request) async {
    return getReactionType(call, await request);
  }

  $async.Future<$13.ListReactionTypesResponse> listReactionTypes_Pre($grpc.ServiceCall call, $async.Future<$13.ListReactionTypesRequest> request) async {
    return listReactionTypes(call, await request);
  }

  $async.Future<$13.UpdateReactionTypeResponse> updateReactionType_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateReactionTypeRequest> request) async {
    return updateReactionType(call, await request);
  }

  $async.Future<$13.DeleteReactionTypeResponse> deleteReactionType_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteReactionTypeRequest> request) async {
    return deleteReactionType(call, await request);
  }

  $async.Future<$13.CreateReactionResponse> createReaction_Pre($grpc.ServiceCall call, $async.Future<$13.CreateReactionRequest> request) async {
    return createReaction(call, await request);
  }

  $async.Future<$13.GetReactionResponse> getReaction_Pre($grpc.ServiceCall call, $async.Future<$13.GetReactionRequest> request) async {
    return getReaction(call, await request);
  }

  $async.Future<$13.ListReactionsResponse> listReactions_Pre($grpc.ServiceCall call, $async.Future<$13.ListReactionsRequest> request) async {
    return listReactions(call, await request);
  }

  $async.Future<$13.UpdateReactionResponse> updateReaction_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateReactionRequest> request) async {
    return updateReaction(call, await request);
  }

  $async.Future<$13.DeleteReactionResponse> deleteReaction_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteReactionRequest> request) async {
    return deleteReaction(call, await request);
  }

  $async.Future<$13.CreateReactionTypeResponse> createReactionType($grpc.ServiceCall call, $13.CreateReactionTypeRequest request);
  $async.Future<$13.GetReactionTypeResponse> getReactionType($grpc.ServiceCall call, $13.GetReactionTypeRequest request);
  $async.Future<$13.ListReactionTypesResponse> listReactionTypes($grpc.ServiceCall call, $13.ListReactionTypesRequest request);
  $async.Future<$13.UpdateReactionTypeResponse> updateReactionType($grpc.ServiceCall call, $13.UpdateReactionTypeRequest request);
  $async.Future<$13.DeleteReactionTypeResponse> deleteReactionType($grpc.ServiceCall call, $13.DeleteReactionTypeRequest request);
  $async.Future<$13.CreateReactionResponse> createReaction($grpc.ServiceCall call, $13.CreateReactionRequest request);
  $async.Future<$13.GetReactionResponse> getReaction($grpc.ServiceCall call, $13.GetReactionRequest request);
  $async.Future<$13.ListReactionsResponse> listReactions($grpc.ServiceCall call, $13.ListReactionsRequest request);
  $async.Future<$13.UpdateReactionResponse> updateReaction($grpc.ServiceCall call, $13.UpdateReactionRequest request);
  $async.Future<$13.DeleteReactionResponse> deleteReaction($grpc.ServiceCall call, $13.DeleteReactionRequest request);
}
