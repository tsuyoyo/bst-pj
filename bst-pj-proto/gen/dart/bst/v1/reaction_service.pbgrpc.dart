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

import 'reaction_service.pb.dart' as $9;

export 'reaction_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.ReactionService')
class ReactionServiceClient extends $grpc.Client {
  static final _$createReactionType = $grpc.ClientMethod<$9.CreateReactionTypeRequest, $9.CreateReactionTypeResponse>(
      '/bst.v1.ReactionService/CreateReactionType',
      ($9.CreateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateReactionTypeResponse.fromBuffer(value));
  static final _$getReactionType = $grpc.ClientMethod<$9.GetReactionTypeRequest, $9.GetReactionTypeResponse>(
      '/bst.v1.ReactionService/GetReactionType',
      ($9.GetReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetReactionTypeResponse.fromBuffer(value));
  static final _$listReactionTypes = $grpc.ClientMethod<$9.ListReactionTypesRequest, $9.ListReactionTypesResponse>(
      '/bst.v1.ReactionService/ListReactionTypes',
      ($9.ListReactionTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListReactionTypesResponse.fromBuffer(value));
  static final _$updateReactionType = $grpc.ClientMethod<$9.UpdateReactionTypeRequest, $9.UpdateReactionTypeResponse>(
      '/bst.v1.ReactionService/UpdateReactionType',
      ($9.UpdateReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateReactionTypeResponse.fromBuffer(value));
  static final _$deleteReactionType = $grpc.ClientMethod<$9.DeleteReactionTypeRequest, $9.DeleteReactionTypeResponse>(
      '/bst.v1.ReactionService/DeleteReactionType',
      ($9.DeleteReactionTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteReactionTypeResponse.fromBuffer(value));
  static final _$createReaction = $grpc.ClientMethod<$9.CreateReactionRequest, $9.CreateReactionResponse>(
      '/bst.v1.ReactionService/CreateReaction',
      ($9.CreateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateReactionResponse.fromBuffer(value));
  static final _$getReaction = $grpc.ClientMethod<$9.GetReactionRequest, $9.GetReactionResponse>(
      '/bst.v1.ReactionService/GetReaction',
      ($9.GetReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetReactionResponse.fromBuffer(value));
  static final _$listReactions = $grpc.ClientMethod<$9.ListReactionsRequest, $9.ListReactionsResponse>(
      '/bst.v1.ReactionService/ListReactions',
      ($9.ListReactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ListReactionsResponse.fromBuffer(value));
  static final _$updateReaction = $grpc.ClientMethod<$9.UpdateReactionRequest, $9.UpdateReactionResponse>(
      '/bst.v1.ReactionService/UpdateReaction',
      ($9.UpdateReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateReactionResponse.fromBuffer(value));
  static final _$deleteReaction = $grpc.ClientMethod<$9.DeleteReactionRequest, $9.DeleteReactionResponse>(
      '/bst.v1.ReactionService/DeleteReaction',
      ($9.DeleteReactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteReactionResponse.fromBuffer(value));

  ReactionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateReactionTypeResponse> createReactionType($9.CreateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetReactionTypeResponse> getReactionType($9.GetReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListReactionTypesResponse> listReactionTypes($9.ListReactionTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactionTypes, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateReactionTypeResponse> updateReactionType($9.UpdateReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteReactionTypeResponse> deleteReactionType($9.DeleteReactionTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReactionType, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateReactionResponse> createReaction($9.CreateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReaction, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetReactionResponse> getReaction($9.GetReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReaction, request, options: options);
  }

  $grpc.ResponseFuture<$9.ListReactionsResponse> listReactions($9.ListReactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReactions, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateReactionResponse> updateReaction($9.UpdateReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReaction, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteReactionResponse> deleteReaction($9.DeleteReactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReaction, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.ReactionService')
abstract class ReactionServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.ReactionService';

  ReactionServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateReactionTypeRequest, $9.CreateReactionTypeResponse>(
        'CreateReactionType',
        createReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateReactionTypeRequest.fromBuffer(value),
        ($9.CreateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetReactionTypeRequest, $9.GetReactionTypeResponse>(
        'GetReactionType',
        getReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetReactionTypeRequest.fromBuffer(value),
        ($9.GetReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListReactionTypesRequest, $9.ListReactionTypesResponse>(
        'ListReactionTypes',
        listReactionTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListReactionTypesRequest.fromBuffer(value),
        ($9.ListReactionTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateReactionTypeRequest, $9.UpdateReactionTypeResponse>(
        'UpdateReactionType',
        updateReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateReactionTypeRequest.fromBuffer(value),
        ($9.UpdateReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteReactionTypeRequest, $9.DeleteReactionTypeResponse>(
        'DeleteReactionType',
        deleteReactionType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteReactionTypeRequest.fromBuffer(value),
        ($9.DeleteReactionTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateReactionRequest, $9.CreateReactionResponse>(
        'CreateReaction',
        createReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateReactionRequest.fromBuffer(value),
        ($9.CreateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetReactionRequest, $9.GetReactionResponse>(
        'GetReaction',
        getReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetReactionRequest.fromBuffer(value),
        ($9.GetReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ListReactionsRequest, $9.ListReactionsResponse>(
        'ListReactions',
        listReactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ListReactionsRequest.fromBuffer(value),
        ($9.ListReactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateReactionRequest, $9.UpdateReactionResponse>(
        'UpdateReaction',
        updateReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateReactionRequest.fromBuffer(value),
        ($9.UpdateReactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteReactionRequest, $9.DeleteReactionResponse>(
        'DeleteReaction',
        deleteReaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteReactionRequest.fromBuffer(value),
        ($9.DeleteReactionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateReactionTypeResponse> createReactionType_Pre($grpc.ServiceCall call, $async.Future<$9.CreateReactionTypeRequest> request) async {
    return createReactionType(call, await request);
  }

  $async.Future<$9.GetReactionTypeResponse> getReactionType_Pre($grpc.ServiceCall call, $async.Future<$9.GetReactionTypeRequest> request) async {
    return getReactionType(call, await request);
  }

  $async.Future<$9.ListReactionTypesResponse> listReactionTypes_Pre($grpc.ServiceCall call, $async.Future<$9.ListReactionTypesRequest> request) async {
    return listReactionTypes(call, await request);
  }

  $async.Future<$9.UpdateReactionTypeResponse> updateReactionType_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateReactionTypeRequest> request) async {
    return updateReactionType(call, await request);
  }

  $async.Future<$9.DeleteReactionTypeResponse> deleteReactionType_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteReactionTypeRequest> request) async {
    return deleteReactionType(call, await request);
  }

  $async.Future<$9.CreateReactionResponse> createReaction_Pre($grpc.ServiceCall call, $async.Future<$9.CreateReactionRequest> request) async {
    return createReaction(call, await request);
  }

  $async.Future<$9.GetReactionResponse> getReaction_Pre($grpc.ServiceCall call, $async.Future<$9.GetReactionRequest> request) async {
    return getReaction(call, await request);
  }

  $async.Future<$9.ListReactionsResponse> listReactions_Pre($grpc.ServiceCall call, $async.Future<$9.ListReactionsRequest> request) async {
    return listReactions(call, await request);
  }

  $async.Future<$9.UpdateReactionResponse> updateReaction_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateReactionRequest> request) async {
    return updateReaction(call, await request);
  }

  $async.Future<$9.DeleteReactionResponse> deleteReaction_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteReactionRequest> request) async {
    return deleteReaction(call, await request);
  }

  $async.Future<$9.CreateReactionTypeResponse> createReactionType($grpc.ServiceCall call, $9.CreateReactionTypeRequest request);
  $async.Future<$9.GetReactionTypeResponse> getReactionType($grpc.ServiceCall call, $9.GetReactionTypeRequest request);
  $async.Future<$9.ListReactionTypesResponse> listReactionTypes($grpc.ServiceCall call, $9.ListReactionTypesRequest request);
  $async.Future<$9.UpdateReactionTypeResponse> updateReactionType($grpc.ServiceCall call, $9.UpdateReactionTypeRequest request);
  $async.Future<$9.DeleteReactionTypeResponse> deleteReactionType($grpc.ServiceCall call, $9.DeleteReactionTypeRequest request);
  $async.Future<$9.CreateReactionResponse> createReaction($grpc.ServiceCall call, $9.CreateReactionRequest request);
  $async.Future<$9.GetReactionResponse> getReaction($grpc.ServiceCall call, $9.GetReactionRequest request);
  $async.Future<$9.ListReactionsResponse> listReactions($grpc.ServiceCall call, $9.ListReactionsRequest request);
  $async.Future<$9.UpdateReactionResponse> updateReaction($grpc.ServiceCall call, $9.UpdateReactionRequest request);
  $async.Future<$9.DeleteReactionResponse> deleteReaction($grpc.ServiceCall call, $9.DeleteReactionRequest request);
}
