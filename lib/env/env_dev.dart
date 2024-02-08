// ignore_for_file: non_constant_identifier_names

import 'package:envied/envied.dart';

import 'env_app.dart';
import 'env_params.dart';

part 'env_dev.g.dart';

@Envied(name: 'EnvDev', path: '.env.dev')
class EnvDev implements EnvApp, EnvParams {
  @override
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  final String base_url = _EnvDev.base_url;
}
