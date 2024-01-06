import 'dart:async';
import 'dart:math';

import 'package:fixnum/fixnum.dart';
import 'package:protobufs/protobufs.dart';

class SupplierService extends SuppliersServiceBase {
  static Map<String, Supplier> suppliersDatabase = {};

  @override
  Future<SupplierResponse> addSupplier(
      ServiceCall call, AddSupplierRequest request) async {
    try {
      // Generate a UUID for the new supplier (in a real scenario, this might be handled by the database)
      final uuid = Random().nextInt(10000);

      // Create a new supplier object
      final newSupplier = Supplier()
        ..uuid = uuid.toString()
        ..supplierId = request.supplierId
        ..name1 = request.name1
        ..name2 = request.name2
        ..email = request.email
        ..internalSupplier = request.internalSupplier
        ..supplyment = request.supplyment
        ..shippingTime = request.shippingTime
        ..address = request.address;

      // Add the new supplier to the "database"
      suppliersDatabase[uuid.toString()] = newSupplier;

      // Return the added supplier as a response
      return SupplierResponse()
        ..metaResponse =
            SuppliersMetaResponse() // Assuming success without errors
        ..supplier = newSupplier;
    } catch (e) {
      // Handle exceptions or errors, construct appropriate error response
      return SupplierResponse()
        ..metaResponse = SuppliersMetaResponse()
        ..metaResponse.success = false
        ..metaResponse.errorMessage = 'Failed to add supplier: $e';
    }
  }

  @override
  Future<SupplierResponse> updateSupplier(
      ServiceCall call, UpdateSupplierRequest request) async {
    try {
      if (!suppliersDatabase.containsKey(request.uuid)) {
        return SupplierResponse()
          ..metaResponse = SuppliersMetaResponse()
          ..metaResponse.success = false
          ..metaResponse.errorMessage = 'Supplier not found';
      }
      Supplier? existingSupplier;
      // Update the existing supplier with the provided UUID
      existingSupplier = suppliersDatabase[request.uuid]!
        ..supplierId = request.supplierId
        ..name1 = request.name1
        ..name2 = request.name2
        ..email = request.email
        ..internalSupplier = request.internalSupplier
        ..supplyment = request.supplyment
        ..shippingTime = request.shippingTime
        ..address = request.address;

      // Update the supplier in the "database"
      suppliersDatabase[request.uuid] = existingSupplier;

      // Return the updated supplier as a response
      return SupplierResponse()
        ..metaResponse =
            SuppliersMetaResponse() // Assuming success without errors
        ..supplier = existingSupplier;
    } catch (e) {
      // Handle exceptions or errors, construct appropriate error response
      return SupplierResponse()
        ..metaResponse = SuppliersMetaResponse()
        ..metaResponse.success = false
        ..metaResponse.errorMessage = 'Failed to update supplier: $e';
    }
  }

  @override
  Future<SuppliersMetaResponse> deleteSupplier(
      ServiceCall call, SupplierUuidRequest request) async {
    try {
      final uuid = request.uuid;

      if (!suppliersDatabase.containsKey(uuid)) {
        return SuppliersMetaResponse()
          ..success = false
          ..errorMessage = 'Supplier not found';
      }

      // Delete the supplier with the provided UUID from the "database"
      suppliersDatabase.remove(uuid);

      // Return success response
      return SuppliersMetaResponse()..success = true;
    } catch (e) {
      // Handle exceptions or errors, construct appropriate error response
      return SuppliersMetaResponse()
        ..success = false
        ..errorMessage = 'Failed to delete supplier: $e';
    }
  }

  @override
  Future<SupplierResponse> getSupplier(
      ServiceCall call, SupplierUuidRequest request) async {
    try {
      final uuid = request.uuid;

      if (!suppliersDatabase.containsKey(uuid)) {
        return SupplierResponse()
          ..metaResponse = SuppliersMetaResponse()
          ..metaResponse.success = false
          ..metaResponse.errorMessage = 'Supplier not found';
      }

      // Retrieve the supplier with the provided UUID from the "database"
      final supplier = suppliersDatabase[uuid];

      // Return the retrieved supplier as a response
      return SupplierResponse()
        ..metaResponse =
            SuppliersMetaResponse() // Assuming success without errors
        ..supplier = supplier!;
    } catch (e) {
      // Handle exceptions or errors, construct appropriate error response
      return SupplierResponse()
        ..metaResponse = SuppliersMetaResponse()
        ..metaResponse.success = false
        ..metaResponse.errorMessage = 'Failed to get supplier: $e';
    }
  }

  @override
  Future<SupplierListResponse> getAllSupplier(
      ServiceCall call, SupplierEmptyRequest request) async {
    try {
      final List<Supplier> allSuppliers = suppliersDatabase.values.toList();

      // Construct SupplierListResponse
      final supplierListResponse = SupplierListResponse()
        ..metaResponse =
            SuppliersMetaResponse() // Assuming success without errors
        ..supplier.addAll(allSuppliers);

      return supplierListResponse;
    } catch (e) {
      // Handle exceptions or errors, construct appropriate error response
      return SupplierListResponse()
        ..metaResponse = SuppliersMetaResponse()
        ..metaResponse.success = false
        ..metaResponse.errorMessage = 'Failed to get all suppliers: $e';
    }
  }

  @override
  Future<CalculatePurchasePriceResponse> calculatePurchasePrice(
      ServiceCall call, CalculatePurchasePriceRequest request) async {
    try {
      final supplierUuid = request.supplieruuid;
      // final itemUuid = request.itemuuid;
      final allSupplier = request.allsupplier;

      // Perform calculations using the provided parameters
      // Example calculation logic (modify as per your actual implementation)
      Int64 itemsRead = Int64.ZERO;
      Int64 itemsChanged = Int64.ZERO;
      final List<String> errorLines = [];

      // Simulated calculation logic - count items and add error lines
      if (allSupplier) {
        itemsRead = Int64(suppliersDatabase.length);
        itemsChanged = Int64(suppliersDatabase.length); // For illustration
      } else {
        // Perform calculation based on specific supplier or item
        if (suppliersDatabase.containsKey(supplierUuid)) {
          itemsRead = Int64.ONE;
          // Perform calculations specific to the supplier/item
          // Modify itemsChanged based on your calculation logic
        } else {
          errorLines.add('Supplier not found');
        }
      }

      // Construct CalculatePurchasePriceResponse
      final purchasePriceResponse = CalculatePurchasePriceResponse()
        ..metaResponse =
            SuppliersMetaResponse() // Assuming success without errors
        ..itemsread = itemsRead
        ..itemschanged = itemsChanged
        ..errorLines.addAll(errorLines);

      return purchasePriceResponse;
    } catch (e) {
      // Handle exceptions or errors, construct appropriate error response
      return CalculatePurchasePriceResponse()
        ..metaResponse = SuppliersMetaResponse()
        ..metaResponse.success = false
        ..metaResponse.errorMessage = 'Failed to calculate purchase price: $e';
    }
  }
}
