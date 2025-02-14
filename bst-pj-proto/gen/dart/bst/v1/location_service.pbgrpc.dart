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

import 'location_service.pb.dart' as $5;

export 'location_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.LocationService')
class LocationServiceClient extends $grpc.Client {
  static final _$createLocation = $grpc.ClientMethod<$5.CreateLocationRequest, $5.CreateLocationResponse>(
      '/bst.v1.LocationService/CreateLocation',
      ($5.CreateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateLocationResponse.fromBuffer(value));
  static final _$listLocations = $grpc.ClientMethod<$5.ListLocationsRequest, $5.ListLocationsResponse>(
      '/bst.v1.LocationService/ListLocations',
      ($5.ListLocationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListLocationsResponse.fromBuffer(value));
  static final _$getLocation = $grpc.ClientMethod<$5.GetLocationRequest, $5.GetLocationResponse>(
      '/bst.v1.LocationService/GetLocation',
      ($5.GetLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetLocationResponse.fromBuffer(value));
  static final _$updateLocation = $grpc.ClientMethod<$5.UpdateLocationRequest, $5.UpdateLocationResponse>(
      '/bst.v1.LocationService/UpdateLocation',
      ($5.UpdateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateLocationResponse.fromBuffer(value));
  static final _$deleteLocation = $grpc.ClientMethod<$5.DeleteLocationRequest, $5.DeleteLocationResponse>(
      '/bst.v1.LocationService/DeleteLocation',
      ($5.DeleteLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteLocationResponse.fromBuffer(value));

  LocationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateLocationResponse> createLocation($5.CreateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListLocationsResponse> listLocations($5.ListLocationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLocations, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetLocationResponse> getLocation($5.GetLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateLocationResponse> updateLocation($5.UpdateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteLocationResponse> deleteLocation($5.DeleteLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLocation, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.LocationService')
abstract class LocationServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.LocationService';

  LocationServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateLocationRequest, $5.CreateLocationResponse>(
        'CreateLocation',
        createLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateLocationRequest.fromBuffer(value),
        ($5.CreateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListLocationsRequest, $5.ListLocationsResponse>(
        'ListLocations',
        listLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListLocationsRequest.fromBuffer(value),
        ($5.ListLocationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetLocationRequest, $5.GetLocationResponse>(
        'GetLocation',
        getLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetLocationRequest.fromBuffer(value),
        ($5.GetLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateLocationRequest, $5.UpdateLocationResponse>(
        'UpdateLocation',
        updateLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateLocationRequest.fromBuffer(value),
        ($5.UpdateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteLocationRequest, $5.DeleteLocationResponse>(
        'DeleteLocation',
        deleteLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteLocationRequest.fromBuffer(value),
        ($5.DeleteLocationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateLocationResponse> createLocation_Pre($grpc.ServiceCall call, $async.Future<$5.CreateLocationRequest> request) async {
    return createLocation(call, await request);
  }

  $async.Future<$5.ListLocationsResponse> listLocations_Pre($grpc.ServiceCall call, $async.Future<$5.ListLocationsRequest> request) async {
    return listLocations(call, await request);
  }

  $async.Future<$5.GetLocationResponse> getLocation_Pre($grpc.ServiceCall call, $async.Future<$5.GetLocationRequest> request) async {
    return getLocation(call, await request);
  }

  $async.Future<$5.UpdateLocationResponse> updateLocation_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateLocationRequest> request) async {
    return updateLocation(call, await request);
  }

  $async.Future<$5.DeleteLocationResponse> deleteLocation_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteLocationRequest> request) async {
    return deleteLocation(call, await request);
  }

  $async.Future<$5.CreateLocationResponse> createLocation($grpc.ServiceCall call, $5.CreateLocationRequest request);
  $async.Future<$5.ListLocationsResponse> listLocations($grpc.ServiceCall call, $5.ListLocationsRequest request);
  $async.Future<$5.GetLocationResponse> getLocation($grpc.ServiceCall call, $5.GetLocationRequest request);
  $async.Future<$5.UpdateLocationResponse> updateLocation($grpc.ServiceCall call, $5.UpdateLocationRequest request);
  $async.Future<$5.DeleteLocationResponse> deleteLocation($grpc.ServiceCall call, $5.DeleteLocationRequest request);
}
