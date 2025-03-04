//
//  Generated code. Do not modify.
//  source: bst/v1/location_service.proto
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

import 'location_service.pb.dart' as $6;

export 'location_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.LocationService')
class LocationServiceClient extends $grpc.Client {
  static final _$createLocation = $grpc.ClientMethod<$6.CreateLocationRequest, $6.CreateLocationResponse>(
      '/bst.v1.LocationService/CreateLocation',
      ($6.CreateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateLocationResponse.fromBuffer(value));
  static final _$listLocations = $grpc.ClientMethod<$6.ListLocationsRequest, $6.ListLocationsResponse>(
      '/bst.v1.LocationService/ListLocations',
      ($6.ListLocationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListLocationsResponse.fromBuffer(value));
  static final _$getLocation = $grpc.ClientMethod<$6.GetLocationRequest, $6.GetLocationResponse>(
      '/bst.v1.LocationService/GetLocation',
      ($6.GetLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetLocationResponse.fromBuffer(value));
  static final _$updateLocation = $grpc.ClientMethod<$6.UpdateLocationRequest, $6.UpdateLocationResponse>(
      '/bst.v1.LocationService/UpdateLocation',
      ($6.UpdateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateLocationResponse.fromBuffer(value));
  static final _$deleteLocation = $grpc.ClientMethod<$6.DeleteLocationRequest, $6.DeleteLocationResponse>(
      '/bst.v1.LocationService/DeleteLocation',
      ($6.DeleteLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteLocationResponse.fromBuffer(value));

  LocationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateLocationResponse> createLocation($6.CreateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createLocation, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListLocationsResponse> listLocations($6.ListLocationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLocations, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetLocationResponse> getLocation($6.GetLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocation, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateLocationResponse> updateLocation($6.UpdateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLocation, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteLocationResponse> deleteLocation($6.DeleteLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLocation, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.LocationService')
abstract class LocationServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.LocationService';

  LocationServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateLocationRequest, $6.CreateLocationResponse>(
        'CreateLocation',
        createLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateLocationRequest.fromBuffer(value),
        ($6.CreateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListLocationsRequest, $6.ListLocationsResponse>(
        'ListLocations',
        listLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListLocationsRequest.fromBuffer(value),
        ($6.ListLocationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetLocationRequest, $6.GetLocationResponse>(
        'GetLocation',
        getLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetLocationRequest.fromBuffer(value),
        ($6.GetLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateLocationRequest, $6.UpdateLocationResponse>(
        'UpdateLocation',
        updateLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateLocationRequest.fromBuffer(value),
        ($6.UpdateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteLocationRequest, $6.DeleteLocationResponse>(
        'DeleteLocation',
        deleteLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteLocationRequest.fromBuffer(value),
        ($6.DeleteLocationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateLocationResponse> createLocation_Pre($grpc.ServiceCall call, $async.Future<$6.CreateLocationRequest> request) async {
    return createLocation(call, await request);
  }

  $async.Future<$6.ListLocationsResponse> listLocations_Pre($grpc.ServiceCall call, $async.Future<$6.ListLocationsRequest> request) async {
    return listLocations(call, await request);
  }

  $async.Future<$6.GetLocationResponse> getLocation_Pre($grpc.ServiceCall call, $async.Future<$6.GetLocationRequest> request) async {
    return getLocation(call, await request);
  }

  $async.Future<$6.UpdateLocationResponse> updateLocation_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateLocationRequest> request) async {
    return updateLocation(call, await request);
  }

  $async.Future<$6.DeleteLocationResponse> deleteLocation_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteLocationRequest> request) async {
    return deleteLocation(call, await request);
  }

  $async.Future<$6.CreateLocationResponse> createLocation($grpc.ServiceCall call, $6.CreateLocationRequest request);
  $async.Future<$6.ListLocationsResponse> listLocations($grpc.ServiceCall call, $6.ListLocationsRequest request);
  $async.Future<$6.GetLocationResponse> getLocation($grpc.ServiceCall call, $6.GetLocationRequest request);
  $async.Future<$6.UpdateLocationResponse> updateLocation($grpc.ServiceCall call, $6.UpdateLocationRequest request);
  $async.Future<$6.DeleteLocationResponse> deleteLocation($grpc.ServiceCall call, $6.DeleteLocationRequest request);
}
