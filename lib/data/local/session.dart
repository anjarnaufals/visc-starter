import '../../infras/infras.dart';

class Session {
  static Future<void> saveAuth(String token) async {
    return await LocalStorageInfras.storeData(
      key: _SessionKey.authSession,
      value: token,
    );
  }

  static Future<void> deleteAuth() async {
    return await LocalStorageInfras.deleteData(
      key: _SessionKey.authSession,
    );
  }

  static Future<bool> checkAuth() async {
    return await LocalStorageInfras.checkData(
      key: _SessionKey.authSession,
    );
  }

  static Future<String?> getAuth() async {
    return await LocalStorageInfras.getData(
      key: _SessionKey.authSession,
    );
  }
}

sealed class _SessionKey {
  static const String authSession = 'authSession';
}
