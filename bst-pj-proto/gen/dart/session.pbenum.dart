//
//  Generated code. Do not modify.
//  source: session.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// セッションステータス
class SessionStatus extends $pb.ProtobufEnum {
  static const SessionStatus SESSION_STATUS_UNSPECIFIED = SessionStatus._(0, _omitEnumNames ? '' : 'SESSION_STATUS_UNSPECIFIED');
  static const SessionStatus SESSION_STATUS_DRAFT = SessionStatus._(1, _omitEnumNames ? '' : 'SESSION_STATUS_DRAFT');
  static const SessionStatus SESSION_STATUS_PUBLISHED = SessionStatus._(2, _omitEnumNames ? '' : 'SESSION_STATUS_PUBLISHED');
  static const SessionStatus SESSION_STATUS_CANCELLED = SessionStatus._(3, _omitEnumNames ? '' : 'SESSION_STATUS_CANCELLED');
  static const SessionStatus SESSION_STATUS_COMPLETED = SessionStatus._(4, _omitEnumNames ? '' : 'SESSION_STATUS_COMPLETED');

  static const $core.List<SessionStatus> values = <SessionStatus> [
    SESSION_STATUS_UNSPECIFIED,
    SESSION_STATUS_DRAFT,
    SESSION_STATUS_PUBLISHED,
    SESSION_STATUS_CANCELLED,
    SESSION_STATUS_COMPLETED,
  ];

  static final $core.Map<$core.int, SessionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SessionStatus? valueOf($core.int value) => _byValue[value];

  const SessionStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
