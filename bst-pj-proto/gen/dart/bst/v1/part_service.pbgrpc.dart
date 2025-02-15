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

import 'part_service.pb.dart' as $7;

export 'part_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.PartService')
class PartServiceClient extends $grpc.Client {
  static final _$createPart = $grpc.ClientMethod<$7.CreatePartRequest, $7.CreatePartResponse>(
      '/bst.v1.PartService/CreatePart',
      ($7.CreatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreatePartResponse.fromBuffer(value));
  static final _$listParts = $grpc.ClientMethod<$7.ListPartsRequest, $7.ListPartsResponse>(
      '/bst.v1.PartService/ListParts',
      ($7.ListPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListPartsResponse.fromBuffer(value));
  static final _$getPart = $grpc.ClientMethod<$7.GetPartRequest, $7.GetPartResponse>(
      '/bst.v1.PartService/GetPart',
      ($7.GetPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetPartResponse.fromBuffer(value));
  static final _$updatePart = $grpc.ClientMethod<$7.UpdatePartRequest, $7.UpdatePartResponse>(
      '/bst.v1.PartService/UpdatePart',
      ($7.UpdatePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdatePartResponse.fromBuffer(value));
  static final _$deletePart = $grpc.ClientMethod<$7.DeletePartRequest, $7.DeletePartResponse>(
      '/bst.v1.PartService/DeletePart',
      ($7.DeletePartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeletePartResponse.fromBuffer(value));

  PartServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreatePartResponse> createPart($7.CreatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPart, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListPartsResponse> listParts($7.ListPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listParts, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPartResponse> getPart($7.GetPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPart, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdatePartResponse> updatePart($7.UpdatePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePart, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeletePartResponse> deletePart($7.DeletePartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePart, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.PartService')
abstract class PartServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.PartService';

  PartServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreatePartRequest, $7.CreatePartResponse>(
        'CreatePart',
        createPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreatePartRequest.fromBuffer(value),
        ($7.CreatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListPartsRequest, $7.ListPartsResponse>(
        'ListParts',
        listParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListPartsRequest.fromBuffer(value),
        ($7.ListPartsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPartRequest, $7.GetPartResponse>(
        'GetPart',
        getPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetPartRequest.fromBuffer(value),
        ($7.GetPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdatePartRequest, $7.UpdatePartResponse>(
        'UpdatePart',
        updatePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdatePartRequest.fromBuffer(value),
        ($7.UpdatePartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeletePartRequest, $7.DeletePartResponse>(
        'DeletePart',
        deletePart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeletePartRequest.fromBuffer(value),
        ($7.DeletePartResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreatePartResponse> createPart_Pre($grpc.ServiceCall call, $async.Future<$7.CreatePartRequest> request) async {
    return createPart(call, await request);
  }

  $async.Future<$7.ListPartsResponse> listParts_Pre($grpc.ServiceCall call, $async.Future<$7.ListPartsRequest> request) async {
    return listParts(call, await request);
  }

  $async.Future<$7.GetPartResponse> getPart_Pre($grpc.ServiceCall call, $async.Future<$7.GetPartRequest> request) async {
    return getPart(call, await request);
  }

  $async.Future<$7.UpdatePartResponse> updatePart_Pre($grpc.ServiceCall call, $async.Future<$7.UpdatePartRequest> request) async {
    return updatePart(call, await request);
  }

  $async.Future<$7.DeletePartResponse> deletePart_Pre($grpc.ServiceCall call, $async.Future<$7.DeletePartRequest> request) async {
    return deletePart(call, await request);
  }

  $async.Future<$7.CreatePartResponse> createPart($grpc.ServiceCall call, $7.CreatePartRequest request);
  $async.Future<$7.ListPartsResponse> listParts($grpc.ServiceCall call, $7.ListPartsRequest request);
  $async.Future<$7.GetPartResponse> getPart($grpc.ServiceCall call, $7.GetPartRequest request);
  $async.Future<$7.UpdatePartResponse> updatePart($grpc.ServiceCall call, $7.UpdatePartRequest request);
  $async.Future<$7.DeletePartResponse> deletePart($grpc.ServiceCall call, $7.DeletePartRequest request);
}
