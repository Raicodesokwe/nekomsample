//
//  Generated code. Do not modify.
//  source: apisupplier_plain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'apisupplier_plain.pb.dart' as $0;

export 'apisupplier_plain.pb.dart';

@$pb.GrpcServiceName('Suppliers')
class SuppliersClient extends $grpc.Client {
  static final _$addSupplier = $grpc.ClientMethod<$0.AddSupplierRequest, $0.SupplierResponse>(
      '/Suppliers/addSupplier',
      ($0.AddSupplierRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierResponse.fromBuffer(value));
  static final _$updateSupplier = $grpc.ClientMethod<$0.UpdateSupplierRequest, $0.SupplierResponse>(
      '/Suppliers/updateSupplier',
      ($0.UpdateSupplierRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierResponse.fromBuffer(value));
  static final _$deleteSupplier = $grpc.ClientMethod<$0.SupplierUuidRequest, $0.SuppliersMetaResponse>(
      '/Suppliers/deleteSupplier',
      ($0.SupplierUuidRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SuppliersMetaResponse.fromBuffer(value));
  static final _$getSupplier = $grpc.ClientMethod<$0.SupplierUuidRequest, $0.SupplierResponse>(
      '/Suppliers/getSupplier',
      ($0.SupplierUuidRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierResponse.fromBuffer(value));
  static final _$calculatePurchasePrice = $grpc.ClientMethod<$0.CalculatePurchasePriceRequest, $0.CalculatePurchasePriceResponse>(
      '/Suppliers/calculatePurchasePrice',
      ($0.CalculatePurchasePriceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CalculatePurchasePriceResponse.fromBuffer(value));
  static final _$getAllSupplier = $grpc.ClientMethod<$0.SupplierEmptyRequest, $0.SupplierListResponse>(
      '/Suppliers/getAllSupplier',
      ($0.SupplierEmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierListResponse.fromBuffer(value));

  SuppliersClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SupplierResponse> addSupplier($0.AddSupplierRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$0.SupplierResponse> updateSupplier($0.UpdateSupplierRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$0.SuppliersMetaResponse> deleteSupplier($0.SupplierUuidRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$0.SupplierResponse> getSupplier($0.SupplierUuidRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$0.CalculatePurchasePriceResponse> calculatePurchasePrice($0.CalculatePurchasePriceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$calculatePurchasePrice, request, options: options);
  }

  $grpc.ResponseFuture<$0.SupplierListResponse> getAllSupplier($0.SupplierEmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllSupplier, request, options: options);
  }
}

@$pb.GrpcServiceName('Suppliers')
abstract class SuppliersServiceBase extends $grpc.Service {
  $core.String get $name => 'Suppliers';

  SuppliersServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddSupplierRequest, $0.SupplierResponse>(
        'addSupplier',
        addSupplier_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddSupplierRequest.fromBuffer(value),
        ($0.SupplierResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateSupplierRequest, $0.SupplierResponse>(
        'updateSupplier',
        updateSupplier_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateSupplierRequest.fromBuffer(value),
        ($0.SupplierResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SupplierUuidRequest, $0.SuppliersMetaResponse>(
        'deleteSupplier',
        deleteSupplier_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierUuidRequest.fromBuffer(value),
        ($0.SuppliersMetaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SupplierUuidRequest, $0.SupplierResponse>(
        'getSupplier',
        getSupplier_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierUuidRequest.fromBuffer(value),
        ($0.SupplierResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CalculatePurchasePriceRequest, $0.CalculatePurchasePriceResponse>(
        'calculatePurchasePrice',
        calculatePurchasePrice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CalculatePurchasePriceRequest.fromBuffer(value),
        ($0.CalculatePurchasePriceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SupplierEmptyRequest, $0.SupplierListResponse>(
        'getAllSupplier',
        getAllSupplier_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierEmptyRequest.fromBuffer(value),
        ($0.SupplierListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SupplierResponse> addSupplier_Pre($grpc.ServiceCall call, $async.Future<$0.AddSupplierRequest> request) async {
    return addSupplier(call, await request);
  }

  $async.Future<$0.SupplierResponse> updateSupplier_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateSupplierRequest> request) async {
    return updateSupplier(call, await request);
  }

  $async.Future<$0.SuppliersMetaResponse> deleteSupplier_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierUuidRequest> request) async {
    return deleteSupplier(call, await request);
  }

  $async.Future<$0.SupplierResponse> getSupplier_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierUuidRequest> request) async {
    return getSupplier(call, await request);
  }

  $async.Future<$0.CalculatePurchasePriceResponse> calculatePurchasePrice_Pre($grpc.ServiceCall call, $async.Future<$0.CalculatePurchasePriceRequest> request) async {
    return calculatePurchasePrice(call, await request);
  }

  $async.Future<$0.SupplierListResponse> getAllSupplier_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierEmptyRequest> request) async {
    return getAllSupplier(call, await request);
  }

  $async.Future<$0.SupplierResponse> addSupplier($grpc.ServiceCall call, $0.AddSupplierRequest request);
  $async.Future<$0.SupplierResponse> updateSupplier($grpc.ServiceCall call, $0.UpdateSupplierRequest request);
  $async.Future<$0.SuppliersMetaResponse> deleteSupplier($grpc.ServiceCall call, $0.SupplierUuidRequest request);
  $async.Future<$0.SupplierResponse> getSupplier($grpc.ServiceCall call, $0.SupplierUuidRequest request);
  $async.Future<$0.CalculatePurchasePriceResponse> calculatePurchasePrice($grpc.ServiceCall call, $0.CalculatePurchasePriceRequest request);
  $async.Future<$0.SupplierListResponse> getAllSupplier($grpc.ServiceCall call, $0.SupplierEmptyRequest request);
}
@$pb.GrpcServiceName('SupplierMappings')
class SupplierMappingsClient extends $grpc.Client {
  static final _$insertSupplierMapping = $grpc.ClientMethod<$0.SupplierMappingRequest, $0.SupplierMappingResponse>(
      '/SupplierMappings/insertSupplierMapping',
      ($0.SupplierMappingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierMappingResponse.fromBuffer(value));
  static final _$updateSupplierMapping = $grpc.ClientMethod<$0.SupplierMapping, $0.SupplierMappingResponse>(
      '/SupplierMappings/updateSupplierMapping',
      ($0.SupplierMapping value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierMappingResponse.fromBuffer(value));
  static final _$deleteSupplierMapping = $grpc.ClientMethod<$0.SupplierMappingUuidRequest, $0.SuppliersMetaResponse>(
      '/SupplierMappings/deleteSupplierMapping',
      ($0.SupplierMappingUuidRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SuppliersMetaResponse.fromBuffer(value));
  static final _$getSupplierMapping = $grpc.ClientMethod<$0.SupplierMappingUuidRequest, $0.SupplierMappingResponse>(
      '/SupplierMappings/getSupplierMapping',
      ($0.SupplierMappingUuidRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierMappingResponse.fromBuffer(value));
  static final _$listSupplierMappings = $grpc.ClientMethod<$0.SupplierUuidRequest, $0.SupplierMappingListResponse>(
      '/SupplierMappings/listSupplierMappings',
      ($0.SupplierUuidRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SupplierMappingListResponse.fromBuffer(value));

  SupplierMappingsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SupplierMappingResponse> insertSupplierMapping($0.SupplierMappingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertSupplierMapping, request, options: options);
  }

  $grpc.ResponseFuture<$0.SupplierMappingResponse> updateSupplierMapping($0.SupplierMapping request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSupplierMapping, request, options: options);
  }

  $grpc.ResponseFuture<$0.SuppliersMetaResponse> deleteSupplierMapping($0.SupplierMappingUuidRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSupplierMapping, request, options: options);
  }

  $grpc.ResponseFuture<$0.SupplierMappingResponse> getSupplierMapping($0.SupplierMappingUuidRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSupplierMapping, request, options: options);
  }

  $grpc.ResponseFuture<$0.SupplierMappingListResponse> listSupplierMappings($0.SupplierUuidRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSupplierMappings, request, options: options);
  }
}

@$pb.GrpcServiceName('SupplierMappings')
abstract class SupplierMappingsServiceBase extends $grpc.Service {
  $core.String get $name => 'SupplierMappings';

  SupplierMappingsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SupplierMappingRequest, $0.SupplierMappingResponse>(
        'insertSupplierMapping',
        insertSupplierMapping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierMappingRequest.fromBuffer(value),
        ($0.SupplierMappingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SupplierMapping, $0.SupplierMappingResponse>(
        'updateSupplierMapping',
        updateSupplierMapping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierMapping.fromBuffer(value),
        ($0.SupplierMappingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SupplierMappingUuidRequest, $0.SuppliersMetaResponse>(
        'deleteSupplierMapping',
        deleteSupplierMapping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierMappingUuidRequest.fromBuffer(value),
        ($0.SuppliersMetaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SupplierMappingUuidRequest, $0.SupplierMappingResponse>(
        'getSupplierMapping',
        getSupplierMapping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierMappingUuidRequest.fromBuffer(value),
        ($0.SupplierMappingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SupplierUuidRequest, $0.SupplierMappingListResponse>(
        'listSupplierMappings',
        listSupplierMappings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SupplierUuidRequest.fromBuffer(value),
        ($0.SupplierMappingListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SupplierMappingResponse> insertSupplierMapping_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierMappingRequest> request) async {
    return insertSupplierMapping(call, await request);
  }

  $async.Future<$0.SupplierMappingResponse> updateSupplierMapping_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierMapping> request) async {
    return updateSupplierMapping(call, await request);
  }

  $async.Future<$0.SuppliersMetaResponse> deleteSupplierMapping_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierMappingUuidRequest> request) async {
    return deleteSupplierMapping(call, await request);
  }

  $async.Future<$0.SupplierMappingResponse> getSupplierMapping_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierMappingUuidRequest> request) async {
    return getSupplierMapping(call, await request);
  }

  $async.Future<$0.SupplierMappingListResponse> listSupplierMappings_Pre($grpc.ServiceCall call, $async.Future<$0.SupplierUuidRequest> request) async {
    return listSupplierMappings(call, await request);
  }

  $async.Future<$0.SupplierMappingResponse> insertSupplierMapping($grpc.ServiceCall call, $0.SupplierMappingRequest request);
  $async.Future<$0.SupplierMappingResponse> updateSupplierMapping($grpc.ServiceCall call, $0.SupplierMapping request);
  $async.Future<$0.SuppliersMetaResponse> deleteSupplierMapping($grpc.ServiceCall call, $0.SupplierMappingUuidRequest request);
  $async.Future<$0.SupplierMappingResponse> getSupplierMapping($grpc.ServiceCall call, $0.SupplierMappingUuidRequest request);
  $async.Future<$0.SupplierMappingListResponse> listSupplierMappings($grpc.ServiceCall call, $0.SupplierUuidRequest request);
}
