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

import 'reaction_service.pb.dart' as $4;

export 'reaction_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ReactionService')
class ReactionServiceClient extends $grpc.Client {
  static final _$createReactionType = $grpc.ClientMethod<$4.CreateReactionTypeRequest, $4.CreateReactionTypeResponse>(
      '/bst.v1.ReactionService/CreateReactionType',
      ($4.CreateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateReactionTypeResponse.fromBuffer(value));
  static final _$getReactionType = $grpc.ClientMethod<$4.GetReactionTypeRequest, $4.GetReactionTypeResponse>(
      '/bst.v1.ReactionService/GetReactionType',
      ($4.GetReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetReactionTypeResponse.fromBuffer(value));
  static final _$listReactionTypes = $grpc.ClientMethod<$4.ListReactionTypesRequest, $4.ListReactionTypesResponse>(
      '/bst.v1.ReactionService/ListReactionTypes',
      ($4.ListReactionTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListReactionTypesResponse.fromBuffer(value));
  static final _$updateReactionType = $grpc.ClientMethod<$4.UpdateReactionTypeRequest, $4.UpdateReactionTypeResponse>(
      '/bst.v1.ReactionService/UpdateReactionType',
      ($4.UpdateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateReactionTypeResponse.fromBuffer(value));
  static final _$deleteReactionType = $grpc.ClientMethod<$4.DeleteReactionTypeRequest, $4.DeleteReactionTypeResponse>(
      '/bst.v1.ReactionService/DeleteReactionType',
      ($4.DeleteReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteReactionTypeResponse.fromBuffer(value));
  static final _$createReaction = $grpc.ClientMethod<$4.CreateReactionRequest, $4.CreateReactionResponse>(
      '/bst.v1.ReactionService/CreateReaction',
      ($4.CreateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateReactionResponse.fromBuffer(value));
  static final _$getReaction = $grpc.ClientMethod<$4.GetReactionRequest, $4.GetReactionResponse>(
      '/bst.v1.ReactionService/GetReaction',
      ($4.GetReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetReactionResponse.fromBuffer(value));
  static final _$listReactions = $grpc.ClientMethod<$4.ListReactionsRequest, $4.ListReactionsResponse>(
      '/bst.v1.ReactionService/ListReactions',
      ($4.ListReactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListReactionsResponse.fromBuffer(value));
  static final _$updateReaction = $grpc.ClientMethod<$4.UpdateReactionRequest, $4.UpdateReactionResponse>(
      '/bst.v1.ReactionService/UpdateReaction',
      ($4.UpdateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateReactionResponse.fromBuffer(value));
  static final _$deleteReaction = $grpc.ClientMethod<$4.DeleteReactionRequest, $4.DeleteReactionResponse>(
      '/bst.v1.ReactionService/DeleteReaction',
      ($4.DeleteReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteReactionResponse.fromBuffer(value));

  ReactionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateReactionTypeResponse> createReactionType($4.CreateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetReactionTypeResponse> getReactionType($4.GetReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListReactionTypesResponse> listReactionTypes($4.ListReactionTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactionTypes, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateReactionTypeResponse> updateReactionType($4.UpdateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteReactionTypeResponse> deleteReactionType($4.DeleteReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateReactionResponse> createReaction($4.CreateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReaction, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetReactionResponse> getReaction($4.GetReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReaction, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListReactionsResponse> listReactions($4.ListReactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactions, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateReactionResponse> updateReaction($4.UpdateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReaction, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteReactionResponse> deleteReaction($4.DeleteReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ReactionService')
abstract class ReactionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ReactionService';

  ReactionServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateReactionTypeRequest, $4.CreateReactionTypeResponse>(
        'CreateReactionType',
        createReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateReactionTypeRequest.fromBuffer(value),
        ($4.CreateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetReactionTypeRequest, $4.GetReactionTypeResponse>(
        'GetReactionType',
        getReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetReactionTypeRequest.fromBuffer(value),
        ($4.GetReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListReactionTypesRequest, $4.ListReactionTypesResponse>(
        'ListReactionTypes',
        listReactionTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListReactionTypesRequest.fromBuffer(value),
        ($4.ListReactionTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateReactionTypeRequest, $4.UpdateReactionTypeResponse>(
        'UpdateReactionType',
        updateReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateReactionTypeRequest.fromBuffer(value),
        ($4.UpdateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteReactionTypeRequest, $4.DeleteReactionTypeResponse>(
        'DeleteReactionType',
        deleteReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteReactionTypeRequest.fromBuffer(value),
        ($4.DeleteReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateReactionRequest, $4.CreateReactionResponse>(
        'CreateReaction',
        createReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateReactionRequest.fromBuffer(value),
        ($4.CreateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetReactionRequest, $4.GetReactionResponse>(
        'GetReaction',
        getReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetReactionRequest.fromBuffer(value),
        ($4.GetReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListReactionsRequest, $4.ListReactionsResponse>(
        'ListReactions',
        listReactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListReactionsRequest.fromBuffer(value),
        ($4.ListReactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateReactionRequest, $4.UpdateReactionResponse>(
        'UpdateReaction',
        updateReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateReactionRequest.fromBuffer(value),
        ($4.UpdateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteReactionRequest, $4.DeleteReactionResponse>(
        'DeleteReaction',
        deleteReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteReactionRequest.fromBuffer(value),
        ($4.DeleteReactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateReactionTypeResponse> createReactionType_Pre($grpc.ServiceCall call, $async.Future<$4.CreateReactionTypeRequest> request) async {
    return createReactionType(call, await request);
  }

  $async.Future<$4.GetReactionTypeResponse> getReactionType_Pre($grpc.ServiceCall call, $async.Future<$4.GetReactionTypeRequest> request) async {
    return getReactionType(call, await request);
  }

  $async.Future<$4.ListReactionTypesResponse> listReactionTypes_Pre($grpc.ServiceCall call, $async.Future<$4.ListReactionTypesRequest> request) async {
    return listReactionTypes(call, await request);
  }

  $async.Future<$4.UpdateReactionTypeResponse> updateReactionType_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateReactionTypeRequest> request) async {
    return updateReactionType(call, await request);
  }

  $async.Future<$4.DeleteReactionTypeResponse> deleteReactionType_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteReactionTypeRequest> request) async {
    return deleteReactionType(call, await request);
  }

  $async.Future<$4.CreateReactionResponse> createReaction_Pre($grpc.ServiceCall call, $async.Future<$4.CreateReactionRequest> request) async {
    return createReaction(call, await request);
  }

  $async.Future<$4.GetReactionResponse> getReaction_Pre($grpc.ServiceCall call, $async.Future<$4.GetReactionRequest> request) async {
    return getReaction(call, await request);
  }

  $async.Future<$4.ListReactionsResponse> listReactions_Pre($grpc.ServiceCall call, $async.Future<$4.ListReactionsRequest> request) async {
    return listReactions(call, await request);
  }

  $async.Future<$4.UpdateReactionResponse> updateReaction_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateReactionRequest> request) async {
    return updateReaction(call, await request);
  }

  $async.Future<$4.DeleteReactionResponse> deleteReaction_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteReactionRequest> request) async {
    return deleteReaction(call, await request);
  }

  $async.Future<$4.CreateReactionTypeResponse> createReactionType($grpc.ServiceCall call, $4.CreateReactionTypeRequest request);
  $async.Future<$4.GetReactionTypeResponse> getReactionType($grpc.ServiceCall call, $4.GetReactionTypeRequest request);
  $async.Future<$4.ListReactionTypesResponse> listReactionTypes($grpc.ServiceCall call, $4.ListReactionTypesRequest request);
  $async.Future<$4.UpdateReactionTypeResponse> updateReactionType($grpc.ServiceCall call, $4.UpdateReactionTypeRequest request);
  $async.Future<$4.DeleteReactionTypeResponse> deleteReactionType($grpc.ServiceCall call, $4.DeleteReactionTypeRequest request);
  $async.Future<$4.CreateReactionResponse> createReaction($grpc.ServiceCall call, $4.CreateReactionRequest request);
  $async.Future<$4.GetReactionResponse> getReaction($grpc.ServiceCall call, $4.GetReactionRequest request);
  $async.Future<$4.ListReactionsResponse> listReactions($grpc.ServiceCall call, $4.ListReactionsRequest request);
  $async.Future<$4.UpdateReactionResponse> updateReaction($grpc.ServiceCall call, $4.UpdateReactionRequest request);
  $async.Future<$4.DeleteReactionResponse> deleteReaction($grpc.ServiceCall call, $4.DeleteReactionRequest request);
}
