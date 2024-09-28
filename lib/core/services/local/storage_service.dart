import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  static const _storage = FlutterSecureStorage();

  static Future<void> saveModelData<T>(String key, T data) async {
    try {
      final jsonData = json.encode(data);
      await _storage.write(key: key, value: jsonData);
    } catch (e) {
      if (kDebugMode) {
        print("encoding error");
      }
    }
  }

  static Future<void> saveData(String key, String data) async {
    await _storage.write(key: key, value: data).then((value) => null);
  }

  static Future<Map<String, dynamic>?> getModelData<T>(String key) async {
    final jsonData = await _storage.read(key: key);
    if (jsonData != null) {
      final decodedData = json.decode(jsonData);
      return decodedData;
    }
    return null;
  }

  static Future<String?> getData(String key) async {
    return await _storage.read(key: key);
  }

  static Future<void> deleteData(String key) async {
    await _storage.delete(key: key);
  }

  static Future<void> deleteAllData() async {
    await _storage.deleteAll();
  }
}
