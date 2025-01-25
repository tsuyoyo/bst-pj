//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserParticipantStatus extends $pb.ProtobufEnum {
  static const UserParticipantStatus USER_PARTICIPANT_STATUS_UNSPECIFIED = UserParticipantStatus._(0, _omitEnumNames ? '' : 'USER_PARTICIPANT_STATUS_UNSPECIFIED');
  static const UserParticipantStatus USER_PARTICIPANT_STATUS_PARTICIPANT = UserParticipantStatus._(1, _omitEnumNames ? '' : 'USER_PARTICIPANT_STATUS_PARTICIPANT');
  static const UserParticipantStatus USER_PARTICIPANT_STATUS_CANCEL = UserParticipantStatus._(2, _omitEnumNames ? '' : 'USER_PARTICIPANT_STATUS_CANCEL');

  static const $core.List<UserParticipantStatus> values = <UserParticipantStatus> [
    USER_PARTICIPANT_STATUS_UNSPECIFIED,
    USER_PARTICIPANT_STATUS_PARTICIPANT,
    USER_PARTICIPANT_STATUS_CANCEL,
  ];

  static final $core.Map<$core.int, UserParticipantStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserParticipantStatus? valueOf($core.int value) => _byValue[value];

  const UserParticipantStatus._($core.int v, $core.String n) : super(v, n);
}

/// User role enumeration
class UserRole extends $pb.ProtobufEnum {
  static const UserRole USER_ROLE_UNSPECIFIED = UserRole._(0, _omitEnumNames ? '' : 'USER_ROLE_UNSPECIFIED');
  static const UserRole USER_ROLE_ADMIN = UserRole._(1, _omitEnumNames ? '' : 'USER_ROLE_ADMIN');
  static const UserRole USER_ROLE_ORGANIZER = UserRole._(2, _omitEnumNames ? '' : 'USER_ROLE_ORGANIZER');
  static const UserRole USER_ROLE_MEMBER = UserRole._(3, _omitEnumNames ? '' : 'USER_ROLE_MEMBER');

  static const $core.List<UserRole> values = <UserRole> [
    USER_ROLE_UNSPECIFIED,
    USER_ROLE_ADMIN,
    USER_ROLE_ORGANIZER,
    USER_ROLE_MEMBER,
  ];

  static final $core.Map<$core.int, UserRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserRole? valueOf($core.int value) => _byValue[value];

  const UserRole._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
