import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:localstorage/localstorage.dart';

class StorageCore {
  final LocalStorage storage = LocalStorage('local_data.json');

  Future<bool> ensureStorageReady() async {
    return await storage.ready;
  }

  Future<dynamic> getObject(String key) async {
    try {
      bool isStorageReady = await storage.ready;
      if (isStorageReady) {
        var dataa = storage.getItem(key);
        return dataa;
      }
    } catch (e) {
      debugPrint("Error while load access token: $e");
      rethrow;
    }
  }

  Future<String> getTokenUser() async {
    try {
      bool isStorageReady = await storage.ready;
      if (isStorageReady) {
        var data = storage.getItem('token');
        return data['value'].toString();
      }
      return '';
    } catch (e) {
      debugPrint("Error while load access token: $e");
      rethrow;
    }
  }

  Future saveObject(dynamic object, String key) async {
    try {
      bool isStorageReady = await storage.ready;
      if (isStorageReady) {
        await storage.setItem(key, object);
        log('sukses save $key');
      }
    } catch (e) {
      debugPrint('error save$key : $e');
      rethrow;
    }
  }

  // Future<void> savePhone(dynamic object, String key) async {
  //   await storage.setItem(key, object);
  // }

  // Future savePhone(dynamic object, String key) async {
  //   try {
  //     bool isStorageReady = await storage.ready;
  //     if (isStorageReady) {
  //       await storage.setItem(key, object);
  //       log('sukses save $key');
  //     }
  //   } catch (e) {
  //     debugPrint('error save$key : $e');
  //     rethrow;
  //   }
  // }

  Future<void> clearLocalStorage() async {
    await storage.clear();
  }
}
