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

import 'location_service.pb.dart' as $2;

export 'location_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.LocationService')
class LocationServiceClient extends $grpc.Client {
  static final _$createLocation = $grpc.ClientMethod<$2.CreateLocationRequest, $2.CreateLocationResponse>(
      '/bst.v1.LocationService/CreateLocation',
      ($2.CreateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateLocationResponse.fromBuffer(value));
  static final _$listLocations = $grpc.ClientMethod<$2.ListLocationsRequest, $2.ListLocationsResponse>(
      '/bst.v1.LocationService/ListLocations',
      ($2.ListLocationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListLocationsResponse.fromBuffer(value));
  static final _$getLocation = $grpc.ClientMethod<$2.GetLocationRequest, $2.GetLocationResponse>(
      '/bst.v1.LocationService/GetLocation',
      ($2.GetLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetLocationResponse.fromBuffer(value));
  static final _$updateLocation = $grpc.ClientMethod<$2.UpdateLocationRequest, $2.UpdateLocationResponse>(
      '/bst.v1.LocationService/UpdateLocation',
      ($2.UpdateLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateLocationResponse.fromBuffer(value));
  static final _$deleteLocation = $grpc.ClientMethod<$2.DeleteLocationRequest, $2.DeleteLocationResponse>(
      '/bst.v1.LocationService/DeleteLocation',
      ($2.DeleteLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteLocationResponse.fromBuffer(value));

  LocationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateLocationResponse> createLocation($2.CreateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createLocation, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListLocationsResponse> listLocations($2.ListLocationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLocations, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetLocationResponse> getLocation($2.GetLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocation, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateLocationResponse> updateLocation($2.UpdateLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLocation, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteLocationResponse> deleteLocation($2.DeleteLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLocation, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.LocationService')
abstract class LocationServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.LocationService';

  LocationServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateLocationRequest, $2.CreateLocationResponse>(
        'CreateLocation',
        createLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateLocationRequest.fromBuffer(value),
        ($2.CreateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListLocationsRequest, $2.ListLocationsResponse>(
        'ListLocations',
        listLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListLocationsRequest.fromBuffer(value),
        ($2.ListLocationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetLocationRequest, $2.GetLocationResponse>(
        'GetLocation',
        getLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetLocationRequest.fromBuffer(value),
        ($2.GetLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateLocationRequest, $2.UpdateLocationResponse>(
        'UpdateLocation',
        updateLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateLocationRequest.fromBuffer(value),
        ($2.UpdateLocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteLocationRequest, $2.DeleteLocationResponse>(
        'DeleteLocation',
        deleteLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteLocationRequest.fromBuffer(value),
        ($2.DeleteLocationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateLocationResponse> createLocation_Pre($grpc.ServiceCall call, $async.Future<$2.CreateLocationRequest> request) async {
    return createLocation(call, await request);
  }

  $async.Future<$2.ListLocationsResponse> listLocations_Pre($grpc.ServiceCall call, $async.Future<$2.ListLocationsRequest> request) async {
    return listLocations(call, await request);
  }

  $async.Future<$2.GetLocationResponse> getLocation_Pre($grpc.ServiceCall call, $async.Future<$2.GetLocationRequest> request) async {
    return getLocation(call, await request);
  }

  $async.Future<$2.UpdateLocationResponse> updateLocation_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateLocationRequest> request) async {
    return updateLocation(call, await request);
  }

  $async.Future<$2.DeleteLocationResponse> deleteLocation_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteLocationRequest> request) async {
    return deleteLocation(call, await request);
  }

  $async.Future<$2.CreateLocationResponse> createLocation($grpc.ServiceCall call, $2.CreateLocationRequest request);
  $async.Future<$2.ListLocationsResponse> listLocations($grpc.ServiceCall call, $2.ListLocationsRequest request);
  $async.Future<$2.GetLocationResponse> getLocation($grpc.ServiceCall call, $2.GetLocationRequest request);
  $async.Future<$2.UpdateLocationResponse> updateLocation($grpc.ServiceCall call, $2.UpdateLocationRequest request);
  $async.Future<$2.DeleteLocationResponse> deleteLocation($grpc.ServiceCall call, $2.DeleteLocationRequest request);
}
