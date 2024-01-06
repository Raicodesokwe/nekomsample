//
//  Generated code. Do not modify.
//  source: apisupplier_plain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use supplymentDescriptor instead')
const Supplyment$json = {
  '1': 'Supplyment',
  '2': [
    {'1': 'CENTRAL', '2': 0},
    {'1': 'CROSS_DOCKING', '2': 1},
  ],
};

/// Descriptor for `Supplyment`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List supplymentDescriptor = $convert.base64Decode(
    'CgpTdXBwbHltZW50EgsKB0NFTlRSQUwQABIRCg1DUk9TU19ET0NLSU5HEAE=');

@$core.Deprecated('Use supplierEmptyRequestDescriptor instead')
const SupplierEmptyRequest$json = {
  '1': 'SupplierEmptyRequest',
};

/// Descriptor for `SupplierEmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierEmptyRequestDescriptor = $convert.base64Decode(
    'ChRTdXBwbGllckVtcHR5UmVxdWVzdA==');

@$core.Deprecated('Use supplierListResponseDescriptor instead')
const SupplierListResponse$json = {
  '1': 'SupplierListResponse',
  '2': [
    {'1': 'metaResponse', '3': 1, '4': 1, '5': 11, '6': '.SuppliersMetaResponse', '10': 'metaResponse'},
    {'1': 'supplier', '3': 2, '4': 3, '5': 11, '6': '.Supplier', '10': 'supplier'},
  ],
};

/// Descriptor for `SupplierListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierListResponseDescriptor = $convert.base64Decode(
    'ChRTdXBwbGllckxpc3RSZXNwb25zZRI6CgxtZXRhUmVzcG9uc2UYASABKAsyFi5TdXBwbGllcn'
    'NNZXRhUmVzcG9uc2VSDG1ldGFSZXNwb25zZRIlCghzdXBwbGllchgCIAMoCzIJLlN1cHBsaWVy'
    'UghzdXBwbGllcg==');

@$core.Deprecated('Use suppliersMetaResponseDescriptor instead')
const SuppliersMetaResponse$json = {
  '1': 'SuppliersMetaResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'errorMessage', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'errorType', '3': 3, '4': 1, '5': 9, '10': 'errorType'},
  ],
};

/// Descriptor for `SuppliersMetaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suppliersMetaResponseDescriptor = $convert.base64Decode(
    'ChVTdXBwbGllcnNNZXRhUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIiCgxlcn'
    'Jvck1lc3NhZ2UYAiABKAlSDGVycm9yTWVzc2FnZRIcCgllcnJvclR5cGUYAyABKAlSCWVycm9y'
    'VHlwZQ==');

@$core.Deprecated('Use addSupplierRequestDescriptor instead')
const AddSupplierRequest$json = {
  '1': 'AddSupplierRequest',
  '2': [
    {'1': 'supplierId', '3': 1, '4': 1, '5': 9, '10': 'supplierId'},
    {'1': 'name1', '3': 2, '4': 1, '5': 9, '10': 'name1'},
    {'1': 'name2', '3': 3, '4': 1, '5': 9, '10': 'name2'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'internalSupplier', '3': 5, '4': 1, '5': 8, '10': 'internalSupplier'},
    {'1': 'supplyment', '3': 6, '4': 1, '5': 14, '6': '.Supplyment', '10': 'supplyment'},
    {'1': 'shippingTime', '3': 7, '4': 1, '5': 3, '10': 'shippingTime'},
    {'1': 'address', '3': 8, '4': 1, '5': 11, '6': '.SupplierAddress', '10': 'address'},
  ],
};

/// Descriptor for `AddSupplierRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSupplierRequestDescriptor = $convert.base64Decode(
    'ChJBZGRTdXBwbGllclJlcXVlc3QSHgoKc3VwcGxpZXJJZBgBIAEoCVIKc3VwcGxpZXJJZBIUCg'
    'VuYW1lMRgCIAEoCVIFbmFtZTESFAoFbmFtZTIYAyABKAlSBW5hbWUyEhQKBWVtYWlsGAQgASgJ'
    'UgVlbWFpbBIqChBpbnRlcm5hbFN1cHBsaWVyGAUgASgIUhBpbnRlcm5hbFN1cHBsaWVyEisKCn'
    'N1cHBseW1lbnQYBiABKA4yCy5TdXBwbHltZW50UgpzdXBwbHltZW50EiIKDHNoaXBwaW5nVGlt'
    'ZRgHIAEoA1IMc2hpcHBpbmdUaW1lEioKB2FkZHJlc3MYCCABKAsyEC5TdXBwbGllckFkZHJlc3'
    'NSB2FkZHJlc3M=');

@$core.Deprecated('Use updateSupplierRequestDescriptor instead')
const UpdateSupplierRequest$json = {
  '1': 'UpdateSupplierRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    {'1': 'supplierId', '3': 2, '4': 1, '5': 9, '10': 'supplierId'},
    {'1': 'name1', '3': 3, '4': 1, '5': 9, '10': 'name1'},
    {'1': 'name2', '3': 4, '4': 1, '5': 9, '10': 'name2'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    {'1': 'internalSupplier', '3': 6, '4': 1, '5': 8, '10': 'internalSupplier'},
    {'1': 'supplyment', '3': 7, '4': 1, '5': 14, '6': '.Supplyment', '10': 'supplyment'},
    {'1': 'shippingTime', '3': 8, '4': 1, '5': 3, '10': 'shippingTime'},
    {'1': 'address', '3': 9, '4': 1, '5': 11, '6': '.SupplierAddress', '10': 'address'},
  ],
};

/// Descriptor for `UpdateSupplierRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSupplierRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVTdXBwbGllclJlcXVlc3QSEgoEdXVpZBgBIAEoCVIEdXVpZBIeCgpzdXBwbGllck'
    'lkGAIgASgJUgpzdXBwbGllcklkEhQKBW5hbWUxGAMgASgJUgVuYW1lMRIUCgVuYW1lMhgEIAEo'
    'CVIFbmFtZTISFAoFZW1haWwYBSABKAlSBWVtYWlsEioKEGludGVybmFsU3VwcGxpZXIYBiABKA'
    'hSEGludGVybmFsU3VwcGxpZXISKwoKc3VwcGx5bWVudBgHIAEoDjILLlN1cHBseW1lbnRSCnN1'
    'cHBseW1lbnQSIgoMc2hpcHBpbmdUaW1lGAggASgDUgxzaGlwcGluZ1RpbWUSKgoHYWRkcmVzcx'
    'gJIAEoCzIQLlN1cHBsaWVyQWRkcmVzc1IHYWRkcmVzcw==');

@$core.Deprecated('Use supplierUuidRequestDescriptor instead')
const SupplierUuidRequest$json = {
  '1': 'SupplierUuidRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `SupplierUuidRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierUuidRequestDescriptor = $convert.base64Decode(
    'ChNTdXBwbGllclV1aWRSZXF1ZXN0EhIKBHV1aWQYASABKAlSBHV1aWQ=');

@$core.Deprecated('Use calculatePurchasePriceRequestDescriptor instead')
const CalculatePurchasePriceRequest$json = {
  '1': 'CalculatePurchasePriceRequest',
  '2': [
    {'1': 'supplieruuid', '3': 1, '4': 1, '5': 9, '10': 'supplieruuid'},
    {'1': 'itemuuid', '3': 2, '4': 1, '5': 9, '10': 'itemuuid'},
    {'1': 'allsupplier', '3': 3, '4': 1, '5': 8, '10': 'allsupplier'},
  ],
};

/// Descriptor for `CalculatePurchasePriceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calculatePurchasePriceRequestDescriptor = $convert.base64Decode(
    'Ch1DYWxjdWxhdGVQdXJjaGFzZVByaWNlUmVxdWVzdBIiCgxzdXBwbGllcnV1aWQYASABKAlSDH'
    'N1cHBsaWVydXVpZBIaCghpdGVtdXVpZBgCIAEoCVIIaXRlbXV1aWQSIAoLYWxsc3VwcGxpZXIY'
    'AyABKAhSC2FsbHN1cHBsaWVy');

@$core.Deprecated('Use supplierAddressDescriptor instead')
const SupplierAddress$json = {
  '1': 'SupplierAddress',
  '2': [
    {'1': 'firstName', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'street', '3': 3, '4': 1, '5': 9, '10': 'street'},
    {'1': 'houseNumber', '3': 4, '4': 1, '5': 9, '10': 'houseNumber'},
    {'1': 'street2', '3': 5, '4': 1, '5': 9, '10': 'street2'},
    {'1': 'zip', '3': 6, '4': 1, '5': 9, '10': 'zip'},
    {'1': 'city', '3': 7, '4': 1, '5': 9, '10': 'city'},
    {'1': 'countryISO3', '3': 9, '4': 1, '5': 9, '10': 'countryISO3'},
  ],
};

/// Descriptor for `SupplierAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierAddressDescriptor = $convert.base64Decode(
    'Cg9TdXBwbGllckFkZHJlc3MSHAoJZmlyc3ROYW1lGAEgASgJUglmaXJzdE5hbWUSGgoIbGFzdE'
    '5hbWUYAiABKAlSCGxhc3ROYW1lEhYKBnN0cmVldBgDIAEoCVIGc3RyZWV0EiAKC2hvdXNlTnVt'
    'YmVyGAQgASgJUgtob3VzZU51bWJlchIYCgdzdHJlZXQyGAUgASgJUgdzdHJlZXQyEhAKA3ppcB'
    'gGIAEoCVIDemlwEhIKBGNpdHkYByABKAlSBGNpdHkSIAoLY291bnRyeUlTTzMYCSABKAlSC2Nv'
    'dW50cnlJU08z');

@$core.Deprecated('Use supplierDescriptor instead')
const Supplier$json = {
  '1': 'Supplier',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    {'1': 'supplierId', '3': 2, '4': 1, '5': 9, '10': 'supplierId'},
    {'1': 'name1', '3': 3, '4': 1, '5': 9, '10': 'name1'},
    {'1': 'name2', '3': 4, '4': 1, '5': 9, '10': 'name2'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    {'1': 'internalSupplier', '3': 6, '4': 1, '5': 8, '10': 'internalSupplier'},
    {'1': 'supplyment', '3': 7, '4': 1, '5': 14, '6': '.Supplyment', '10': 'supplyment'},
    {'1': 'shippingTime', '3': 8, '4': 1, '5': 3, '10': 'shippingTime'},
    {'1': 'address', '3': 9, '4': 1, '5': 11, '6': '.SupplierAddress', '10': 'address'},
  ],
};

/// Descriptor for `Supplier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierDescriptor = $convert.base64Decode(
    'CghTdXBwbGllchISCgR1dWlkGAEgASgJUgR1dWlkEh4KCnN1cHBsaWVySWQYAiABKAlSCnN1cH'
    'BsaWVySWQSFAoFbmFtZTEYAyABKAlSBW5hbWUxEhQKBW5hbWUyGAQgASgJUgVuYW1lMhIUCgVl'
    'bWFpbBgFIAEoCVIFZW1haWwSKgoQaW50ZXJuYWxTdXBwbGllchgGIAEoCFIQaW50ZXJuYWxTdX'
    'BwbGllchIrCgpzdXBwbHltZW50GAcgASgOMgsuU3VwcGx5bWVudFIKc3VwcGx5bWVudBIiCgxz'
    'aGlwcGluZ1RpbWUYCCABKANSDHNoaXBwaW5nVGltZRIqCgdhZGRyZXNzGAkgASgLMhAuU3VwcG'
    'xpZXJBZGRyZXNzUgdhZGRyZXNz');

@$core.Deprecated('Use supplierResponseDescriptor instead')
const SupplierResponse$json = {
  '1': 'SupplierResponse',
  '2': [
    {'1': 'metaResponse', '3': 1, '4': 1, '5': 11, '6': '.SuppliersMetaResponse', '10': 'metaResponse'},
    {'1': 'supplier', '3': 2, '4': 1, '5': 11, '6': '.Supplier', '10': 'supplier'},
  ],
};

/// Descriptor for `SupplierResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierResponseDescriptor = $convert.base64Decode(
    'ChBTdXBwbGllclJlc3BvbnNlEjoKDG1ldGFSZXNwb25zZRgBIAEoCzIWLlN1cHBsaWVyc01ldG'
    'FSZXNwb25zZVIMbWV0YVJlc3BvbnNlEiUKCHN1cHBsaWVyGAIgASgLMgkuU3VwcGxpZXJSCHN1'
    'cHBsaWVy');

@$core.Deprecated('Use calculatePurchasePriceResponseDescriptor instead')
const CalculatePurchasePriceResponse$json = {
  '1': 'CalculatePurchasePriceResponse',
  '2': [
    {'1': 'metaResponse', '3': 1, '4': 1, '5': 11, '6': '.SuppliersMetaResponse', '10': 'metaResponse'},
    {'1': 'itemsread', '3': 2, '4': 1, '5': 3, '10': 'itemsread'},
    {'1': 'itemschanged', '3': 3, '4': 1, '5': 3, '10': 'itemschanged'},
    {'1': 'errorLines', '3': 4, '4': 3, '5': 9, '10': 'errorLines'},
  ],
};

/// Descriptor for `CalculatePurchasePriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calculatePurchasePriceResponseDescriptor = $convert.base64Decode(
    'Ch5DYWxjdWxhdGVQdXJjaGFzZVByaWNlUmVzcG9uc2USOgoMbWV0YVJlc3BvbnNlGAEgASgLMh'
    'YuU3VwcGxpZXJzTWV0YVJlc3BvbnNlUgxtZXRhUmVzcG9uc2USHAoJaXRlbXNyZWFkGAIgASgD'
    'UglpdGVtc3JlYWQSIgoMaXRlbXNjaGFuZ2VkGAMgASgDUgxpdGVtc2NoYW5nZWQSHgoKZXJyb3'
    'JMaW5lcxgEIAMoCVIKZXJyb3JMaW5lcw==');

@$core.Deprecated('Use supplierMappingUuidRequestDescriptor instead')
const SupplierMappingUuidRequest$json = {
  '1': 'SupplierMappingUuidRequest',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
  ],
};

/// Descriptor for `SupplierMappingUuidRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierMappingUuidRequestDescriptor = $convert.base64Decode(
    'ChpTdXBwbGllck1hcHBpbmdVdWlkUmVxdWVzdBISCgR1dWlkGAEgASgJUgR1dWlk');

@$core.Deprecated('Use supplierMappingDescriptor instead')
const SupplierMapping$json = {
  '1': 'SupplierMapping',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    {'1': 'supplierUuid', '3': 2, '4': 1, '5': 9, '10': 'supplierUuid'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    {'1': 'variantUuid', '3': 4, '4': 1, '5': 9, '10': 'variantUuid'},
  ],
};

/// Descriptor for `SupplierMapping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierMappingDescriptor = $convert.base64Decode(
    'Cg9TdXBwbGllck1hcHBpbmcSEgoEdXVpZBgBIAEoCVIEdXVpZBIiCgxzdXBwbGllclV1aWQYAi'
    'ABKAlSDHN1cHBsaWVyVXVpZBIUCgV2YWx1ZRgDIAEoCVIFdmFsdWUSIAoLdmFyaWFudFV1aWQY'
    'BCABKAlSC3ZhcmlhbnRVdWlk');

@$core.Deprecated('Use supplierMappingRequestDescriptor instead')
const SupplierMappingRequest$json = {
  '1': 'SupplierMappingRequest',
  '2': [
    {'1': 'supplierUuid', '3': 1, '4': 1, '5': 9, '10': 'supplierUuid'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'variantUuid', '3': 3, '4': 1, '5': 9, '10': 'variantUuid'},
  ],
};

/// Descriptor for `SupplierMappingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierMappingRequestDescriptor = $convert.base64Decode(
    'ChZTdXBwbGllck1hcHBpbmdSZXF1ZXN0EiIKDHN1cHBsaWVyVXVpZBgBIAEoCVIMc3VwcGxpZX'
    'JVdWlkEhQKBXZhbHVlGAIgASgJUgV2YWx1ZRIgCgt2YXJpYW50VXVpZBgDIAEoCVILdmFyaWFu'
    'dFV1aWQ=');

@$core.Deprecated('Use supplierMappingResponseDescriptor instead')
const SupplierMappingResponse$json = {
  '1': 'SupplierMappingResponse',
  '2': [
    {'1': 'metaResponse', '3': 1, '4': 1, '5': 11, '6': '.SuppliersMetaResponse', '10': 'metaResponse'},
    {'1': 'mapping', '3': 2, '4': 1, '5': 11, '6': '.SupplierMapping', '10': 'mapping'},
  ],
};

/// Descriptor for `SupplierMappingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierMappingResponseDescriptor = $convert.base64Decode(
    'ChdTdXBwbGllck1hcHBpbmdSZXNwb25zZRI6CgxtZXRhUmVzcG9uc2UYASABKAsyFi5TdXBwbG'
    'llcnNNZXRhUmVzcG9uc2VSDG1ldGFSZXNwb25zZRIqCgdtYXBwaW5nGAIgASgLMhAuU3VwcGxp'
    'ZXJNYXBwaW5nUgdtYXBwaW5n');

@$core.Deprecated('Use supplierMappingListResponseDescriptor instead')
const SupplierMappingListResponse$json = {
  '1': 'SupplierMappingListResponse',
  '2': [
    {'1': 'metaResponse', '3': 1, '4': 1, '5': 11, '6': '.SuppliersMetaResponse', '10': 'metaResponse'},
    {'1': 'mappings', '3': 2, '4': 3, '5': 11, '6': '.SupplierMapping', '10': 'mappings'},
  ],
};

/// Descriptor for `SupplierMappingListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierMappingListResponseDescriptor = $convert.base64Decode(
    'ChtTdXBwbGllck1hcHBpbmdMaXN0UmVzcG9uc2USOgoMbWV0YVJlc3BvbnNlGAEgASgLMhYuU3'
    'VwcGxpZXJzTWV0YVJlc3BvbnNlUgxtZXRhUmVzcG9uc2USLAoIbWFwcGluZ3MYAiADKAsyEC5T'
    'dXBwbGllck1hcHBpbmdSCG1hcHBpbmdz');

