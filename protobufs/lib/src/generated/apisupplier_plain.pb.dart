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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'apisupplier_plain.pbenum.dart';

export 'apisupplier_plain.pbenum.dart';

class SupplierEmptyRequest extends $pb.GeneratedMessage {
  factory SupplierEmptyRequest() => create();
  SupplierEmptyRequest._() : super();
  factory SupplierEmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierEmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierEmptyRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierEmptyRequest clone() => SupplierEmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierEmptyRequest copyWith(void Function(SupplierEmptyRequest) updates) => super.copyWith((message) => updates(message as SupplierEmptyRequest)) as SupplierEmptyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierEmptyRequest create() => SupplierEmptyRequest._();
  SupplierEmptyRequest createEmptyInstance() => create();
  static $pb.PbList<SupplierEmptyRequest> createRepeated() => $pb.PbList<SupplierEmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static SupplierEmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierEmptyRequest>(create);
  static SupplierEmptyRequest? _defaultInstance;
}

class SupplierListResponse extends $pb.GeneratedMessage {
  factory SupplierListResponse({
    SuppliersMetaResponse? metaResponse,
    $core.Iterable<Supplier>? supplier,
  }) {
    final $result = create();
    if (metaResponse != null) {
      $result.metaResponse = metaResponse;
    }
    if (supplier != null) {
      $result.supplier.addAll(supplier);
    }
    return $result;
  }
  SupplierListResponse._() : super();
  factory SupplierListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierListResponse', createEmptyInstance: create)
    ..aOM<SuppliersMetaResponse>(1, _omitFieldNames ? '' : 'metaResponse', protoName: 'metaResponse', subBuilder: SuppliersMetaResponse.create)
    ..pc<Supplier>(2, _omitFieldNames ? '' : 'supplier', $pb.PbFieldType.PM, subBuilder: Supplier.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierListResponse clone() => SupplierListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierListResponse copyWith(void Function(SupplierListResponse) updates) => super.copyWith((message) => updates(message as SupplierListResponse)) as SupplierListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierListResponse create() => SupplierListResponse._();
  SupplierListResponse createEmptyInstance() => create();
  static $pb.PbList<SupplierListResponse> createRepeated() => $pb.PbList<SupplierListResponse>();
  @$core.pragma('dart2js:noInline')
  static SupplierListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierListResponse>(create);
  static SupplierListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SuppliersMetaResponse get metaResponse => $_getN(0);
  @$pb.TagNumber(1)
  set metaResponse(SuppliersMetaResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaResponse() => clearField(1);
  @$pb.TagNumber(1)
  SuppliersMetaResponse ensureMetaResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Supplier> get supplier => $_getList(1);
}

/// Wrapper for common response data. Included in all responses.
class SuppliersMetaResponse extends $pb.GeneratedMessage {
  factory SuppliersMetaResponse({
    $core.bool? success,
    $core.String? errorMessage,
    $core.String? errorType,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (errorMessage != null) {
      $result.errorMessage = errorMessage;
    }
    if (errorType != null) {
      $result.errorType = errorType;
    }
    return $result;
  }
  SuppliersMetaResponse._() : super();
  factory SuppliersMetaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SuppliersMetaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SuppliersMetaResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage', protoName: 'errorMessage')
    ..aOS(3, _omitFieldNames ? '' : 'errorType', protoName: 'errorType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SuppliersMetaResponse clone() => SuppliersMetaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SuppliersMetaResponse copyWith(void Function(SuppliersMetaResponse) updates) => super.copyWith((message) => updates(message as SuppliersMetaResponse)) as SuppliersMetaResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SuppliersMetaResponse create() => SuppliersMetaResponse._();
  SuppliersMetaResponse createEmptyInstance() => create();
  static $pb.PbList<SuppliersMetaResponse> createRepeated() => $pb.PbList<SuppliersMetaResponse>();
  @$core.pragma('dart2js:noInline')
  static SuppliersMetaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SuppliersMetaResponse>(create);
  static SuppliersMetaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorType => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorType() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorType() => clearField(3);
}

class AddSupplierRequest extends $pb.GeneratedMessage {
  factory AddSupplierRequest({
    $core.String? supplierId,
    $core.String? name1,
    $core.String? name2,
    $core.String? email,
    $core.bool? internalSupplier,
    Supplyment? supplyment,
    $fixnum.Int64? shippingTime,
    SupplierAddress? address,
  }) {
    final $result = create();
    if (supplierId != null) {
      $result.supplierId = supplierId;
    }
    if (name1 != null) {
      $result.name1 = name1;
    }
    if (name2 != null) {
      $result.name2 = name2;
    }
    if (email != null) {
      $result.email = email;
    }
    if (internalSupplier != null) {
      $result.internalSupplier = internalSupplier;
    }
    if (supplyment != null) {
      $result.supplyment = supplyment;
    }
    if (shippingTime != null) {
      $result.shippingTime = shippingTime;
    }
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  AddSupplierRequest._() : super();
  factory AddSupplierRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSupplierRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSupplierRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'supplierId', protoName: 'supplierId')
    ..aOS(2, _omitFieldNames ? '' : 'name1')
    ..aOS(3, _omitFieldNames ? '' : 'name2')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..aOB(5, _omitFieldNames ? '' : 'internalSupplier', protoName: 'internalSupplier')
    ..e<Supplyment>(6, _omitFieldNames ? '' : 'supplyment', $pb.PbFieldType.OE, defaultOrMaker: Supplyment.CENTRAL, valueOf: Supplyment.valueOf, enumValues: Supplyment.values)
    ..aInt64(7, _omitFieldNames ? '' : 'shippingTime', protoName: 'shippingTime')
    ..aOM<SupplierAddress>(8, _omitFieldNames ? '' : 'address', subBuilder: SupplierAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSupplierRequest clone() => AddSupplierRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSupplierRequest copyWith(void Function(AddSupplierRequest) updates) => super.copyWith((message) => updates(message as AddSupplierRequest)) as AddSupplierRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSupplierRequest create() => AddSupplierRequest._();
  AddSupplierRequest createEmptyInstance() => create();
  static $pb.PbList<AddSupplierRequest> createRepeated() => $pb.PbList<AddSupplierRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSupplierRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSupplierRequest>(create);
  static AddSupplierRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get supplierId => $_getSZ(0);
  @$pb.TagNumber(1)
  set supplierId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupplierId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupplierId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name1 => $_getSZ(1);
  @$pb.TagNumber(2)
  set name1($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName1() => $_has(1);
  @$pb.TagNumber(2)
  void clearName1() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name2 => $_getSZ(2);
  @$pb.TagNumber(3)
  set name2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName2() => $_has(2);
  @$pb.TagNumber(3)
  void clearName2() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get internalSupplier => $_getBF(4);
  @$pb.TagNumber(5)
  set internalSupplier($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInternalSupplier() => $_has(4);
  @$pb.TagNumber(5)
  void clearInternalSupplier() => clearField(5);

  @$pb.TagNumber(6)
  Supplyment get supplyment => $_getN(5);
  @$pb.TagNumber(6)
  set supplyment(Supplyment v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSupplyment() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupplyment() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get shippingTime => $_getI64(6);
  @$pb.TagNumber(7)
  set shippingTime($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasShippingTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearShippingTime() => clearField(7);

  @$pb.TagNumber(8)
  SupplierAddress get address => $_getN(7);
  @$pb.TagNumber(8)
  set address(SupplierAddress v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAddress() => $_has(7);
  @$pb.TagNumber(8)
  void clearAddress() => clearField(8);
  @$pb.TagNumber(8)
  SupplierAddress ensureAddress() => $_ensure(7);
}

class UpdateSupplierRequest extends $pb.GeneratedMessage {
  factory UpdateSupplierRequest({
    $core.String? uuid,
    $core.String? supplierId,
    $core.String? name1,
    $core.String? name2,
    $core.String? email,
    $core.bool? internalSupplier,
    Supplyment? supplyment,
    $fixnum.Int64? shippingTime,
    SupplierAddress? address,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    if (supplierId != null) {
      $result.supplierId = supplierId;
    }
    if (name1 != null) {
      $result.name1 = name1;
    }
    if (name2 != null) {
      $result.name2 = name2;
    }
    if (email != null) {
      $result.email = email;
    }
    if (internalSupplier != null) {
      $result.internalSupplier = internalSupplier;
    }
    if (supplyment != null) {
      $result.supplyment = supplyment;
    }
    if (shippingTime != null) {
      $result.shippingTime = shippingTime;
    }
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  UpdateSupplierRequest._() : super();
  factory UpdateSupplierRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSupplierRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSupplierRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..aOS(2, _omitFieldNames ? '' : 'supplierId', protoName: 'supplierId')
    ..aOS(3, _omitFieldNames ? '' : 'name1')
    ..aOS(4, _omitFieldNames ? '' : 'name2')
    ..aOS(5, _omitFieldNames ? '' : 'email')
    ..aOB(6, _omitFieldNames ? '' : 'internalSupplier', protoName: 'internalSupplier')
    ..e<Supplyment>(7, _omitFieldNames ? '' : 'supplyment', $pb.PbFieldType.OE, defaultOrMaker: Supplyment.CENTRAL, valueOf: Supplyment.valueOf, enumValues: Supplyment.values)
    ..aInt64(8, _omitFieldNames ? '' : 'shippingTime', protoName: 'shippingTime')
    ..aOM<SupplierAddress>(9, _omitFieldNames ? '' : 'address', subBuilder: SupplierAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSupplierRequest clone() => UpdateSupplierRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSupplierRequest copyWith(void Function(UpdateSupplierRequest) updates) => super.copyWith((message) => updates(message as UpdateSupplierRequest)) as UpdateSupplierRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSupplierRequest create() => UpdateSupplierRequest._();
  UpdateSupplierRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSupplierRequest> createRepeated() => $pb.PbList<UpdateSupplierRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSupplierRequest>(create);
  static UpdateSupplierRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get supplierId => $_getSZ(1);
  @$pb.TagNumber(2)
  set supplierId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSupplierId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplierId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name1 => $_getSZ(2);
  @$pb.TagNumber(3)
  set name1($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName1() => $_has(2);
  @$pb.TagNumber(3)
  void clearName1() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name2 => $_getSZ(3);
  @$pb.TagNumber(4)
  set name2($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName2() => $_has(3);
  @$pb.TagNumber(4)
  void clearName2() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get internalSupplier => $_getBF(5);
  @$pb.TagNumber(6)
  set internalSupplier($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInternalSupplier() => $_has(5);
  @$pb.TagNumber(6)
  void clearInternalSupplier() => clearField(6);

  @$pb.TagNumber(7)
  Supplyment get supplyment => $_getN(6);
  @$pb.TagNumber(7)
  set supplyment(Supplyment v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSupplyment() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupplyment() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get shippingTime => $_getI64(7);
  @$pb.TagNumber(8)
  set shippingTime($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasShippingTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearShippingTime() => clearField(8);

  @$pb.TagNumber(9)
  SupplierAddress get address => $_getN(8);
  @$pb.TagNumber(9)
  set address(SupplierAddress v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearAddress() => clearField(9);
  @$pb.TagNumber(9)
  SupplierAddress ensureAddress() => $_ensure(8);
}

class SupplierUuidRequest extends $pb.GeneratedMessage {
  factory SupplierUuidRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  SupplierUuidRequest._() : super();
  factory SupplierUuidRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierUuidRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierUuidRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierUuidRequest clone() => SupplierUuidRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierUuidRequest copyWith(void Function(SupplierUuidRequest) updates) => super.copyWith((message) => updates(message as SupplierUuidRequest)) as SupplierUuidRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierUuidRequest create() => SupplierUuidRequest._();
  SupplierUuidRequest createEmptyInstance() => create();
  static $pb.PbList<SupplierUuidRequest> createRepeated() => $pb.PbList<SupplierUuidRequest>();
  @$core.pragma('dart2js:noInline')
  static SupplierUuidRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierUuidRequest>(create);
  static SupplierUuidRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class CalculatePurchasePriceRequest extends $pb.GeneratedMessage {
  factory CalculatePurchasePriceRequest({
    $core.String? supplieruuid,
    $core.String? itemuuid,
    $core.bool? allsupplier,
  }) {
    final $result = create();
    if (supplieruuid != null) {
      $result.supplieruuid = supplieruuid;
    }
    if (itemuuid != null) {
      $result.itemuuid = itemuuid;
    }
    if (allsupplier != null) {
      $result.allsupplier = allsupplier;
    }
    return $result;
  }
  CalculatePurchasePriceRequest._() : super();
  factory CalculatePurchasePriceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalculatePurchasePriceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalculatePurchasePriceRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'supplieruuid')
    ..aOS(2, _omitFieldNames ? '' : 'itemuuid')
    ..aOB(3, _omitFieldNames ? '' : 'allsupplier')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalculatePurchasePriceRequest clone() => CalculatePurchasePriceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalculatePurchasePriceRequest copyWith(void Function(CalculatePurchasePriceRequest) updates) => super.copyWith((message) => updates(message as CalculatePurchasePriceRequest)) as CalculatePurchasePriceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalculatePurchasePriceRequest create() => CalculatePurchasePriceRequest._();
  CalculatePurchasePriceRequest createEmptyInstance() => create();
  static $pb.PbList<CalculatePurchasePriceRequest> createRepeated() => $pb.PbList<CalculatePurchasePriceRequest>();
  @$core.pragma('dart2js:noInline')
  static CalculatePurchasePriceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalculatePurchasePriceRequest>(create);
  static CalculatePurchasePriceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get supplieruuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set supplieruuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupplieruuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupplieruuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemuuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemuuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemuuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemuuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get allsupplier => $_getBF(2);
  @$pb.TagNumber(3)
  set allsupplier($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAllsupplier() => $_has(2);
  @$pb.TagNumber(3)
  void clearAllsupplier() => clearField(3);
}

/// In request, all fields are mandatory.
class SupplierAddress extends $pb.GeneratedMessage {
  factory SupplierAddress({
    $core.String? firstName,
    $core.String? lastName,
    $core.String? street,
    $core.String? houseNumber,
    $core.String? street2,
    $core.String? zip,
    $core.String? city,
    $core.String? countryISO3,
  }) {
    final $result = create();
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (street != null) {
      $result.street = street;
    }
    if (houseNumber != null) {
      $result.houseNumber = houseNumber;
    }
    if (street2 != null) {
      $result.street2 = street2;
    }
    if (zip != null) {
      $result.zip = zip;
    }
    if (city != null) {
      $result.city = city;
    }
    if (countryISO3 != null) {
      $result.countryISO3 = countryISO3;
    }
    return $result;
  }
  SupplierAddress._() : super();
  factory SupplierAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierAddress', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(2, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(3, _omitFieldNames ? '' : 'street')
    ..aOS(4, _omitFieldNames ? '' : 'houseNumber', protoName: 'houseNumber')
    ..aOS(5, _omitFieldNames ? '' : 'street2')
    ..aOS(6, _omitFieldNames ? '' : 'zip')
    ..aOS(7, _omitFieldNames ? '' : 'city')
    ..aOS(9, _omitFieldNames ? '' : 'countryISO3', protoName: 'countryISO3')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierAddress clone() => SupplierAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierAddress copyWith(void Function(SupplierAddress) updates) => super.copyWith((message) => updates(message as SupplierAddress)) as SupplierAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierAddress create() => SupplierAddress._();
  SupplierAddress createEmptyInstance() => create();
  static $pb.PbList<SupplierAddress> createRepeated() => $pb.PbList<SupplierAddress>();
  @$core.pragma('dart2js:noInline')
  static SupplierAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierAddress>(create);
  static SupplierAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get street => $_getSZ(2);
  @$pb.TagNumber(3)
  set street($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStreet() => $_has(2);
  @$pb.TagNumber(3)
  void clearStreet() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get houseNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set houseNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHouseNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearHouseNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get street2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set street2($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStreet2() => $_has(4);
  @$pb.TagNumber(5)
  void clearStreet2() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get zip => $_getSZ(5);
  @$pb.TagNumber(6)
  set zip($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasZip() => $_has(5);
  @$pb.TagNumber(6)
  void clearZip() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get city => $_getSZ(6);
  @$pb.TagNumber(7)
  set city($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCity() => $_has(6);
  @$pb.TagNumber(7)
  void clearCity() => clearField(7);

  @$pb.TagNumber(9)
  $core.String get countryISO3 => $_getSZ(7);
  @$pb.TagNumber(9)
  set countryISO3($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasCountryISO3() => $_has(7);
  @$pb.TagNumber(9)
  void clearCountryISO3() => clearField(9);
}

class Supplier extends $pb.GeneratedMessage {
  factory Supplier({
    $core.String? uuid,
    $core.String? supplierId,
    $core.String? name1,
    $core.String? name2,
    $core.String? email,
    $core.bool? internalSupplier,
    Supplyment? supplyment,
    $fixnum.Int64? shippingTime,
    SupplierAddress? address,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    if (supplierId != null) {
      $result.supplierId = supplierId;
    }
    if (name1 != null) {
      $result.name1 = name1;
    }
    if (name2 != null) {
      $result.name2 = name2;
    }
    if (email != null) {
      $result.email = email;
    }
    if (internalSupplier != null) {
      $result.internalSupplier = internalSupplier;
    }
    if (supplyment != null) {
      $result.supplyment = supplyment;
    }
    if (shippingTime != null) {
      $result.shippingTime = shippingTime;
    }
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  Supplier._() : super();
  factory Supplier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Supplier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Supplier', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..aOS(2, _omitFieldNames ? '' : 'supplierId', protoName: 'supplierId')
    ..aOS(3, _omitFieldNames ? '' : 'name1')
    ..aOS(4, _omitFieldNames ? '' : 'name2')
    ..aOS(5, _omitFieldNames ? '' : 'email')
    ..aOB(6, _omitFieldNames ? '' : 'internalSupplier', protoName: 'internalSupplier')
    ..e<Supplyment>(7, _omitFieldNames ? '' : 'supplyment', $pb.PbFieldType.OE, defaultOrMaker: Supplyment.CENTRAL, valueOf: Supplyment.valueOf, enumValues: Supplyment.values)
    ..aInt64(8, _omitFieldNames ? '' : 'shippingTime', protoName: 'shippingTime')
    ..aOM<SupplierAddress>(9, _omitFieldNames ? '' : 'address', subBuilder: SupplierAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Supplier clone() => Supplier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Supplier copyWith(void Function(Supplier) updates) => super.copyWith((message) => updates(message as Supplier)) as Supplier;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Supplier create() => Supplier._();
  Supplier createEmptyInstance() => create();
  static $pb.PbList<Supplier> createRepeated() => $pb.PbList<Supplier>();
  @$core.pragma('dart2js:noInline')
  static Supplier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Supplier>(create);
  static Supplier? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get supplierId => $_getSZ(1);
  @$pb.TagNumber(2)
  set supplierId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSupplierId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplierId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name1 => $_getSZ(2);
  @$pb.TagNumber(3)
  set name1($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName1() => $_has(2);
  @$pb.TagNumber(3)
  void clearName1() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name2 => $_getSZ(3);
  @$pb.TagNumber(4)
  set name2($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName2() => $_has(3);
  @$pb.TagNumber(4)
  void clearName2() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get internalSupplier => $_getBF(5);
  @$pb.TagNumber(6)
  set internalSupplier($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInternalSupplier() => $_has(5);
  @$pb.TagNumber(6)
  void clearInternalSupplier() => clearField(6);

  @$pb.TagNumber(7)
  Supplyment get supplyment => $_getN(6);
  @$pb.TagNumber(7)
  set supplyment(Supplyment v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSupplyment() => $_has(6);
  @$pb.TagNumber(7)
  void clearSupplyment() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get shippingTime => $_getI64(7);
  @$pb.TagNumber(8)
  set shippingTime($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasShippingTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearShippingTime() => clearField(8);

  @$pb.TagNumber(9)
  SupplierAddress get address => $_getN(8);
  @$pb.TagNumber(9)
  set address(SupplierAddress v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearAddress() => clearField(9);
  @$pb.TagNumber(9)
  SupplierAddress ensureAddress() => $_ensure(8);
}

class SupplierResponse extends $pb.GeneratedMessage {
  factory SupplierResponse({
    SuppliersMetaResponse? metaResponse,
    Supplier? supplier,
  }) {
    final $result = create();
    if (metaResponse != null) {
      $result.metaResponse = metaResponse;
    }
    if (supplier != null) {
      $result.supplier = supplier;
    }
    return $result;
  }
  SupplierResponse._() : super();
  factory SupplierResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierResponse', createEmptyInstance: create)
    ..aOM<SuppliersMetaResponse>(1, _omitFieldNames ? '' : 'metaResponse', protoName: 'metaResponse', subBuilder: SuppliersMetaResponse.create)
    ..aOM<Supplier>(2, _omitFieldNames ? '' : 'supplier', subBuilder: Supplier.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierResponse clone() => SupplierResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierResponse copyWith(void Function(SupplierResponse) updates) => super.copyWith((message) => updates(message as SupplierResponse)) as SupplierResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierResponse create() => SupplierResponse._();
  SupplierResponse createEmptyInstance() => create();
  static $pb.PbList<SupplierResponse> createRepeated() => $pb.PbList<SupplierResponse>();
  @$core.pragma('dart2js:noInline')
  static SupplierResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierResponse>(create);
  static SupplierResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SuppliersMetaResponse get metaResponse => $_getN(0);
  @$pb.TagNumber(1)
  set metaResponse(SuppliersMetaResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaResponse() => clearField(1);
  @$pb.TagNumber(1)
  SuppliersMetaResponse ensureMetaResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  Supplier get supplier => $_getN(1);
  @$pb.TagNumber(2)
  set supplier(Supplier v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSupplier() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplier() => clearField(2);
  @$pb.TagNumber(2)
  Supplier ensureSupplier() => $_ensure(1);
}

class CalculatePurchasePriceResponse extends $pb.GeneratedMessage {
  factory CalculatePurchasePriceResponse({
    SuppliersMetaResponse? metaResponse,
    $fixnum.Int64? itemsread,
    $fixnum.Int64? itemschanged,
    $core.Iterable<$core.String>? errorLines,
  }) {
    final $result = create();
    if (metaResponse != null) {
      $result.metaResponse = metaResponse;
    }
    if (itemsread != null) {
      $result.itemsread = itemsread;
    }
    if (itemschanged != null) {
      $result.itemschanged = itemschanged;
    }
    if (errorLines != null) {
      $result.errorLines.addAll(errorLines);
    }
    return $result;
  }
  CalculatePurchasePriceResponse._() : super();
  factory CalculatePurchasePriceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalculatePurchasePriceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalculatePurchasePriceResponse', createEmptyInstance: create)
    ..aOM<SuppliersMetaResponse>(1, _omitFieldNames ? '' : 'metaResponse', protoName: 'metaResponse', subBuilder: SuppliersMetaResponse.create)
    ..aInt64(2, _omitFieldNames ? '' : 'itemsread')
    ..aInt64(3, _omitFieldNames ? '' : 'itemschanged')
    ..pPS(4, _omitFieldNames ? '' : 'errorLines', protoName: 'errorLines')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalculatePurchasePriceResponse clone() => CalculatePurchasePriceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalculatePurchasePriceResponse copyWith(void Function(CalculatePurchasePriceResponse) updates) => super.copyWith((message) => updates(message as CalculatePurchasePriceResponse)) as CalculatePurchasePriceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalculatePurchasePriceResponse create() => CalculatePurchasePriceResponse._();
  CalculatePurchasePriceResponse createEmptyInstance() => create();
  static $pb.PbList<CalculatePurchasePriceResponse> createRepeated() => $pb.PbList<CalculatePurchasePriceResponse>();
  @$core.pragma('dart2js:noInline')
  static CalculatePurchasePriceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalculatePurchasePriceResponse>(create);
  static CalculatePurchasePriceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SuppliersMetaResponse get metaResponse => $_getN(0);
  @$pb.TagNumber(1)
  set metaResponse(SuppliersMetaResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaResponse() => clearField(1);
  @$pb.TagNumber(1)
  SuppliersMetaResponse ensureMetaResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get itemsread => $_getI64(1);
  @$pb.TagNumber(2)
  set itemsread($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemsread() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemsread() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get itemschanged => $_getI64(2);
  @$pb.TagNumber(3)
  set itemschanged($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemschanged() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemschanged() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get errorLines => $_getList(3);
}

class SupplierMappingUuidRequest extends $pb.GeneratedMessage {
  factory SupplierMappingUuidRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  SupplierMappingUuidRequest._() : super();
  factory SupplierMappingUuidRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierMappingUuidRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierMappingUuidRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierMappingUuidRequest clone() => SupplierMappingUuidRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierMappingUuidRequest copyWith(void Function(SupplierMappingUuidRequest) updates) => super.copyWith((message) => updates(message as SupplierMappingUuidRequest)) as SupplierMappingUuidRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierMappingUuidRequest create() => SupplierMappingUuidRequest._();
  SupplierMappingUuidRequest createEmptyInstance() => create();
  static $pb.PbList<SupplierMappingUuidRequest> createRepeated() => $pb.PbList<SupplierMappingUuidRequest>();
  @$core.pragma('dart2js:noInline')
  static SupplierMappingUuidRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierMappingUuidRequest>(create);
  static SupplierMappingUuidRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class SupplierMapping extends $pb.GeneratedMessage {
  factory SupplierMapping({
    $core.String? uuid,
    $core.String? supplierUuid,
    $core.String? value,
    $core.String? variantUuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    if (supplierUuid != null) {
      $result.supplierUuid = supplierUuid;
    }
    if (value != null) {
      $result.value = value;
    }
    if (variantUuid != null) {
      $result.variantUuid = variantUuid;
    }
    return $result;
  }
  SupplierMapping._() : super();
  factory SupplierMapping.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierMapping.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierMapping', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..aOS(2, _omitFieldNames ? '' : 'supplierUuid', protoName: 'supplierUuid')
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..aOS(4, _omitFieldNames ? '' : 'variantUuid', protoName: 'variantUuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierMapping clone() => SupplierMapping()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierMapping copyWith(void Function(SupplierMapping) updates) => super.copyWith((message) => updates(message as SupplierMapping)) as SupplierMapping;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierMapping create() => SupplierMapping._();
  SupplierMapping createEmptyInstance() => create();
  static $pb.PbList<SupplierMapping> createRepeated() => $pb.PbList<SupplierMapping>();
  @$core.pragma('dart2js:noInline')
  static SupplierMapping getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierMapping>(create);
  static SupplierMapping? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get supplierUuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set supplierUuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSupplierUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplierUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get variantUuid => $_getSZ(3);
  @$pb.TagNumber(4)
  set variantUuid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVariantUuid() => $_has(3);
  @$pb.TagNumber(4)
  void clearVariantUuid() => clearField(4);
}

class SupplierMappingRequest extends $pb.GeneratedMessage {
  factory SupplierMappingRequest({
    $core.String? supplierUuid,
    $core.String? value,
    $core.String? variantUuid,
  }) {
    final $result = create();
    if (supplierUuid != null) {
      $result.supplierUuid = supplierUuid;
    }
    if (value != null) {
      $result.value = value;
    }
    if (variantUuid != null) {
      $result.variantUuid = variantUuid;
    }
    return $result;
  }
  SupplierMappingRequest._() : super();
  factory SupplierMappingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierMappingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierMappingRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'supplierUuid', protoName: 'supplierUuid')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..aOS(3, _omitFieldNames ? '' : 'variantUuid', protoName: 'variantUuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierMappingRequest clone() => SupplierMappingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierMappingRequest copyWith(void Function(SupplierMappingRequest) updates) => super.copyWith((message) => updates(message as SupplierMappingRequest)) as SupplierMappingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierMappingRequest create() => SupplierMappingRequest._();
  SupplierMappingRequest createEmptyInstance() => create();
  static $pb.PbList<SupplierMappingRequest> createRepeated() => $pb.PbList<SupplierMappingRequest>();
  @$core.pragma('dart2js:noInline')
  static SupplierMappingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierMappingRequest>(create);
  static SupplierMappingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get supplierUuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set supplierUuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupplierUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupplierUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get variantUuid => $_getSZ(2);
  @$pb.TagNumber(3)
  set variantUuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVariantUuid() => $_has(2);
  @$pb.TagNumber(3)
  void clearVariantUuid() => clearField(3);
}

class SupplierMappingResponse extends $pb.GeneratedMessage {
  factory SupplierMappingResponse({
    SuppliersMetaResponse? metaResponse,
    SupplierMapping? mapping,
  }) {
    final $result = create();
    if (metaResponse != null) {
      $result.metaResponse = metaResponse;
    }
    if (mapping != null) {
      $result.mapping = mapping;
    }
    return $result;
  }
  SupplierMappingResponse._() : super();
  factory SupplierMappingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierMappingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierMappingResponse', createEmptyInstance: create)
    ..aOM<SuppliersMetaResponse>(1, _omitFieldNames ? '' : 'metaResponse', protoName: 'metaResponse', subBuilder: SuppliersMetaResponse.create)
    ..aOM<SupplierMapping>(2, _omitFieldNames ? '' : 'mapping', subBuilder: SupplierMapping.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierMappingResponse clone() => SupplierMappingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierMappingResponse copyWith(void Function(SupplierMappingResponse) updates) => super.copyWith((message) => updates(message as SupplierMappingResponse)) as SupplierMappingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierMappingResponse create() => SupplierMappingResponse._();
  SupplierMappingResponse createEmptyInstance() => create();
  static $pb.PbList<SupplierMappingResponse> createRepeated() => $pb.PbList<SupplierMappingResponse>();
  @$core.pragma('dart2js:noInline')
  static SupplierMappingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierMappingResponse>(create);
  static SupplierMappingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SuppliersMetaResponse get metaResponse => $_getN(0);
  @$pb.TagNumber(1)
  set metaResponse(SuppliersMetaResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaResponse() => clearField(1);
  @$pb.TagNumber(1)
  SuppliersMetaResponse ensureMetaResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  SupplierMapping get mapping => $_getN(1);
  @$pb.TagNumber(2)
  set mapping(SupplierMapping v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMapping() => $_has(1);
  @$pb.TagNumber(2)
  void clearMapping() => clearField(2);
  @$pb.TagNumber(2)
  SupplierMapping ensureMapping() => $_ensure(1);
}

class SupplierMappingListResponse extends $pb.GeneratedMessage {
  factory SupplierMappingListResponse({
    SuppliersMetaResponse? metaResponse,
    $core.Iterable<SupplierMapping>? mappings,
  }) {
    final $result = create();
    if (metaResponse != null) {
      $result.metaResponse = metaResponse;
    }
    if (mappings != null) {
      $result.mappings.addAll(mappings);
    }
    return $result;
  }
  SupplierMappingListResponse._() : super();
  factory SupplierMappingListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierMappingListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierMappingListResponse', createEmptyInstance: create)
    ..aOM<SuppliersMetaResponse>(1, _omitFieldNames ? '' : 'metaResponse', protoName: 'metaResponse', subBuilder: SuppliersMetaResponse.create)
    ..pc<SupplierMapping>(2, _omitFieldNames ? '' : 'mappings', $pb.PbFieldType.PM, subBuilder: SupplierMapping.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierMappingListResponse clone() => SupplierMappingListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierMappingListResponse copyWith(void Function(SupplierMappingListResponse) updates) => super.copyWith((message) => updates(message as SupplierMappingListResponse)) as SupplierMappingListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierMappingListResponse create() => SupplierMappingListResponse._();
  SupplierMappingListResponse createEmptyInstance() => create();
  static $pb.PbList<SupplierMappingListResponse> createRepeated() => $pb.PbList<SupplierMappingListResponse>();
  @$core.pragma('dart2js:noInline')
  static SupplierMappingListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierMappingListResponse>(create);
  static SupplierMappingListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SuppliersMetaResponse get metaResponse => $_getN(0);
  @$pb.TagNumber(1)
  set metaResponse(SuppliersMetaResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaResponse() => clearField(1);
  @$pb.TagNumber(1)
  SuppliersMetaResponse ensureMetaResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<SupplierMapping> get mappings => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
