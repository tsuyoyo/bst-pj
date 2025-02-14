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

import 'location_service.pb.dart' as $4;

export 'location_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.LocationService')
class LocationServiceClient extends $grpc.Client {
  static final _$createLocation = $grpc.ClientMethod<$4.CreateLocationRequest, $4.CreateLocationResponse>(
      '/bst.v1.LocationService/CreateLocation',
      ($4.CreateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateLocationResponse.fromBuffer(value));
  static final _$listLocations = $grpc.ClientMethod<$4.ListLocationsRequest, $4.ListLocationsResponse>(
      '/bst.v1.LocationService/ListLocations',
      ($4.ListLocationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListLocationsResponse.fromBuffer(value));
  static final _$getLocation = $grpc.ClientMethod<$4.GetLocationRequest, $4.GetLocationResponse>(
      '/bst.v1.LocationService/GetLocation',
      ($4.GetLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetLocationResponse.fromBuffer(value));
  static final _$updateLocation = $grpc.ClientMethod<$4.UpdateLocationRequest, $4.UpdateLocationResponse>(
      '/bst.v1.LocationService/UpdateLocation',
      ($4.UpdateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateLocationResponse.fromBuffer(value));
  static final _$deleteLocation = $grpc.ClientMethod<$4.DeleteLocationRequest, $4.DeleteLocationResponse>(
      '/bst.v1.LocationService/DeleteLocation',
      ($4.DeleteLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteLocationResponse.fromBuffer(value));

  LocationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateLocationResponse> createLocation($4.CreateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createLocation, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListLocationsResponse> listLocations($4.ListLocationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLocations, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetLocationResponse> getLocation($4.GetLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocation, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateLocationResponse> updateLocation($4.UpdateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLocation, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteLocationResponse> deleteLocation($4.DeleteLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLocation, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.LocationService')
abstract class LocationServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.LocationService';

  LocationServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateLocationRequest, $4.CreateLocationResponse>(
        'CreateLocation',
        createLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateLocationRequest.fromBuffer(value),
        ($4.CreateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListLocationsRequest, $4.ListLocationsResponse>(
        'ListLocations',
        listLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListLocationsRequest.fromBuffer(value),
        ($4.ListLocationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetLocationRequest, $4.GetLocationResponse>(
        'GetLocation',
        getLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetLocationRequest.fromBuffer(value),
        ($4.GetLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateLocationRequest, $4.UpdateLocationResponse>(
        'UpdateLocation',
        updateLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateLocationRequest.fromBuffer(value),
        ($4.UpdateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteLocationRequest, $4.DeleteLocationResponse>(
        'DeleteLocation',
        deleteLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteLocationRequest.fromBuffer(value),
        ($4.DeleteLocationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateLocationResponse> createLocation_Pre($grpc.ServiceCall call, $async.Future<$4.CreateLocationRequest> request) async {
    return createLocation(call, await request);
  }

  $async.Future<$4.ListLocationsResponse> listLocations_Pre($grpc.ServiceCall call, $async.Future<$4.ListLocationsRequest> request) async {
    return listLocations(call, await request);
  }

  $async.Future<$4.GetLocationResponse> getLocation_Pre($grpc.ServiceCall call, $async.Future<$4.GetLocationRequest> request) async {
    return getLocation(call, await request);
  }

  $async.Future<$4.UpdateLocationResponse> updateLocation_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateLocationRequest> request) async {
    return updateLocation(call, await request);
  }

  $async.Future<$4.DeleteLocationResponse> deleteLocation_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteLocationRequest> request) async {
    return deleteLocation(call, await request);
  }

  $async.Future<$4.CreateLocationResponse> createLocation($grpc.ServiceCall call, $4.CreateLocationRequest request);
  $async.Future<$4.ListLocationsResponse> listLocations($grpc.ServiceCall call, $4.ListLocationsRequest request);
  $async.Future<$4.GetLocationResponse> getLocation($grpc.ServiceCall call, $4.GetLocationRequest request);
  $async.Future<$4.UpdateLocationResponse> updateLocation($grpc.ServiceCall call, $4.UpdateLocationRequest request);
  $async.Future<$4.DeleteLocationResponse> deleteLocation($grpc.ServiceCall call, $4.DeleteLocationRequest request);
}
