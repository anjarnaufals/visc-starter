import 'package:flutter/material.dart';

import 'app/routes/app_auto_route.dart';
import 'config/config.dart';

void main() async {
  await Config.initialize();

  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  static final router = AppAutoRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }
}
