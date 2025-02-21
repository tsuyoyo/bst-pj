//
//  Generated code. Do not modify.
//  source: bst/v1/studio_room_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'location.pb.dart' as $28;

class CreateStudioRoomRequest extends $pb.GeneratedMessage {
  factory CreateStudioRoomRequest({
    $core.String? name,
    $core.int? capacity,
    $core.int? price,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (capacity != null) {
      $result.capacity = capacity;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  CreateStudioRoomRequest._() : super();
  factory CreateStudioRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'capacity', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioRoomRequest clone() => CreateStudioRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioRoomRequest copyWith(void Function(CreateStudioRoomRequest) updates) => super.copyWith((message) => updates(message as CreateStudioRoomRequest)) as CreateStudioRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomRequest create() => CreateStudioRoomRequest._();
  CreateStudioRoomRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStudioRoomRequest> createRepeated() => $pb.PbList<CreateStudioRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioRoomRequest>(create);
  static CreateStudioRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get capacity => $_getIZ(1);
  @$pb.TagNumber(2)
  set capacity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCapacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapacity() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get price => $_getIZ(2);
  @$pb.TagNumber(3)
  set price($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);
}

class CreateStudioRoomResponse extends $pb.GeneratedMessage {
  factory CreateStudioRoomResponse({
    $28.StudioRoom? room,
  }) {
    final $result = create();
    if (room != null) {
      $result.room = room;
    }
    return $result;
  }
  CreateStudioRoomResponse._() : super();
  factory CreateStudioRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$28.StudioRoom>(1, _omitFieldNames ? '' : 'room', subBuilder: $28.StudioRoom.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioRoomResponse clone() => CreateStudioRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioRoomResponse copyWith(void Function(CreateStudioRoomResponse) updates) => super.copyWith((message) => updates(message as CreateStudioRoomResponse)) as CreateStudioRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomResponse create() => CreateStudioRoomResponse._();
  CreateStudioRoomResponse createEmptyInstance() => create();
  static $pb.PbList<CreateStudioRoomResponse> createRepeated() => $pb.PbList<CreateStudioRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioRoomResponse>(create);
  static CreateStudioRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $28.StudioRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room($28.StudioRoom v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  $28.StudioRoom ensureRoom() => $_ensure(0);
}

class ListStudioRoomsRequest extends $pb.GeneratedMessage {
  factory ListStudioRoomsRequest({
    $core.int? studioId,
  }) {
    final $result = create();
    if (studioId != null) {
      $result.studioId = studioId;
    }
    return $result;
  }
  ListStudioRoomsRequest._() : super();
  factory ListStudioRoomsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioRoomsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioRoomsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'studioId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioRoomsRequest clone() => ListStudioRoomsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioRoomsRequest copyWith(void Function(ListStudioRoomsRequest) updates) => super.copyWith((message) => updates(message as ListStudioRoomsRequest)) as ListStudioRoomsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioRoomsRequest create() => ListStudioRoomsRequest._();
  ListStudioRoomsRequest createEmptyInstance() => create();
  static $pb.PbList<ListStudioRoomsRequest> createRepeated() => $pb.PbList<ListStudioRoomsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStudioRoomsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioRoomsRequest>(create);
  static ListStudioRoomsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get studioId => $_getIZ(0);
  @$pb.TagNumber(1)
  set studioId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudioId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudioId() => clearField(1);
}

class GetStudioRoomResponse extends $pb.GeneratedMessage {
  factory GetStudioRoomResponse({
    $28.StudioRoom? room,
  }) {
    final $result = create();
    if (room != null) {
      $result.room = room;
    }
    return $result;
  }
  GetStudioRoomResponse._() : super();
  factory GetStudioRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStudioRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStudioRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$28.StudioRoom>(1, _omitFieldNames ? '' : 'room', subBuilder: $28.StudioRoom.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStudioRoomResponse clone() => GetStudioRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStudioRoomResponse copyWith(void Function(GetStudioRoomResponse) updates) => super.copyWith((message) => updates(message as GetStudioRoomResponse)) as GetStudioRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStudioRoomResponse create() => GetStudioRoomResponse._();
  GetStudioRoomResponse createEmptyInstance() => create();
  static $pb.PbList<GetStudioRoomResponse> createRepeated() => $pb.PbList<GetStudioRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStudioRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStudioRoomResponse>(create);
  static GetStudioRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $28.StudioRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room($28.StudioRoom v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  $28.StudioRoom ensureRoom() => $_ensure(0);
}

class ListStudioRoomsResponse extends $pb.GeneratedMessage {
  factory ListStudioRoomsResponse({
    $core.Iterable<$28.StudioRoom>? rooms,
  }) {
    final $result = create();
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    return $result;
  }
  ListStudioRoomsResponse._() : super();
  factory ListStudioRoomsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioRoomsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioRoomsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$28.StudioRoom>(1, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: $28.StudioRoom.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioRoomsResponse clone() => ListStudioRoomsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioRoomsResponse copyWith(void Function(ListStudioRoomsResponse) updates) => super.copyWith((message) => updates(message as ListStudioRoomsResponse)) as ListStudioRoomsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioRoomsResponse create() => ListStudioRoomsResponse._();
  ListStudioRoomsResponse createEmptyInstance() => create();
  static $pb.PbList<ListStudioRoomsResponse> createRepeated() => $pb.PbList<ListStudioRoomsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStudioRoomsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioRoomsResponse>(create);
  static ListStudioRoomsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$28.StudioRoom> get rooms => $_getList(0);
}

/// PUT /studios/{studio_id}/rooms/{roomId}
class UpdateStudioRoomRequest extends $pb.GeneratedMessage {
  factory UpdateStudioRoomRequest({
    $core.String? name,
    $core.int? capacity,
    $core.int? size,
    $core.int? price,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (capacity != null) {
      $result.capacity = capacity;
    }
    if (size != null) {
      $result.size = size;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  UpdateStudioRoomRequest._() : super();
  factory UpdateStudioRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudioRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudioRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'capacity', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomRequest clone() => UpdateStudioRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomRequest copyWith(void Function(UpdateStudioRoomRequest) updates) => super.copyWith((message) => updates(message as UpdateStudioRoomRequest)) as UpdateStudioRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomRequest create() => UpdateStudioRoomRequest._();
  UpdateStudioRoomRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateStudioRoomRequest> createRepeated() => $pb.PbList<UpdateStudioRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudioRoomRequest>(create);
  static UpdateStudioRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get capacity => $_getIZ(1);
  @$pb.TagNumber(2)
  set capacity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCapacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapacity() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get price => $_getIZ(3);
  @$pb.TagNumber(4)
  set price($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);
}

class UpdateStudioRoomResponse extends $pb.GeneratedMessage {
  factory UpdateStudioRoomResponse({
    $28.StudioRoom? room,
  }) {
    final $result = create();
    if (room != null) {
      $result.room = room;
    }
    return $result;
  }
  UpdateStudioRoomResponse._() : super();
  factory UpdateStudioRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudioRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudioRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$28.StudioRoom>(1, _omitFieldNames ? '' : 'room', subBuilder: $28.StudioRoom.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomResponse clone() => UpdateStudioRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomResponse copyWith(void Function(UpdateStudioRoomResponse) updates) => super.copyWith((message) => updates(message as UpdateStudioRoomResponse)) as UpdateStudioRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomResponse create() => UpdateStudioRoomResponse._();
  UpdateStudioRoomResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateStudioRoomResponse> createRepeated() => $pb.PbList<UpdateStudioRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudioRoomResponse>(create);
  static UpdateStudioRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $28.StudioRoom get room => $_getN(0);
  @$pb.TagNumber(1)
  set room($28.StudioRoom v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  $28.StudioRoom ensureRoom() => $_ensure(0);
}

class DeleteStudioRoomRequest extends $pb.GeneratedMessage {
  factory DeleteStudioRoomRequest() => create();
  DeleteStudioRoomRequest._() : super();
  factory DeleteStudioRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomRequest clone() => DeleteStudioRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomRequest copyWith(void Function(DeleteStudioRoomRequest) updates) => super.copyWith((message) => updates(message as DeleteStudioRoomRequest)) as DeleteStudioRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomRequest create() => DeleteStudioRoomRequest._();
  DeleteStudioRoomRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioRoomRequest> createRepeated() => $pb.PbList<DeleteStudioRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioRoomRequest>(create);
  static DeleteStudioRoomRequest? _defaultInstance;
}

class DeleteStudioRoomResponse extends $pb.GeneratedMessage {
  factory DeleteStudioRoomResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteStudioRoomResponse._() : super();
  factory DeleteStudioRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomResponse clone() => DeleteStudioRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomResponse copyWith(void Function(DeleteStudioRoomResponse) updates) => super.copyWith((message) => updates(message as DeleteStudioRoomResponse)) as DeleteStudioRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomResponse create() => DeleteStudioRoomResponse._();
  DeleteStudioRoomResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioRoomResponse> createRepeated() => $pb.PbList<DeleteStudioRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioRoomResponse>(create);
  static DeleteStudioRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class CreateStudioRoomInfoRequest extends $pb.GeneratedMessage {
  factory CreateStudioRoomInfoRequest({
    $core.String? type,
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  CreateStudioRoomInfoRequest._() : super();
  factory CreateStudioRoomInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioRoomInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioRoomInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioRoomInfoRequest clone() => CreateStudioRoomInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioRoomInfoRequest copyWith(void Function(CreateStudioRoomInfoRequest) updates) => super.copyWith((message) => updates(message as CreateStudioRoomInfoRequest)) as CreateStudioRoomInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomInfoRequest create() => CreateStudioRoomInfoRequest._();
  CreateStudioRoomInfoRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStudioRoomInfoRequest> createRepeated() => $pb.PbList<CreateStudioRoomInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioRoomInfoRequest>(create);
  static CreateStudioRoomInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class CreateStudioRoomInfoResponse extends $pb.GeneratedMessage {
  factory CreateStudioRoomInfoResponse({
    $28.StudioRoomInfo? info,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  CreateStudioRoomInfoResponse._() : super();
  factory CreateStudioRoomInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudioRoomInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudioRoomInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$28.StudioRoomInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: $28.StudioRoomInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudioRoomInfoResponse clone() => CreateStudioRoomInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudioRoomInfoResponse copyWith(void Function(CreateStudioRoomInfoResponse) updates) => super.copyWith((message) => updates(message as CreateStudioRoomInfoResponse)) as CreateStudioRoomInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomInfoResponse create() => CreateStudioRoomInfoResponse._();
  CreateStudioRoomInfoResponse createEmptyInstance() => create();
  static $pb.PbList<CreateStudioRoomInfoResponse> createRepeated() => $pb.PbList<CreateStudioRoomInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateStudioRoomInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudioRoomInfoResponse>(create);
  static CreateStudioRoomInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $28.StudioRoomInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info($28.StudioRoomInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  $28.StudioRoomInfo ensureInfo() => $_ensure(0);
}

class ListStudioRoomInfosRequest extends $pb.GeneratedMessage {
  factory ListStudioRoomInfosRequest() => create();
  ListStudioRoomInfosRequest._() : super();
  factory ListStudioRoomInfosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioRoomInfosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioRoomInfosRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioRoomInfosRequest clone() => ListStudioRoomInfosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioRoomInfosRequest copyWith(void Function(ListStudioRoomInfosRequest) updates) => super.copyWith((message) => updates(message as ListStudioRoomInfosRequest)) as ListStudioRoomInfosRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioRoomInfosRequest create() => ListStudioRoomInfosRequest._();
  ListStudioRoomInfosRequest createEmptyInstance() => create();
  static $pb.PbList<ListStudioRoomInfosRequest> createRepeated() => $pb.PbList<ListStudioRoomInfosRequest>();
  @$core.pragma('dart2js:noInline')
  static ListStudioRoomInfosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioRoomInfosRequest>(create);
  static ListStudioRoomInfosRequest? _defaultInstance;
}

class ListStudioRoomInfosResponse extends $pb.GeneratedMessage {
  factory ListStudioRoomInfosResponse({
    $core.Iterable<$28.StudioRoomInfo>? infos,
  }) {
    final $result = create();
    if (infos != null) {
      $result.infos.addAll(infos);
    }
    return $result;
  }
  ListStudioRoomInfosResponse._() : super();
  factory ListStudioRoomInfosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListStudioRoomInfosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListStudioRoomInfosResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$28.StudioRoomInfo>(1, _omitFieldNames ? '' : 'infos', $pb.PbFieldType.PM, subBuilder: $28.StudioRoomInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListStudioRoomInfosResponse clone() => ListStudioRoomInfosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListStudioRoomInfosResponse copyWith(void Function(ListStudioRoomInfosResponse) updates) => super.copyWith((message) => updates(message as ListStudioRoomInfosResponse)) as ListStudioRoomInfosResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListStudioRoomInfosResponse create() => ListStudioRoomInfosResponse._();
  ListStudioRoomInfosResponse createEmptyInstance() => create();
  static $pb.PbList<ListStudioRoomInfosResponse> createRepeated() => $pb.PbList<ListStudioRoomInfosResponse>();
  @$core.pragma('dart2js:noInline')
  static ListStudioRoomInfosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListStudioRoomInfosResponse>(create);
  static ListStudioRoomInfosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$28.StudioRoomInfo> get infos => $_getList(0);
}

class UpdateStudioRoomInfoRequest extends $pb.GeneratedMessage {
  factory UpdateStudioRoomInfoRequest({
    $core.String? type,
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  UpdateStudioRoomInfoRequest._() : super();
  factory UpdateStudioRoomInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudioRoomInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudioRoomInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomInfoRequest clone() => UpdateStudioRoomInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomInfoRequest copyWith(void Function(UpdateStudioRoomInfoRequest) updates) => super.copyWith((message) => updates(message as UpdateStudioRoomInfoRequest)) as UpdateStudioRoomInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomInfoRequest create() => UpdateStudioRoomInfoRequest._();
  UpdateStudioRoomInfoRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateStudioRoomInfoRequest> createRepeated() => $pb.PbList<UpdateStudioRoomInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudioRoomInfoRequest>(create);
  static UpdateStudioRoomInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class UpdateStudioRoomInfoResponse extends $pb.GeneratedMessage {
  factory UpdateStudioRoomInfoResponse({
    $28.StudioRoomInfo? info,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  UpdateStudioRoomInfoResponse._() : super();
  factory UpdateStudioRoomInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudioRoomInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudioRoomInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$28.StudioRoomInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: $28.StudioRoomInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomInfoResponse clone() => UpdateStudioRoomInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudioRoomInfoResponse copyWith(void Function(UpdateStudioRoomInfoResponse) updates) => super.copyWith((message) => updates(message as UpdateStudioRoomInfoResponse)) as UpdateStudioRoomInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomInfoResponse create() => UpdateStudioRoomInfoResponse._();
  UpdateStudioRoomInfoResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateStudioRoomInfoResponse> createRepeated() => $pb.PbList<UpdateStudioRoomInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudioRoomInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudioRoomInfoResponse>(create);
  static UpdateStudioRoomInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $28.StudioRoomInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info($28.StudioRoomInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  $28.StudioRoomInfo ensureInfo() => $_ensure(0);
}

class DeleteStudioRoomInfoRequest extends $pb.GeneratedMessage {
  factory DeleteStudioRoomInfoRequest() => create();
  DeleteStudioRoomInfoRequest._() : super();
  factory DeleteStudioRoomInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioRoomInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioRoomInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomInfoRequest clone() => DeleteStudioRoomInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomInfoRequest copyWith(void Function(DeleteStudioRoomInfoRequest) updates) => super.copyWith((message) => updates(message as DeleteStudioRoomInfoRequest)) as DeleteStudioRoomInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomInfoRequest create() => DeleteStudioRoomInfoRequest._();
  DeleteStudioRoomInfoRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioRoomInfoRequest> createRepeated() => $pb.PbList<DeleteStudioRoomInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioRoomInfoRequest>(create);
  static DeleteStudioRoomInfoRequest? _defaultInstance;
}

class DeleteStudioRoomInfoResponse extends $pb.GeneratedMessage {
  factory DeleteStudioRoomInfoResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteStudioRoomInfoResponse._() : super();
  factory DeleteStudioRoomInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudioRoomInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudioRoomInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomInfoResponse clone() => DeleteStudioRoomInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudioRoomInfoResponse copyWith(void Function(DeleteStudioRoomInfoResponse) updates) => super.copyWith((message) => updates(message as DeleteStudioRoomInfoResponse)) as DeleteStudioRoomInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomInfoResponse create() => DeleteStudioRoomInfoResponse._();
  DeleteStudioRoomInfoResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteStudioRoomInfoResponse> createRepeated() => $pb.PbList<DeleteStudioRoomInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudioRoomInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudioRoomInfoResponse>(create);
  static DeleteStudioRoomInfoResponse? _defaultInstance;

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
