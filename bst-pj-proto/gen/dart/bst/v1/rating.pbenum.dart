//
//  Generated code. Do not modify.
//  source: bst/v1/rating.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RatingTargetType extends $pb.ProtobufEnum {
  static const RatingTargetType RATING_TARGET_TYPE_UNSPECIFIED = RatingTargetType._(0, _omitEnumNames ? '' : 'RATING_TARGET_TYPE_UNSPECIFIED');
  static const RatingTargetType RATING_TARGET_TYPE_SESSION = RatingTargetType._(1, _omitEnumNames ? '' : 'RATING_TARGET_TYPE_SESSION');
  static const RatingTargetType RATING_TARGET_TYPE_USER = RatingTargetType._(2, _omitEnumNames ? '' : 'RATING_TARGET_TYPE_USER');
  static const RatingTargetType RATING_TARGET_TYPE_SONG_PERFORMANCE = RatingTargetType._(3, _omitEnumNames ? '' : 'RATING_TARGET_TYPE_SONG_PERFORMANCE');
  static const RatingTargetType RATING_TARGET_TYPE_PARTY = RatingTargetType._(4, _omitEnumNames ? '' : 'RATING_TARGET_TYPE_PARTY');

  static const $core.List<RatingTargetType> values = <RatingTargetType> [
    RATING_TARGET_TYPE_UNSPECIFIED,
    RATING_TARGET_TYPE_SESSION,
    RATING_TARGET_TYPE_USER,
    RATING_TARGET_TYPE_SONG_PERFORMANCE,
    RATING_TARGET_TYPE_PARTY,
  ];

  static final $core.Map<$core.int, RatingTargetType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RatingTargetType? valueOf($core.int value) => _byValue[value];

  const RatingTargetType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
