// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i25;
import 'package:skool/features/search/presentation/pages/search.dart' as _i1;
import 'package:skool/features/community/presentation/pages/community.dart' as _i2;
// import 'package:skool/features/main/presentation/pages/root/root_community.dart'
//     as _i2;
// import 'package:skool/features/main/presentation/pages/root/root_search.dart'
//     as _i1;
// import 'package:skool/features/auth/presentation/pages/login_screen.dart'
//     as _i7;
// import 'package:skool/features/auth/presentation/pages/register/register_screen.dart'
//     as _i13;
// import 'package:skool/features/dashboard/presentation/pages/dashboard_screen.dart'
//     as _i5;
// import 'package:skool/features/main/presentation/pages/app_main_screen.dart'
//     as _i1;
// import 'package:skool/features/main/presentation/pages/menu_screen.dart' as _i8;
// import 'package:skool/features/main/presentation/pages/root/root_activity.dart'
//     as _i14;
// import 'package:skool/features/main/presentation/pages/root/root_admin_panel.dart'
//     as _i15;
// import 'package:skool/features/main/presentation/pages/root/root_agenda.dart'
//     as _i16;
// import 'package:skool/features/main/presentation/pages/root/root_cases.dart'
//     as _i17;
// import 'package:skool/features/main/presentation/pages/root/root_chat.dart'
//     as _i18;
// import 'package:skool/features/main/presentation/pages/root/root_clients.dart'
//     as _i19;
// import 'package:skool/features/main/presentation/pages/root/root_dashboard.dart'
//     as _i20;
// import 'package:skool/features/main/presentation/pages/root/root_requests.dart'
//     as _i21;
// import 'package:skool/features/main/presentation/pages/root/root_tasks.dart'
//     as _i22;
// import 'package:skool/features/main/presentation/pages/root/root_team.dart'
//     as _i23;
// import 'package:skool/features/notification/presentation/pages/notification_screen.dart'
//     as _i9;
// import 'package:skool/features/profile/presentation/pages/edit/change_email_screen.dart'
//     as _i2;
// import 'package:skool/features/profile/presentation/pages/edit/change_password_screen.dart'
//     as _i3;
// import 'package:skool/features/profile/presentation/pages/edit/create_passport_screen.dart'
//     as _i4;
// import 'package:skool/features/profile/presentation/pages/edit/profile_edit_screen.dart'
//     as _i10;
// import 'package:skool/features/profile/presentation/pages/edit/profile_forgot_password_screen.dart'
//     as _i11;
// import 'package:skool/features/profile/presentation/pages/edit/profile_picture_screen.dart'
//     as _i12;
// import 'package:skool/features/splash/presentation/pages/splash_screen.dart'
//     as _i24;

abstract class $AppRouter extends _i25.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i25.PageFactory> pagesMap = {
    // RootSearch.name: (routeData) {
    //   return _i25.AutoRoutePage<dynamic>(
    //     routeData: routeData,
    //     child: _i1.Search(),
    //   );
    // },

    AppMainRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CommunityPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppMainScreen]
class AppMainRoute extends _i25.PageRouteInfo<void> {
  const AppMainRoute({List<_i25.PageRouteInfo>? children})
      : super(
          AppMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppMainRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i1.RootSearch]
class RootSearch extends _i25.PageRouteInfo<void> {
  const RootSearch({List<_i25.PageRouteInfo>? children})
      : super(
          RootSearch.name,
          initialChildren: children,
        );

  static const String name = 'RootSearch';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}
