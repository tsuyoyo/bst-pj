//
//  Generated code. Do not modify.
//  source: bst/v1/party.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PartyParticipantRole extends $pb.ProtobufEnum {
  static const PartyParticipantRole PARTY_PARTICIPANT_ROLE_UNSPECIFIED = PartyParticipantRole._(0, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_ROLE_UNSPECIFIED');
  static const PartyParticipantRole PARTY_PARTICIPANT_ROLE_HOST = PartyParticipantRole._(1, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_ROLE_HOST');
  static const PartyParticipantRole PARTY_PARTICIPANT_ROLE_PARTICIPANT = PartyParticipantRole._(2, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_ROLE_PARTICIPANT');
  static const PartyParticipantRole PARTY_PARTICIPANT_ROLE_OBSERVER = PartyParticipantRole._(3, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_ROLE_OBSERVER');

  static const $core.List<PartyParticipantRole> values = <PartyParticipantRole> [
    PARTY_PARTICIPANT_ROLE_UNSPECIFIED,
    PARTY_PARTICIPANT_ROLE_HOST,
    PARTY_PARTICIPANT_ROLE_PARTICIPANT,
    PARTY_PARTICIPANT_ROLE_OBSERVER,
  ];

  static final $core.Map<$core.int, PartyParticipantRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PartyParticipantRole? valueOf($core.int value) => _byValue[value];

  const PartyParticipantRole._($core.int v, $core.String n) : super(v, n);
}

class PartyParticipantStatus extends $pb.ProtobufEnum {
  static const PartyParticipantStatus PARTY_PARTICIPANT_STATUS_UNSPECIFIED = PartyParticipantStatus._(0, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_STATUS_UNSPECIFIED');
  static const PartyParticipantStatus PARTY_PARTICIPANT_STATUS_PENDING = PartyParticipantStatus._(1, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_STATUS_PENDING');
  static const PartyParticipantStatus PARTY_PARTICIPANT_STATUS_CONFIRMED = PartyParticipantStatus._(2, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_STATUS_CONFIRMED');
  static const PartyParticipantStatus PARTY_PARTICIPANT_STATUS_CANCELLED = PartyParticipantStatus._(3, _omitEnumNames ? '' : 'PARTY_PARTICIPANT_STATUS_CANCELLED');

  static const $core.List<PartyParticipantStatus> values = <PartyParticipantStatus> [
    PARTY_PARTICIPANT_STATUS_UNSPECIFIED,
    PARTY_PARTICIPANT_STATUS_PENDING,
    PARTY_PARTICIPANT_STATUS_CONFIRMED,
    PARTY_PARTICIPANT_STATUS_CANCELLED,
  ];

  static final $core.Map<$core.int, PartyParticipantStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PartyParticipantStatus? valueOf($core.int value) => _byValue[value];

  const PartyParticipantStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
