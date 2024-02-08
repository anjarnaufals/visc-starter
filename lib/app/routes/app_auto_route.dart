import 'package:auto_route/auto_route.dart';

import 'app_auto_route.gr.dart';

@AutoRouterConfig()
class AppAutoRoute extends $AppAutoRoute {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: ProductRoute.page,
        ),
      ];
}
