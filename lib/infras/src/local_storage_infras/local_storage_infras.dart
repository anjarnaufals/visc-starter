import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageInfras {
  static FlutterSecureStorage instance = const FlutterSecureStorage();

  static Future<void> storeData({
    required String key,
    required String value,
  }) async {
    return await instance.write(key: key, value: value);
  }

  static Future<String?> getData({required String key}) async {
    return await instance.read(key: key);
  }

  static Future<void> deleteData({required String key}) async {
    return await instance.delete(key: key);
  }

  static Future<bool> checkData({required String key}) async {
    bool check = false;
    try {
      check = await instance.read(key: key) != null;
    } on PlatformException {
      // Workaround for https://github.com/mogol/flutter_secure_storage/issues/43
      await instance.deleteAll();
    }

    return check;
  }
}
