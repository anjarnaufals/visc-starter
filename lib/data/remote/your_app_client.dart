import 'dart:io';

import '../../env/env_app.dart';
import '../../infras/infras.dart';
import '../local/session.dart';

const Map<String, String> _constHeader = {};

class YourAppClient {
  static Future<Map<String, dynamic>> _authorization() async {
    final token = await Session.getAuth() ?? '';
    final Map<String, dynamic> authorizationHeader = {
      HttpHeaders.authorizationHeader: token,
    };

    return authorizationHeader;
  }

  Future<DioInfras> call({bool useAuthentication = false}) async {
    return DioInfras(
      baseUrl: EnvApp().base_url,
      acceptHeaders: {
        HttpHeaders.acceptHeader: "accept: application/json",
      },
      headers: useAuthentication ? await _authorization() : _constHeader,
    );
  }
}
