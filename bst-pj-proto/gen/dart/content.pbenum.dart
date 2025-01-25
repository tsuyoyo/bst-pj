//
//  Generated code. Do not modify.
//  source: content.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Resource_ResourceType extends $pb.ProtobufEnum {
  static const Resource_ResourceType RESOURCE_TYPE_UNSPECIFIED = Resource_ResourceType._(0, _omitEnumNames ? '' : 'RESOURCE_TYPE_UNSPECIFIED');
  static const Resource_ResourceType RESOURCE_TYPE_IMAGE = Resource_ResourceType._(1, _omitEnumNames ? '' : 'RESOURCE_TYPE_IMAGE');
  static const Resource_ResourceType RESOURCE_TYPE_VIDEO = Resource_ResourceType._(2, _omitEnumNames ? '' : 'RESOURCE_TYPE_VIDEO');

  static const $core.List<Resource_ResourceType> values = <Resource_ResourceType> [
    RESOURCE_TYPE_UNSPECIFIED,
    RESOURCE_TYPE_IMAGE,
    RESOURCE_TYPE_VIDEO,
  ];

  static final $core.Map<$core.int, Resource_ResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Resource_ResourceType? valueOf($core.int value) => _byValue[value];

  const Resource_ResourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
