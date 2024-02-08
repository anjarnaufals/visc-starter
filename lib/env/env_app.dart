import 'package:flutter/foundation.dart';

import 'env_dev.dart';
import 'env_params.dart';
import 'env_prod.dart';

abstract class EnvApp implements EnvParams {
  factory EnvApp() => _instance;

  static final EnvApp _instance = kDebugMode ? EnvDev() : EnvProd();
}
