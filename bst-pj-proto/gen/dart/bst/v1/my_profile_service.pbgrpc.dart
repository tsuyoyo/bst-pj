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

import 'my_profile_service.pb.dart' as $7;

export 'my_profile_service.pb.dart';

@$pb.GrpcServiceName('bst.v1.MyProfileService')
class MyProfileServiceClient extends $grpc.Client {
  static final _$updateIntroduction = $grpc.ClientMethod<$7.UpdateIntroductionRequest, $7.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateIntroduction',
      ($7.UpdateIntroductionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));
  static final _$updateUserName = $grpc.ClientMethod<$7.UpdateUserNameRequest, $7.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserName',
      ($7.UpdateUserNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));
  static final _$updateUserIcon = $grpc.ClientMethod<$7.UpdateUserIconRequest, $7.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserIcon',
      ($7.UpdateUserIconRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));
  static final _$updateUserGenres = $grpc.ClientMethod<$7.UpdateUserGenresRequest, $7.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserGenres',
      ($7.UpdateUserGenresRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));
  static final _$updateUserArtists = $grpc.ClientMethod<$7.UpdateUserArtistsRequest, $7.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserArtists',
      ($7.UpdateUserArtistsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));
  static final _$updateUserParts = $grpc.ClientMethod<$7.UpdateUserPartsRequest, $7.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserParts',
      ($7.UpdateUserPartsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));
  static final _$updateUserArea = $grpc.ClientMethod<$7.UpdateUserAreaRequest, $7.UpdateResponse>(
      '/bst.v1.MyProfileService/UpdateUserArea',
      ($7.UpdateUserAreaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));

  MyProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.UpdateResponse> updateIntroduction($7.UpdateIntroductionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateIntroduction, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateResponse> updateUserName($7.UpdateUserNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserName, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateResponse> updateUserIcon($7.UpdateUserIconRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserIcon, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateResponse> updateUserGenres($7.UpdateUserGenresRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserGenres, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateResponse> updateUserArtists($7.UpdateUserArtistsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserArtists, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateResponse> updateUserParts($7.UpdateUserPartsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserParts, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateResponse> updateUserArea($7.UpdateUserAreaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserArea, request, options: options);
  }
}

@$pb.GrpcServiceName('bst.v1.MyProfileService')
abstract class MyProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'bst.v1.MyProfileService';

  MyProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.UpdateIntroductionRequest, $7.UpdateResponse>(
        'UpdateIntroduction',
        updateIntroduction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateIntroductionRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateUserNameRequest, $7.UpdateResponse>(
        'UpdateUserName',
        updateUserName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateUserNameRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateUserIconRequest, $7.UpdateResponse>(
        'UpdateUserIcon',
        updateUserIcon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateUserIconRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateUserGenresRequest, $7.UpdateResponse>(
        'UpdateUserGenres',
        updateUserGenres_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateUserGenresRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateUserArtistsRequest, $7.UpdateResponse>(
        'UpdateUserArtists',
        updateUserArtists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateUserArtistsRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateUserPartsRequest, $7.UpdateResponse>(
        'UpdateUserParts',
        updateUserParts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateUserPartsRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateUserAreaRequest, $7.UpdateResponse>(
        'UpdateUserArea',
        updateUserArea_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateUserAreaRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.UpdateResponse> updateIntroduction_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateIntroductionRequest> request) async {
    return updateIntroduction(call, await request);
  }

  $async.Future<$7.UpdateResponse> updateUserName_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateUserNameRequest> request) async {
    return updateUserName(call, await request);
  }

  $async.Future<$7.UpdateResponse> updateUserIcon_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateUserIconRequest> request) async {
    return updateUserIcon(call, await request);
  }

  $async.Future<$7.UpdateResponse> updateUserGenres_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateUserGenresRequest> request) async {
    return updateUserGenres(call, await request);
  }

  $async.Future<$7.UpdateResponse> updateUserArtists_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateUserArtistsRequest> request) async {
    return updateUserArtists(call, await request);
  }

  $async.Future<$7.UpdateResponse> updateUserParts_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateUserPartsRequest> request) async {
    return updateUserParts(call, await request);
  }

  $async.Future<$7.UpdateResponse> updateUserArea_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateUserAreaRequest> request) async {
    return updateUserArea(call, await request);
  }

  $async.Future<$7.UpdateResponse> updateIntroduction($grpc.ServiceCall call, $7.UpdateIntroductionRequest request);
  $async.Future<$7.UpdateResponse> updateUserName($grpc.ServiceCall call, $7.UpdateUserNameRequest request);
  $async.Future<$7.UpdateResponse> updateUserIcon($grpc.ServiceCall call, $7.UpdateUserIconRequest request);
  $async.Future<$7.UpdateResponse> updateUserGenres($grpc.ServiceCall call, $7.UpdateUserGenresRequest request);
  $async.Future<$7.UpdateResponse> updateUserArtists($grpc.ServiceCall call, $7.UpdateUserArtistsRequest request);
  $async.Future<$7.UpdateResponse> updateUserParts($grpc.ServiceCall call, $7.UpdateUserPartsRequest request);
  $async.Future<$7.UpdateResponse> updateUserArea($grpc.ServiceCall call, $7.UpdateUserAreaRequest request);
}
