// ignore_for_file: non_constant_identifier_names

import 'package:envied/envied.dart';

import 'env_app.dart';
import 'env_params.dart';

part 'env_prod.g.dart';

@Envied(name: 'EnvProd', path: '.env')
class EnvProd implements EnvApp, EnvParams {
  @override
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  final String base_url = _EnvProd.base_url;
}
