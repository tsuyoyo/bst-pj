//
//  Generated code. Do not modify.
//  source: bst/v1/session_organizer_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session.pb.dart' as $36;

class ListSessionOrganizersRequest extends $pb.GeneratedMessage {
  factory ListSessionOrganizersRequest() => create();
  ListSessionOrganizersRequest._() : super();
  factory ListSessionOrganizersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionOrganizersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionOrganizersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersRequest clone() => ListSessionOrganizersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersRequest copyWith(void Function(ListSessionOrganizersRequest) updates) => super.copyWith((message) => updates(message as ListSessionOrganizersRequest)) as ListSessionOrganizersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersRequest create() => ListSessionOrganizersRequest._();
  ListSessionOrganizersRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionOrganizersRequest> createRepeated() => $pb.PbList<ListSessionOrganizersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionOrganizersRequest>(create);
  static ListSessionOrganizersRequest? _defaultInstance;
}

class ListSessionOrganizersResponse extends $pb.GeneratedMessage {
  factory ListSessionOrganizersResponse({
    $core.Iterable<$36.SessionParticipant>? organizers,
  }) {
    final $result = create();
    if (organizers != null) {
      $result.organizers.addAll(organizers);
    }
    return $result;
  }
  ListSessionOrganizersResponse._() : super();
  factory ListSessionOrganizersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSessionOrganizersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSessionOrganizersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..pc<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'organizers', $pb.PbFieldType.PM, subBuilder: $36.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersResponse clone() => ListSessionOrganizersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSessionOrganizersResponse copyWith(void Function(ListSessionOrganizersResponse) updates) => super.copyWith((message) => updates(message as ListSessionOrganizersResponse)) as ListSessionOrganizersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersResponse create() => ListSessionOrganizersResponse._();
  ListSessionOrganizersResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionOrganizersResponse> createRepeated() => $pb.PbList<ListSessionOrganizersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionOrganizersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSessionOrganizersResponse>(create);
  static ListSessionOrganizersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$36.SessionParticipant> get organizers => $_getList(0);
}

class AddSessionOrganizerRequest extends $pb.GeneratedMessage {
  factory AddSessionOrganizerRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  AddSessionOrganizerRequest._() : super();
  factory AddSessionOrganizerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionOrganizerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionOrganizerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerRequest clone() => AddSessionOrganizerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerRequest copyWith(void Function(AddSessionOrganizerRequest) updates) => super.copyWith((message) => updates(message as AddSessionOrganizerRequest)) as AddSessionOrganizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerRequest create() => AddSessionOrganizerRequest._();
  AddSessionOrganizerRequest createEmptyInstance() => create();
  static $pb.PbList<AddSessionOrganizerRequest> createRepeated() => $pb.PbList<AddSessionOrganizerRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionOrganizerRequest>(create);
  static AddSessionOrganizerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class AddSessionOrganizerResponse extends $pb.GeneratedMessage {
  factory AddSessionOrganizerResponse({
    $36.SessionParticipant? organizer,
  }) {
    final $result = create();
    if (organizer != null) {
      $result.organizer = organizer;
    }
    return $result;
  }
  AddSessionOrganizerResponse._() : super();
  factory AddSessionOrganizerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSessionOrganizerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSessionOrganizerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOM<$36.SessionParticipant>(1, _omitFieldNames ? '' : 'organizer', subBuilder: $36.SessionParticipant.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerResponse clone() => AddSessionOrganizerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSessionOrganizerResponse copyWith(void Function(AddSessionOrganizerResponse) updates) => super.copyWith((message) => updates(message as AddSessionOrganizerResponse)) as AddSessionOrganizerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerResponse create() => AddSessionOrganizerResponse._();
  AddSessionOrganizerResponse createEmptyInstance() => create();
  static $pb.PbList<AddSessionOrganizerResponse> createRepeated() => $pb.PbList<AddSessionOrganizerResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSessionOrganizerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSessionOrganizerResponse>(create);
  static AddSessionOrganizerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $36.SessionParticipant get organizer => $_getN(0);
  @$pb.TagNumber(1)
  set organizer($36.SessionParticipant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizer() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizer() => clearField(1);
  @$pb.TagNumber(1)
  $36.SessionParticipant ensureOrganizer() => $_ensure(0);
}

class DeleteSessionOrganizerRequest extends $pb.GeneratedMessage {
  factory DeleteSessionOrganizerRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  DeleteSessionOrganizerRequest._() : super();
  factory DeleteSessionOrganizerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionOrganizerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionOrganizerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerRequest clone() => DeleteSessionOrganizerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerRequest copyWith(void Function(DeleteSessionOrganizerRequest) updates) => super.copyWith((message) => updates(message as DeleteSessionOrganizerRequest)) as DeleteSessionOrganizerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerRequest create() => DeleteSessionOrganizerRequest._();
  DeleteSessionOrganizerRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionOrganizerRequest> createRepeated() => $pb.PbList<DeleteSessionOrganizerRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionOrganizerRequest>(create);
  static DeleteSessionOrganizerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class DeleteSessionOrganizerResponse extends $pb.GeneratedMessage {
  factory DeleteSessionOrganizerResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteSessionOrganizerResponse._() : super();
  factory DeleteSessionOrganizerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSessionOrganizerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSessionOrganizerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerResponse clone() => DeleteSessionOrganizerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSessionOrganizerResponse copyWith(void Function(DeleteSessionOrganizerResponse) updates) => super.copyWith((message) => updates(message as DeleteSessionOrganizerResponse)) as DeleteSessionOrganizerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerResponse create() => DeleteSessionOrganizerResponse._();
  DeleteSessionOrganizerResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSessionOrganizerResponse> createRepeated() => $pb.PbList<DeleteSessionOrganizerResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSessionOrganizerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSessionOrganizerResponse>(create);
  static DeleteSessionOrganizerResponse? _defaultInstance;

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
