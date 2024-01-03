import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../../features/home/data/models/local_product_model.dart';
import '../failures/exception.dart';
import '../networking/remote_response.dart';

class LocalStorageService {
  late Isar _database;

  LocalStorageService() {
    initLocalStorage();
  }


  Future<bool> initLocalStorage() async {
    try {
      _database = await Isar.open(
        [LocalProductsSchema], directory: 'database/localproducts',
      );
      return true;
    } catch (e) {
      throw LocalException(errorMessage: e.toString());
    }
  }

  /// Perform add to local storage
  Future<void> localDbInsertItem({dynamic item}) async {
    if (item != null) debugPrint("item Body:\n${item}");
    try {
      await _database.writeTxn(() async {
        await _database.localProducts.put(item); // insert & update
      });
    } on LocalException catch (e) {
      throw LocalException(errorMessage: e.errorMessage);
    }
  }

  /// Perform add Bulk to local storage
  Future<void> localDbInsertList(
      {required List<LocalProducts> itemsList}) async {
    try {
      for (var item in itemsList) {
        final existingProd = await _database.localProducts.get(item.id!);
        if (existingProd != null) {
          await _database.writeTxn(() async {
            await _database.localProducts.delete(item.id!); // delete
          });
        }
        await _database.writeTxn(() async {
          await _database.localProducts.put(item); // insert & update
        });
      }
    } on LocalException catch (e) {
      throw LocalException(errorMessage: e.errorMessage);
    }
  }

  /// Perform add Bulk to local storage
  Future<void> localDbRemove({required LocalProducts item}) async {
    try {
      await _database.writeTxn(() async {
        await _database.localProducts.delete(item.id!); // delete
      });
    } on LocalException catch (e) {
      throw LocalException(errorMessage: e.errorMessage);
    }
  }

  /// perform clear local storage
  Future<void> localDbClearAll() async {
    try {
      await _database.writeTxn(() async {
        await _database.localProducts.clear(); // delete
      });
    } on LocalException catch (e) {
      throw LocalException(errorMessage: e.errorMessage);
    }
  }

  /// Perform get all data in local Storage
  Future<List<LocalProducts>> localDbGetAllData() async {
    try {
      List<LocalProducts> localProductsList = [];
      await _database.txn(() async {
        localProductsList = await _database
            .localProducts
            .where()
            .findAll();
      });

      return localProductsList;
    } on LocalException catch (e) {
      throw LocalException(errorMessage: e.errorMessage);
    }
  }


}