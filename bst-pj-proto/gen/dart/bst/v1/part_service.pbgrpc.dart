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

import 'part_service.pb.dart' as $8;

export 'part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.PartService')
class PartServiceClient extends $grpc.Client {
  static final _$createPart = $grpc.ClientMethod<$8.CreatePartRequest, $8.CreatePartResponse>(
      '/bst.v1.PartService/CreatePart',
      ($8.CreatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreatePartResponse.fromBuffer(value));
  static final _$listParts = $grpc.ClientMethod<$8.ListPartsRequest, $8.ListPartsResponse>(
      '/bst.v1.PartService/ListParts',
      ($8.ListPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListPartsResponse.fromBuffer(value));
  static final _$getPart = $grpc.ClientMethod<$8.GetPartRequest, $8.GetPartResponse>(
      '/bst.v1.PartService/GetPart',
      ($8.GetPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetPartResponse.fromBuffer(value));
  static final _$updatePart = $grpc.ClientMethod<$8.UpdatePartRequest, $8.UpdatePartResponse>(
      '/bst.v1.PartService/UpdatePart',
      ($8.UpdatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdatePartResponse.fromBuffer(value));
  static final _$deletePart = $grpc.ClientMethod<$8.DeletePartRequest, $8.DeletePartResponse>(
      '/bst.v1.PartService/DeletePart',
      ($8.DeletePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeletePartResponse.fromBuffer(value));

  PartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreatePartResponse> createPart($8.CreatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPart, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListPartsResponse> listParts($8.ListPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listParts, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetPartResponse> getPart($8.GetPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPart, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdatePartResponse> updatePart($8.UpdatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePart, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeletePartResponse> deletePart($8.DeletePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.PartService')
abstract class PartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.PartService';

  PartServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreatePartRequest, $8.CreatePartResponse>(
        'CreatePart',
        createPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreatePartRequest.fromBuffer(value),
        ($8.CreatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListPartsRequest, $8.ListPartsResponse>(
        'ListParts',
        listParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListPartsRequest.fromBuffer(value),
        ($8.ListPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetPartRequest, $8.GetPartResponse>(
        'GetPart',
        getPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetPartRequest.fromBuffer(value),
        ($8.GetPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdatePartRequest, $8.UpdatePartResponse>(
        'UpdatePart',
        updatePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdatePartRequest.fromBuffer(value),
        ($8.UpdatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeletePartRequest, $8.DeletePartResponse>(
        'DeletePart',
        deletePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeletePartRequest.fromBuffer(value),
        ($8.DeletePartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreatePartResponse> createPart_Pre($grpc.ServiceCall call, $async.Future<$8.CreatePartRequest> request) async {
    return createPart(call, await request);
  }

  $async.Future<$8.ListPartsResponse> listParts_Pre($grpc.ServiceCall call, $async.Future<$8.ListPartsRequest> request) async {
    return listParts(call, await request);
  }

  $async.Future<$8.GetPartResponse> getPart_Pre($grpc.ServiceCall call, $async.Future<$8.GetPartRequest> request) async {
    return getPart(call, await request);
  }

  $async.Future<$8.UpdatePartResponse> updatePart_Pre($grpc.ServiceCall call, $async.Future<$8.UpdatePartRequest> request) async {
    return updatePart(call, await request);
  }

  $async.Future<$8.DeletePartResponse> deletePart_Pre($grpc.ServiceCall call, $async.Future<$8.DeletePartRequest> request) async {
    return deletePart(call, await request);
  }

  $async.Future<$8.CreatePartResponse> createPart($grpc.ServiceCall call, $8.CreatePartRequest request);
  $async.Future<$8.ListPartsResponse> listParts($grpc.ServiceCall call, $8.ListPartsRequest request);
  $async.Future<$8.GetPartResponse> getPart($grpc.ServiceCall call, $8.GetPartRequest request);
  $async.Future<$8.UpdatePartResponse> updatePart($grpc.ServiceCall call, $8.UpdatePartRequest request);
  $async.Future<$8.DeletePartResponse> deletePart($grpc.ServiceCall call, $8.DeletePartRequest request);
}
