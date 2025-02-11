//
//  Generated code. Do not modify.
//  source: bst/v1/part_service.proto
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

import 'part_service.pb.dart' as $3;

export 'part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.PartService')
class PartServiceClient extends $grpc.Client {
  static final _$createPart = $grpc.ClientMethod<$3.CreatePartRequest, $3.CreatePartResponse>(
      '/bst.v1.PartService/CreatePart',
      ($3.CreatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePartResponse.fromBuffer(value));
  static final _$listParts = $grpc.ClientMethod<$3.ListPartsRequest, $3.ListPartsResponse>(
      '/bst.v1.PartService/ListParts',
      ($3.ListPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListPartsResponse.fromBuffer(value));
  static final _$getPart = $grpc.ClientMethod<$3.GetPartRequest, $3.GetPartResponse>(
      '/bst.v1.PartService/GetPart',
      ($3.GetPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPartResponse.fromBuffer(value));
  static final _$updatePart = $grpc.ClientMethod<$3.UpdatePartRequest, $3.UpdatePartResponse>(
      '/bst.v1.PartService/UpdatePart',
      ($3.UpdatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePartResponse.fromBuffer(value));
  static final _$deletePart = $grpc.ClientMethod<$3.DeletePartRequest, $3.DeletePartResponse>(
      '/bst.v1.PartService/DeletePart',
      ($3.DeletePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeletePartResponse.fromBuffer(value));

  PartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreatePartResponse> createPart($3.CreatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPart, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListPartsResponse> listParts($3.ListPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listParts, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPartResponse> getPart($3.GetPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPart, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePartResponse> updatePart($3.UpdatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePart, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeletePartResponse> deletePart($3.DeletePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.PartService')
abstract class PartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.PartService';

  PartServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreatePartRequest, $3.CreatePartResponse>(
        'CreatePart',
        createPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreatePartRequest.fromBuffer(value),
        ($3.CreatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListPartsRequest, $3.ListPartsResponse>(
        'ListParts',
        listParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListPartsRequest.fromBuffer(value),
        ($3.ListPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPartRequest, $3.GetPartResponse>(
        'GetPart',
        getPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPartRequest.fromBuffer(value),
        ($3.GetPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePartRequest, $3.UpdatePartResponse>(
        'UpdatePart',
        updatePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePartRequest.fromBuffer(value),
        ($3.UpdatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeletePartRequest, $3.DeletePartResponse>(
        'DeletePart',
        deletePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeletePartRequest.fromBuffer(value),
        ($3.DeletePartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreatePartResponse> createPart_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePartRequest> request) async {
    return createPart(call, await request);
  }

  $async.Future<$3.ListPartsResponse> listParts_Pre($grpc.ServiceCall call, $async.Future<$3.ListPartsRequest> request) async {
    return listParts(call, await request);
  }

  $async.Future<$3.GetPartResponse> getPart_Pre($grpc.ServiceCall call, $async.Future<$3.GetPartRequest> request) async {
    return getPart(call, await request);
  }

  $async.Future<$3.UpdatePartResponse> updatePart_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePartRequest> request) async {
    return updatePart(call, await request);
  }

  $async.Future<$3.DeletePartResponse> deletePart_Pre($grpc.ServiceCall call, $async.Future<$3.DeletePartRequest> request) async {
    return deletePart(call, await request);
  }

  $async.Future<$3.CreatePartResponse> createPart($grpc.ServiceCall call, $3.CreatePartRequest request);
  $async.Future<$3.ListPartsResponse> listParts($grpc.ServiceCall call, $3.ListPartsRequest request);
  $async.Future<$3.GetPartResponse> getPart($grpc.ServiceCall call, $3.GetPartRequest request);
  $async.Future<$3.UpdatePartResponse> updatePart($grpc.ServiceCall call, $3.UpdatePartRequest request);
  $async.Future<$3.DeletePartResponse> deletePart($grpc.ServiceCall call, $3.DeletePartRequest request);
}
