//
//  Generated code. Do not modify.
//  source: bst/v1/location_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'area.pb.dart' as $32;
import 'location.pb.dart' as $35;

class CreateLocationRequest extends $pb.GeneratedMessage {
  factory CreateLocationRequest({
    $core.String? name,
    $core.String? googleMapsUrl,
    $core.String? additionalInfo,
    $core.int? areaId,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (googleMapsUrl != null) {
      $result.googleMapsUrl = googleMapsUrl;
    }
    if (additionalInfo != null) {
      $result.additionalInfo = additionalInfo;
    }
    if (areaId != null) {
      $result.areaId = areaId;
    }
    return $result;
  }
  CreateLocationRequest._() : super();
  factory CreateLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'googleMapsUrl')
    ..aOS(3, _omitFieldNames ? '' : 'additionalInfo')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'areaId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateLocationRequest clone() => CreateLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateLocationRequest copyWith(void Function(CreateLocationRequest) updates) => super.copyWith((message) => updates(message as CreateLocationRequest)) as CreateLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateLocationRequest create() => CreateLocationRequest._();
  CreateLocationRequest createEmptyInstance() => create();
  static $pb.PbList<CreateLocationRequest> createRepeated() => $pb.PbList<CreateLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateLocationRequest>(create);
  static CreateLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get googleMapsUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set googleMapsUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoogleMapsUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoogleMapsUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get additionalInfo => $_getSZ(2);
  @$pb.TagNumber(3)
  set additionalInfo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdditionalInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdditionalInfo() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get areaId => $_getIZ(3);
  @$pb.TagNumber(4)
  set areaId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAreaId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAreaId() => clearField(4);
}

class CreateLocationResponse extends $pb.GeneratedMessage {
  factory CreateLocationResponse({
    $35.Location? location,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  CreateLocationResponse._() : super();
  factory CreateLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateLocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$35.Location>(1, _omitFieldNames ? '' : 'location', subBuilder: $35.Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateLocationResponse clone() => CreateLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateLocationResponse copyWith(void Function(CreateLocationResponse) updates) => super.copyWith((message) => updates(message as CreateLocationResponse)) as CreateLocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateLocationResponse create() => CreateLocationResponse._();
  CreateLocationResponse createEmptyInstance() => create();
  static $pb.PbList<CreateLocationResponse> createRepeated() => $pb.PbList<CreateLocationResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateLocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateLocationResponse>(create);
  static CreateLocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $35.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($35.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $35.Location ensureLocation() => $_ensure(0);
}

class ListLocationsRequest extends $pb.GeneratedMessage {
  factory ListLocationsRequest({
    $core.int? pageSize,
    $core.String? pageToken,
    $32.Area? area,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (area != null) {
      $result.area = area;
    }
    return $result;
  }
  ListLocationsRequest._() : super();
  factory ListLocationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLocationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListLocationsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..aOM<$32.Area>(3, _omitFieldNames ? '' : 'area', subBuilder: $32.Area.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLocationsRequest clone() => ListLocationsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLocationsRequest copyWith(void Function(ListLocationsRequest) updates) => super.copyWith((message) => updates(message as ListLocationsRequest)) as ListLocationsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLocationsRequest create() => ListLocationsRequest._();
  ListLocationsRequest createEmptyInstance() => create();
  static $pb.PbList<ListLocationsRequest> createRepeated() => $pb.PbList<ListLocationsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListLocationsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLocationsRequest>(create);
  static ListLocationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $32.Area get area => $_getN(2);
  @$pb.TagNumber(3)
  set area($32.Area v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasArea() => $_has(2);
  @$pb.TagNumber(3)
  void clearArea() => clearField(3);
  @$pb.TagNumber(3)
  $32.Area ensureArea() => $_ensure(2);
}

class ListLocationsResponse extends $pb.GeneratedMessage {
  factory ListLocationsResponse({
    $core.Iterable<$35.Location>? locations,
    $core.String? nextPageToken,
    $core.int? totalSize,
  }) {
    final $result = create();
    if (locations != null) {
      $result.locations.addAll(locations);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    return $result;
  }
  ListLocationsResponse._() : super();
  factory ListLocationsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLocationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListLocationsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$35.Location>(1, _omitFieldNames ? '' : 'locations', $pb.PbFieldType.PM, subBuilder: $35.Location.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLocationsResponse clone() => ListLocationsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLocationsResponse copyWith(void Function(ListLocationsResponse) updates) => super.copyWith((message) => updates(message as ListLocationsResponse)) as ListLocationsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLocationsResponse create() => ListLocationsResponse._();
  ListLocationsResponse createEmptyInstance() => create();
  static $pb.PbList<ListLocationsResponse> createRepeated() => $pb.PbList<ListLocationsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListLocationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLocationsResponse>(create);
  static ListLocationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$35.Location> get locations => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);
}

class GetLocationRequest extends $pb.GeneratedMessage {
  factory GetLocationRequest({
    $core.int? locationId,
  }) {
    final $result = create();
    if (locationId != null) {
      $result.locationId = locationId;
    }
    return $result;
  }
  GetLocationRequest._() : super();
  factory GetLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationRequest clone() => GetLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationRequest copyWith(void Function(GetLocationRequest) updates) => super.copyWith((message) => updates(message as GetLocationRequest)) as GetLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLocationRequest create() => GetLocationRequest._();
  GetLocationRequest createEmptyInstance() => create();
  static $pb.PbList<GetLocationRequest> createRepeated() => $pb.PbList<GetLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationRequest>(create);
  static GetLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get locationId => $_getIZ(0);
  @$pb.TagNumber(1)
  set locationId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);
}

class GetLocationResponse extends $pb.GeneratedMessage {
  factory GetLocationResponse({
    $35.Location? location,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  GetLocationResponse._() : super();
  factory GetLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$35.Location>(1, _omitFieldNames ? '' : 'location', subBuilder: $35.Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocationResponse clone() => GetLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocationResponse copyWith(void Function(GetLocationResponse) updates) => super.copyWith((message) => updates(message as GetLocationResponse)) as GetLocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLocationResponse create() => GetLocationResponse._();
  GetLocationResponse createEmptyInstance() => create();
  static $pb.PbList<GetLocationResponse> createRepeated() => $pb.PbList<GetLocationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationResponse>(create);
  static GetLocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $35.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($35.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $35.Location ensureLocation() => $_ensure(0);
}

class UpdateLocationRequest extends $pb.GeneratedMessage {
  factory UpdateLocationRequest({
    $core.int? locationId,
    $core.String? name,
    $core.String? googleMapsUrl,
    $core.String? additionalInfo,
    $core.int? areaId,
  }) {
    final $result = create();
    if (locationId != null) {
      $result.locationId = locationId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (googleMapsUrl != null) {
      $result.googleMapsUrl = googleMapsUrl;
    }
    if (additionalInfo != null) {
      $result.additionalInfo = additionalInfo;
    }
    if (areaId != null) {
      $result.areaId = areaId;
    }
    return $result;
  }
  UpdateLocationRequest._() : super();
  factory UpdateLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'googleMapsUrl')
    ..aOS(4, _omitFieldNames ? '' : 'additionalInfo')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'areaId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateLocationRequest clone() => UpdateLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateLocationRequest copyWith(void Function(UpdateLocationRequest) updates) => super.copyWith((message) => updates(message as UpdateLocationRequest)) as UpdateLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateLocationRequest create() => UpdateLocationRequest._();
  UpdateLocationRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateLocationRequest> createRepeated() => $pb.PbList<UpdateLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLocationRequest>(create);
  static UpdateLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get locationId => $_getIZ(0);
  @$pb.TagNumber(1)
  set locationId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get googleMapsUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set googleMapsUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoogleMapsUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoogleMapsUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get additionalInfo => $_getSZ(3);
  @$pb.TagNumber(4)
  set additionalInfo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAdditionalInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdditionalInfo() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get areaId => $_getIZ(4);
  @$pb.TagNumber(5)
  set areaId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAreaId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAreaId() => clearField(5);
}

class UpdateLocationResponse extends $pb.GeneratedMessage {
  factory UpdateLocationResponse({
    $35.Location? location,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  UpdateLocationResponse._() : super();
  factory UpdateLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateLocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$35.Location>(1, _omitFieldNames ? '' : 'location', subBuilder: $35.Location.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateLocationResponse clone() => UpdateLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateLocationResponse copyWith(void Function(UpdateLocationResponse) updates) => super.copyWith((message) => updates(message as UpdateLocationResponse)) as UpdateLocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateLocationResponse create() => UpdateLocationResponse._();
  UpdateLocationResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateLocationResponse> createRepeated() => $pb.PbList<UpdateLocationResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateLocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLocationResponse>(create);
  static UpdateLocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $35.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($35.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $35.Location ensureLocation() => $_ensure(0);
}

class DeleteLocationRequest extends $pb.GeneratedMessage {
  factory DeleteLocationRequest({
    $core.int? locationId,
  }) {
    final $result = create();
    if (locationId != null) {
      $result.locationId = locationId;
    }
    return $result;
  }
  DeleteLocationRequest._() : super();
  factory DeleteLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteLocationRequest clone() => DeleteLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteLocationRequest copyWith(void Function(DeleteLocationRequest) updates) => super.copyWith((message) => updates(message as DeleteLocationRequest)) as DeleteLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteLocationRequest create() => DeleteLocationRequest._();
  DeleteLocationRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteLocationRequest> createRepeated() => $pb.PbList<DeleteLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteLocationRequest>(create);
  static DeleteLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get locationId => $_getIZ(0);
  @$pb.TagNumber(1)
  set locationId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);
}

class DeleteLocationResponse extends $pb.GeneratedMessage {
  factory DeleteLocationResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteLocationResponse._() : super();
  factory DeleteLocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteLocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteLocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteLocationResponse clone() => DeleteLocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteLocationResponse copyWith(void Function(DeleteLocationResponse) updates) => super.copyWith((message) => updates(message as DeleteLocationResponse)) as DeleteLocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteLocationResponse create() => DeleteLocationResponse._();
  DeleteLocationResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteLocationResponse> createRepeated() => $pb.PbList<DeleteLocationResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteLocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteLocationResponse>(create);
  static DeleteLocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
