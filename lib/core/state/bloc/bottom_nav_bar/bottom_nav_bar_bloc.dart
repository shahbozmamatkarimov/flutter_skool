import 'package:auto_route/auto_route.dart';
import 'package:skool/config/routes/route_path.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../config/routes/route_data.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(const BottomNavBarInitial(index: 0)) {
    on<OpenPage>((event, emit) {
      final path = event.path;

      final index = routesData.indexWhere((element) => element.path == path);

      if (index >= 0 && index < routesData.length) {
        emit(ChangePageIndex(index: index));
      }
    });
  }
  //
  final List<TabRouteData> routesData = [
    // const TabRouteData(path: RoutePath.dashboard, routeInfo: RootDashboard()),
    // const TabRouteData(path: RoutePath.activity, routeInfo: RootActivity()),
    // const TabRouteData(path: RoutePath.requests, routeInfo: RootRequests()),
    // const TabRouteData(path: RoutePath.cases, routeInfo: RootCases()),
    // const TabRouteData(path: RoutePath.team, routeInfo: RootTeam()),
    // const TabRouteData(path: RoutePath.clients, routeInfo: RootClients()),
    // const TabRouteData(path: RoutePath.tasks, routeInfo: RootTasks()),
    // const TabRouteData(path: RoutePath.agenda, routeInfo: RootAgenda()),
    // const TabRouteData(path: RoutePath.chat, routeInfo: RootChat()),
    // const TabRouteData(path: RoutePath.adminPanel, routeInfo: RootAdminPanel()),
  ];

  getRoutes() {
    List<PageRouteInfo<dynamic>> routes = [];
    for (var item in routesData) {
      routes.add(item.routeInfo);
    }

    return routes;
  }
}
