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
          page: RootSearch.page,
          path: RoutePath.search,
        ),
        // --------
        AutoRoute(
          page: SplashRoute.page,
          path: RoutePath.splash,
          initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: RoutePath.login,
        ),
        AutoRoute(
          page: ForgotPasswordRoute.page,
          path: RoutePath.forgotPassword,
        ),
        CustomRoute(
          page: MenuRoute.page,
          path: RoutePath.menu,
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 150,
        ),
        CustomRoute(
          page: NotificationRoute.page,
          path: RoutePath.notification,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
        ),
        AutoRoute(
          page: AppMainRoute.page,
          path: RoutePath.main,
          children: [
            // ===============
            //    DASHBOARD
            // ===============

            AutoRoute(
              page: RootDashboard.page,
              path: RoutePath.dashboard,
              initial: true,
              children: [
                AutoRoute(
                  page: DashboardRoute.page,
                  path: "",
                ),
              ],
            ),

            // ===============
            //    ACTIVITY
            // ===============

            AutoRoute(
              page: RootActivity.page,
              path: RoutePath.activity,
            ),
            AutoRoute(
              page: RootRequests.page,
              path: RoutePath.requests,
            ),
            AutoRoute(
              page: RootCases.page,
              path: RoutePath.cases,
            ),
            AutoRoute(
              page: RootTeam.page,
              path: RoutePath.team,
            ),
            AutoRoute(
              page: RootClients.page,
              path: RoutePath.clients,
            ),
            AutoRoute(
              page: RootTasks.page,
              path: RoutePath.tasks,
            ),
            AutoRoute(
              page: RootAgenda.page,
              path: RoutePath.agenda,
            ),
            AutoRoute(
              page: RootChat.page,
              path: RoutePath.chat,
            ),
            AutoRoute(
              page: RootAdminPanel.page,
              path: RoutePath.adminPanel,
            ),

            // ---------
          ],
        ),
      ];
}
