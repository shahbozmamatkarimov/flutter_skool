import 'package:auto_route/auto_route.dart';
import 'package:skool/config/routes/router.gr.dart';

import 'route_path.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppMainRoute.page,
          path: RoutePath.main,
          initial: true,
          // children: [
          //   AutoRoute(
          //     page: RootSearch.page,
          //     path: RoutePath.search,
          //     initial: true,
          //   ),
          // ],
        ),
      ];
}
