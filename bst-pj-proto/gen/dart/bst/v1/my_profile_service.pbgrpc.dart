//
//  Generated code. Do not modify.
//  source: bst/v1/my_profile_service.proto
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

import 'my_profile_service.pb.dart' as $6;

export 'my_profile_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.MyProfileService')
class MyProfileServiceClient extends $grpc.Client {
  static final _$updateIntroduction = $grpc.ClientMethod<$6.UpdateIntroductionRequest, $6.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateIntroduction',
      ($6.UpdateIntroductionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateResponse.fromBuffer(value));
  static final _$updateUserName = $grpc.ClientMethod<$6.UpdateUserNameRequest, $6.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserName',
      ($6.UpdateUserNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateResponse.fromBuffer(value));
  static final _$updateUserIcon = $grpc.ClientMethod<$6.UpdateUserIconRequest, $6.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserIcon',
      ($6.UpdateUserIconRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateResponse.fromBuffer(value));
  static final _$updateUserGenres = $grpc.ClientMethod<$6.UpdateUserGenresRequest, $6.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserGenres',
      ($6.UpdateUserGenresRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateResponse.fromBuffer(value));
  static final _$updateUserArtists = $grpc.ClientMethod<$6.UpdateUserArtistsRequest, $6.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserArtists',
      ($6.UpdateUserArtistsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateResponse.fromBuffer(value));
  static final _$updateUserParts = $grpc.ClientMethod<$6.UpdateUserPartsRequest, $6.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserParts',
      ($6.UpdateUserPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateResponse.fromBuffer(value));
  static final _$updateUserArea = $grpc.ClientMethod<$6.UpdateUserAreaRequest, $6.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserArea',
      ($6.UpdateUserAreaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateResponse.fromBuffer(value));

  MyProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.UpdateResponse> updateIntroduction($6.UpdateIntroductionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateIntroduction, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateResponse> updateUserName($6.UpdateUserNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserName, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateResponse> updateUserIcon($6.UpdateUserIconRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserIcon, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateResponse> updateUserGenres($6.UpdateUserGenresRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserGenres, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateResponse> updateUserArtists($6.UpdateUserArtistsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserArtists, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateResponse> updateUserParts($6.UpdateUserPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserParts, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateResponse> updateUserArea($6.UpdateUserAreaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserArea, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.MyProfileService')
abstract class MyProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.MyProfileService';

  MyProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.UpdateIntroductionRequest, $6.UpdateResponse>(
        'UpdateIntroduction',
        updateIntroduction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateIntroductionRequest.fromBuffer(value),
        ($6.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateUserNameRequest, $6.UpdateResponse>(
        'UpdateUserName',
        updateUserName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateUserNameRequest.fromBuffer(value),
        ($6.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateUserIconRequest, $6.UpdateResponse>(
        'UpdateUserIcon',
        updateUserIcon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateUserIconRequest.fromBuffer(value),
        ($6.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateUserGenresRequest, $6.UpdateResponse>(
        'UpdateUserGenres',
        updateUserGenres_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateUserGenresRequest.fromBuffer(value),
        ($6.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateUserArtistsRequest, $6.UpdateResponse>(
        'UpdateUserArtists',
        updateUserArtists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateUserArtistsRequest.fromBuffer(value),
        ($6.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateUserPartsRequest, $6.UpdateResponse>(
        'UpdateUserParts',
        updateUserParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateUserPartsRequest.fromBuffer(value),
        ($6.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateUserAreaRequest, $6.UpdateResponse>(
        'UpdateUserArea',
        updateUserArea_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateUserAreaRequest.fromBuffer(value),
        ($6.UpdateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.UpdateResponse> updateIntroduction_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateIntroductionRequest> request) async {
    return updateIntroduction(call, await request);
  }

  $async.Future<$6.UpdateResponse> updateUserName_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateUserNameRequest> request) async {
    return updateUserName(call, await request);
  }

  $async.Future<$6.UpdateResponse> updateUserIcon_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateUserIconRequest> request) async {
    return updateUserIcon(call, await request);
  }

  $async.Future<$6.UpdateResponse> updateUserGenres_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateUserGenresRequest> request) async {
    return updateUserGenres(call, await request);
  }

  $async.Future<$6.UpdateResponse> updateUserArtists_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateUserArtistsRequest> request) async {
    return updateUserArtists(call, await request);
  }

  $async.Future<$6.UpdateResponse> updateUserParts_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateUserPartsRequest> request) async {
    return updateUserParts(call, await request);
  }

  $async.Future<$6.UpdateResponse> updateUserArea_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateUserAreaRequest> request) async {
    return updateUserArea(call, await request);
  }

  $async.Future<$6.UpdateResponse> updateIntroduction($grpc.ServiceCall call, $6.UpdateIntroductionRequest request);
  $async.Future<$6.UpdateResponse> updateUserName($grpc.ServiceCall call, $6.UpdateUserNameRequest request);
  $async.Future<$6.UpdateResponse> updateUserIcon($grpc.ServiceCall call, $6.UpdateUserIconRequest request);
  $async.Future<$6.UpdateResponse> updateUserGenres($grpc.ServiceCall call, $6.UpdateUserGenresRequest request);
  $async.Future<$6.UpdateResponse> updateUserArtists($grpc.ServiceCall call, $6.UpdateUserArtistsRequest request);
  $async.Future<$6.UpdateResponse> updateUserParts($grpc.ServiceCall call, $6.UpdateUserPartsRequest request);
  $async.Future<$6.UpdateResponse> updateUserArea($grpc.ServiceCall call, $6.UpdateUserAreaRequest request);
}
