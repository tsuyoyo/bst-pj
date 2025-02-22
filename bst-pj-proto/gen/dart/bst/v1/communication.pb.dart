//
//  Generated code. Do not modify.
//  source: bst/v1/communication.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $29;
import 'communication.pbenum.dart';
import 'user.pb.dart' as $30;

export 'communication.pbenum.dart';

class Comment extends $pb.GeneratedMessage {
  factory Comment({
    $core.int? id,
    $core.String? content,
    $core.int? userId,
    $core.int? threadId,
    $29.Timestamp? createdAt,
    $29.Timestamp? updatedAt,
    $core.Iterable<Mention>? mentions,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (content != null) {
      $result.content = content;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (threadId != null) {
      $result.threadId = threadId;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (mentions != null) {
      $result.mentions.addAll(mentions);
    }
    return $result;
  }
  Comment._() : super();
  factory Comment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Comment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Comment', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.O3)
    ..aOM<$29.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $29.Timestamp.create)
    ..aOM<$29.Timestamp>(6, _omitFieldNames ? '' : 'updatedAt', subBuilder: $29.Timestamp.create)
    ..pc<Mention>(7, _omitFieldNames ? '' : 'mentions', $pb.PbFieldType.PM, subBuilder: Mention.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Comment clone() => Comment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Comment copyWith(void Function(Comment) updates) => super.copyWith((message) => updates(message as Comment)) as Comment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Comment create() => Comment._();
  Comment createEmptyInstance() => create();
  static $pb.PbList<Comment> createRepeated() => $pb.PbList<Comment>();
  @$core.pragma('dart2js:noInline')
  static Comment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Comment>(create);
  static Comment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get threadId => $_getIZ(3);
  @$pb.TagNumber(4)
  set threadId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasThreadId() => $_has(3);
  @$pb.TagNumber(4)
  void clearThreadId() => clearField(4);

  @$pb.TagNumber(5)
  $29.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($29.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $29.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $29.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($29.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $29.Timestamp ensureUpdatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<Mention> get mentions => $_getList(6);
}

class Thread extends $pb.GeneratedMessage {
  factory Thread({
    $core.int? id,
    $core.String? title,
    $core.String? description,
    $30.User? createdBy,
    $29.Timestamp? createdAt,
    $29.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Thread._() : super();
  factory Thread.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Thread.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Thread', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$30.User>(4, _omitFieldNames ? '' : 'createdBy', subBuilder: $30.User.create)
    ..aOM<$29.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $29.Timestamp.create)
    ..aOM<$29.Timestamp>(6, _omitFieldNames ? '' : 'updatedAt', subBuilder: $29.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Thread clone() => Thread()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Thread copyWith(void Function(Thread) updates) => super.copyWith((message) => updates(message as Thread)) as Thread;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Thread create() => Thread._();
  Thread createEmptyInstance() => create();
  static $pb.PbList<Thread> createRepeated() => $pb.PbList<Thread>();
  @$core.pragma('dart2js:noInline')
  static Thread getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Thread>(create);
  static Thread? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $30.User get createdBy => $_getN(3);
  @$pb.TagNumber(4)
  set createdBy($30.User v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedBy() => clearField(4);
  @$pb.TagNumber(4)
  $30.User ensureCreatedBy() => $_ensure(3);

  @$pb.TagNumber(5)
  $29.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($29.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $29.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $29.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($29.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $29.Timestamp ensureUpdatedAt() => $_ensure(5);
}

class Mention extends $pb.GeneratedMessage {
  factory Mention({
    Mention_MentionType? type,
    $core.String? text,
    $core.int? userId,
    $core.int? sessionId,
    $core.int? threadId,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (text != null) {
      $result.text = text;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (threadId != null) {
      $result.threadId = threadId;
    }
    return $result;
  }
  Mention._() : super();
  factory Mention.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mention.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Mention', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..e<Mention_MentionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Mention_MentionType.MENTION_TYPE_UNSPECIFIED, valueOf: Mention_MentionType.valueOf, enumValues: Mention_MentionType.values)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mention clone() => Mention()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mention copyWith(void Function(Mention) updates) => super.copyWith((message) => updates(message as Mention)) as Mention;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mention create() => Mention._();
  Mention createEmptyInstance() => create();
  static $pb.PbList<Mention> createRepeated() => $pb.PbList<Mention>();
  @$core.pragma('dart2js:noInline')
  static Mention getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mention>(create);
  static Mention? _defaultInstance;

  @$pb.TagNumber(1)
  Mention_MentionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Mention_MentionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// text to show in the comment
  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  /// Only for MENTION_TYPE_USER
  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  /// Only for MENTION_TYPE_ALL_SESSION_PARTICIPANTS
  @$pb.TagNumber(4)
  $core.int get sessionId => $_getIZ(3);
  @$pb.TagNumber(4)
  set sessionId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => clearField(4);

  /// Only for MENTION_TYPE_ALL_THREAD_PARTICIPANTS
  @$pb.TagNumber(5)
  $core.int get threadId => $_getIZ(4);
  @$pb.TagNumber(5)
  set threadId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThreadId() => $_has(4);
  @$pb.TagNumber(5)
  void clearThreadId() => clearField(5);
}

class ReactionType extends $pb.GeneratedMessage {
  factory ReactionType({
    $core.int? id,
    $core.String? name,
    $core.String? description,
    $core.String? iconUrl,
    $core.int? updatedUserId,
    $29.Timestamp? createdAt,
    $29.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (iconUrl != null) {
      $result.iconUrl = iconUrl;
    }
    if (updatedUserId != null) {
      $result.updatedUserId = updatedUserId;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  ReactionType._() : super();
  factory ReactionType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReactionType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReactionType', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'iconUrl')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'updatedUserId', $pb.PbFieldType.O3)
    ..aOM<$29.Timestamp>(6, _omitFieldNames ? '' : 'createdAt', subBuilder: $29.Timestamp.create)
    ..aOM<$29.Timestamp>(7, _omitFieldNames ? '' : 'updatedAt', subBuilder: $29.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReactionType clone() => ReactionType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReactionType copyWith(void Function(ReactionType) updates) => super.copyWith((message) => updates(message as ReactionType)) as ReactionType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReactionType create() => ReactionType._();
  ReactionType createEmptyInstance() => create();
  static $pb.PbList<ReactionType> createRepeated() => $pb.PbList<ReactionType>();
  @$core.pragma('dart2js:noInline')
  static ReactionType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReactionType>(create);
  static ReactionType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get iconUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set iconUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIconUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearIconUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get updatedUserId => $_getIZ(4);
  @$pb.TagNumber(5)
  set updatedUserId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedUserId() => clearField(5);

  @$pb.TagNumber(6)
  $29.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($29.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $29.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $29.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(7)
  set updatedAt($29.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $29.Timestamp ensureUpdatedAt() => $_ensure(6);
}

class Reaction extends $pb.GeneratedMessage {
  factory Reaction({
    $core.int? id,
    $30.User? user,
    $core.int? reactionTypeId,
    $core.int? updatedUserId,
    $29.Timestamp? createdAt,
    $29.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (user != null) {
      $result.user = user;
    }
    if (reactionTypeId != null) {
      $result.reactionTypeId = reactionTypeId;
    }
    if (updatedUserId != null) {
      $result.updatedUserId = updatedUserId;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Reaction._() : super();
  factory Reaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Reaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'bst.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$30.User>(2, _omitFieldNames ? '' : 'user', subBuilder: $30.User.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'reactionTypeId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'updatedUserId', $pb.PbFieldType.O3)
    ..aOM<$29.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $29.Timestamp.create)
    ..aOM<$29.Timestamp>(6, _omitFieldNames ? '' : 'updatedAt', subBuilder: $29.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reaction clone() => Reaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reaction copyWith(void Function(Reaction) updates) => super.copyWith((message) => updates(message as Reaction)) as Reaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Reaction create() => Reaction._();
  Reaction createEmptyInstance() => create();
  static $pb.PbList<Reaction> createRepeated() => $pb.PbList<Reaction>();
  @$core.pragma('dart2js:noInline')
  static Reaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reaction>(create);
  static Reaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $30.User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($30.User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  $30.User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get reactionTypeId => $_getIZ(2);
  @$pb.TagNumber(3)
  set reactionTypeId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReactionTypeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearReactionTypeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get updatedUserId => $_getIZ(3);
  @$pb.TagNumber(4)
  set updatedUserId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedUserId() => clearField(4);

  @$pb.TagNumber(5)
  $29.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($29.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $29.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $29.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($29.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $29.Timestamp ensureUpdatedAt() => $_ensure(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
