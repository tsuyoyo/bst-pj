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

import 'part_service.pb.dart' as $5;

export 'part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.PartService')
class PartServiceClient extends $grpc.Client {
  static final _$createPart = $grpc.ClientMethod<$5.CreatePartRequest, $5.CreatePartResponse>(
      '/bst.v1.PartService/CreatePart',
      ($5.CreatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreatePartResponse.fromBuffer(value));
  static final _$listParts = $grpc.ClientMethod<$5.ListPartsRequest, $5.ListPartsResponse>(
      '/bst.v1.PartService/ListParts',
      ($5.ListPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListPartsResponse.fromBuffer(value));
  static final _$getPart = $grpc.ClientMethod<$5.GetPartRequest, $5.GetPartResponse>(
      '/bst.v1.PartService/GetPart',
      ($5.GetPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPartResponse.fromBuffer(value));
  static final _$updatePart = $grpc.ClientMethod<$5.UpdatePartRequest, $5.UpdatePartResponse>(
      '/bst.v1.PartService/UpdatePart',
      ($5.UpdatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdatePartResponse.fromBuffer(value));
  static final _$deletePart = $grpc.ClientMethod<$5.DeletePartRequest, $5.DeletePartResponse>(
      '/bst.v1.PartService/DeletePart',
      ($5.DeletePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeletePartResponse.fromBuffer(value));

  PartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreatePartResponse> createPart($5.CreatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPart, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListPartsResponse> listParts($5.ListPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listParts, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPartResponse> getPart($5.GetPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPart, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdatePartResponse> updatePart($5.UpdatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePart, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeletePartResponse> deletePart($5.DeletePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.PartService')
abstract class PartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.PartService';

  PartServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreatePartRequest, $5.CreatePartResponse>(
        'CreatePart',
        createPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreatePartRequest.fromBuffer(value),
        ($5.CreatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListPartsRequest, $5.ListPartsResponse>(
        'ListParts',
        listParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListPartsRequest.fromBuffer(value),
        ($5.ListPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPartRequest, $5.GetPartResponse>(
        'GetPart',
        getPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPartRequest.fromBuffer(value),
        ($5.GetPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdatePartRequest, $5.UpdatePartResponse>(
        'UpdatePart',
        updatePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdatePartRequest.fromBuffer(value),
        ($5.UpdatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeletePartRequest, $5.DeletePartResponse>(
        'DeletePart',
        deletePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeletePartRequest.fromBuffer(value),
        ($5.DeletePartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreatePartResponse> createPart_Pre($grpc.ServiceCall call, $async.Future<$5.CreatePartRequest> request) async {
    return createPart(call, await request);
  }

  $async.Future<$5.ListPartsResponse> listParts_Pre($grpc.ServiceCall call, $async.Future<$5.ListPartsRequest> request) async {
    return listParts(call, await request);
  }

  $async.Future<$5.GetPartResponse> getPart_Pre($grpc.ServiceCall call, $async.Future<$5.GetPartRequest> request) async {
    return getPart(call, await request);
  }

  $async.Future<$5.UpdatePartResponse> updatePart_Pre($grpc.ServiceCall call, $async.Future<$5.UpdatePartRequest> request) async {
    return updatePart(call, await request);
  }

  $async.Future<$5.DeletePartResponse> deletePart_Pre($grpc.ServiceCall call, $async.Future<$5.DeletePartRequest> request) async {
    return deletePart(call, await request);
  }

  $async.Future<$5.CreatePartResponse> createPart($grpc.ServiceCall call, $5.CreatePartRequest request);
  $async.Future<$5.ListPartsResponse> listParts($grpc.ServiceCall call, $5.ListPartsRequest request);
  $async.Future<$5.GetPartResponse> getPart($grpc.ServiceCall call, $5.GetPartRequest request);
  $async.Future<$5.UpdatePartResponse> updatePart($grpc.ServiceCall call, $5.UpdatePartRequest request);
  $async.Future<$5.DeletePartResponse> deletePart($grpc.ServiceCall call, $5.DeletePartRequest request);
}
