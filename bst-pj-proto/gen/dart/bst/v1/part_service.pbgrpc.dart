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

import 'part_service.pb.dart' as $6;

export 'part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.PartService')
class PartServiceClient extends $grpc.Client {
  static final _$createPart = $grpc.ClientMethod<$6.CreatePartRequest, $6.CreatePartResponse>(
      '/bst.v1.PartService/CreatePart',
      ($6.CreatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreatePartResponse.fromBuffer(value));
  static final _$listParts = $grpc.ClientMethod<$6.ListPartsRequest, $6.ListPartsResponse>(
      '/bst.v1.PartService/ListParts',
      ($6.ListPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListPartsResponse.fromBuffer(value));
  static final _$getPart = $grpc.ClientMethod<$6.GetPartRequest, $6.GetPartResponse>(
      '/bst.v1.PartService/GetPart',
      ($6.GetPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetPartResponse.fromBuffer(value));
  static final _$updatePart = $grpc.ClientMethod<$6.UpdatePartRequest, $6.UpdatePartResponse>(
      '/bst.v1.PartService/UpdatePart',
      ($6.UpdatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdatePartResponse.fromBuffer(value));
  static final _$deletePart = $grpc.ClientMethod<$6.DeletePartRequest, $6.DeletePartResponse>(
      '/bst.v1.PartService/DeletePart',
      ($6.DeletePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeletePartResponse.fromBuffer(value));

  PartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreatePartResponse> createPart($6.CreatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPart, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListPartsResponse> listParts($6.ListPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listParts, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetPartResponse> getPart($6.GetPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPart, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdatePartResponse> updatePart($6.UpdatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePart, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeletePartResponse> deletePart($6.DeletePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.PartService')
abstract class PartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.PartService';

  PartServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreatePartRequest, $6.CreatePartResponse>(
        'CreatePart',
        createPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreatePartRequest.fromBuffer(value),
        ($6.CreatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListPartsRequest, $6.ListPartsResponse>(
        'ListParts',
        listParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListPartsRequest.fromBuffer(value),
        ($6.ListPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetPartRequest, $6.GetPartResponse>(
        'GetPart',
        getPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetPartRequest.fromBuffer(value),
        ($6.GetPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdatePartRequest, $6.UpdatePartResponse>(
        'UpdatePart',
        updatePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdatePartRequest.fromBuffer(value),
        ($6.UpdatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeletePartRequest, $6.DeletePartResponse>(
        'DeletePart',
        deletePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeletePartRequest.fromBuffer(value),
        ($6.DeletePartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreatePartResponse> createPart_Pre($grpc.ServiceCall call, $async.Future<$6.CreatePartRequest> request) async {
    return createPart(call, await request);
  }

  $async.Future<$6.ListPartsResponse> listParts_Pre($grpc.ServiceCall call, $async.Future<$6.ListPartsRequest> request) async {
    return listParts(call, await request);
  }

  $async.Future<$6.GetPartResponse> getPart_Pre($grpc.ServiceCall call, $async.Future<$6.GetPartRequest> request) async {
    return getPart(call, await request);
  }

  $async.Future<$6.UpdatePartResponse> updatePart_Pre($grpc.ServiceCall call, $async.Future<$6.UpdatePartRequest> request) async {
    return updatePart(call, await request);
  }

  $async.Future<$6.DeletePartResponse> deletePart_Pre($grpc.ServiceCall call, $async.Future<$6.DeletePartRequest> request) async {
    return deletePart(call, await request);
  }

  $async.Future<$6.CreatePartResponse> createPart($grpc.ServiceCall call, $6.CreatePartRequest request);
  $async.Future<$6.ListPartsResponse> listParts($grpc.ServiceCall call, $6.ListPartsRequest request);
  $async.Future<$6.GetPartResponse> getPart($grpc.ServiceCall call, $6.GetPartRequest request);
  $async.Future<$6.UpdatePartResponse> updatePart($grpc.ServiceCall call, $6.UpdatePartRequest request);
  $async.Future<$6.DeletePartResponse> deletePart($grpc.ServiceCall call, $6.DeletePartRequest request);
}
