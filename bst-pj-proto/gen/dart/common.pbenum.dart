//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Common status enumeration
class Status extends $pb.ProtobufEnum {
  static const Status STATUS_UNSPECIFIED = Status._(0, _omitEnumNames ? '' : 'STATUS_UNSPECIFIED');
  static const Status STATUS_ACTIVE = Status._(1, _omitEnumNames ? '' : 'STATUS_ACTIVE');
  static const Status STATUS_INACTIVE = Status._(2, _omitEnumNames ? '' : 'STATUS_INACTIVE');
  static const Status STATUS_DELETED = Status._(3, _omitEnumNames ? '' : 'STATUS_DELETED');

  static const $core.List<Status> values = <Status> [
    STATUS_UNSPECIFIED,
    STATUS_ACTIVE,
    STATUS_INACTIVE,
    STATUS_DELETED,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status? valueOf($core.int value) => _byValue[value];

  const Status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
