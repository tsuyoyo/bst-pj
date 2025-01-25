//
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Mention_MentionType extends $pb.ProtobufEnum {
  static const Mention_MentionType MENTION_TYPE_UNSPECIFIED = Mention_MentionType._(0, _omitEnumNames ? '' : 'MENTION_TYPE_UNSPECIFIED');
  static const Mention_MentionType MENTION_TYPE_USER = Mention_MentionType._(1, _omitEnumNames ? '' : 'MENTION_TYPE_USER');
  static const Mention_MentionType MENTION_TYPE_ALL_SESSION_PARTICIPANTS = Mention_MentionType._(2, _omitEnumNames ? '' : 'MENTION_TYPE_ALL_SESSION_PARTICIPANTS');
  static const Mention_MentionType MENTION_TYPE_ALL_THREAD_PARTICIPANTS = Mention_MentionType._(3, _omitEnumNames ? '' : 'MENTION_TYPE_ALL_THREAD_PARTICIPANTS');

  static const $core.List<Mention_MentionType> values = <Mention_MentionType> [
    MENTION_TYPE_UNSPECIFIED,
    MENTION_TYPE_USER,
    MENTION_TYPE_ALL_SESSION_PARTICIPANTS,
    MENTION_TYPE_ALL_THREAD_PARTICIPANTS,
  ];

  static final $core.Map<$core.int, Mention_MentionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Mention_MentionType? valueOf($core.int value) => _byValue[value];

  const Mention_MentionType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
