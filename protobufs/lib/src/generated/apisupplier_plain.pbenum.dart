//
//  Generated code. Do not modify.
//  source: apisupplier_plain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Supplyment extends $pb.ProtobufEnum {
  static const Supplyment CENTRAL = Supplyment._(0, _omitEnumNames ? '' : 'CENTRAL');
  static const Supplyment CROSS_DOCKING = Supplyment._(1, _omitEnumNames ? '' : 'CROSS_DOCKING');

  static const $core.List<Supplyment> values = <Supplyment> [
    CENTRAL,
    CROSS_DOCKING,
  ];

  static final $core.Map<$core.int, Supplyment> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Supplyment? valueOf($core.int value) => _byValue[value];

  const Supplyment._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
