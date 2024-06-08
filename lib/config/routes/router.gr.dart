// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:skool/features/community/presentation/pages/communitytab_screen.dart'
    as _i4;
import 'package:skool/features/community/presentation/pages/main_screen.dart'
    as _i5;
import 'package:skool/features/profile/presentation/pages/account_screen.dart'
    as _i1;
import 'package:skool/features/profile/presentation/pages/chat_screen.dart'
    as _i2;
import 'package:skool/features/profile/presentation/pages/community_screen.dart'
    as _i3;
import 'package:skool/features/profile/presentation/pages/myprofile_screen.dart'
    as _i6;
import 'package:skool/features/profile/presentation/pages/notification_screen.dart'
    as _i7;
import 'package:skool/features/profile/presentation/pages/password_screen.dart'
    as _i8;
import 'package:skool/features/profile/presentation/pages/profile_menu_screen.dart'
    as _i9;
import 'package:skool/features/profile/presentation/pages/profile_screen.dart'
    as _i10;
import 'package:skool/features/search/presentation/pages/search_screen.dart'
    as _i11;
import 'package:skool/features/splash/presentation/pages/splash_screen.dart'
    as _i12;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatScreen(),
      );
    },
    CommunityRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CommunityScreen(),
      );
    },
    CommunityTabRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CommunityTabScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    MyProfileRoute.name: (routeData) {
      final args = routeData.argsAs<MyProfileRouteArgs>(
          orElse: () => const MyProfileRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.MyProfileScreen(key: args.key),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationScreen(),
      );
    },
    PasswordRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PasswordScreen(),
      );
    },
    ProfileMenuRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileMenuScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SearchScreen(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i13.PageRouteInfo<void> {
  const AccountRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatScreen]
class ChatRoute extends _i13.PageRouteInfo<void> {
  const ChatRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CommunityScreen]
class CommunityRoute extends _i13.PageRouteInfo<void> {
  const CommunityRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CommunityTabScreen]
class CommunityTabRoute extends _i13.PageRouteInfo<void> {
  const CommunityTabRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CommunityTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityTabRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i13.PageRouteInfo<void> {
  const MainRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MyProfileScreen]
class MyProfileRoute extends _i13.PageRouteInfo<MyProfileRouteArgs> {
  MyProfileRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          MyProfileRoute.name,
          args: MyProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const _i13.PageInfo<MyProfileRouteArgs> page =
      _i13.PageInfo<MyProfileRouteArgs>(name);
}

class MyProfileRouteArgs {
  const MyProfileRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'MyProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.NotificationScreen]
class NotificationRoute extends _i13.PageRouteInfo<void> {
  const NotificationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PasswordScreen]
class PasswordRoute extends _i13.PageRouteInfo<void> {
  const PasswordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          PasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProfileMenuScreen]
class ProfileMenuRoute extends _i13.PageRouteInfo<void> {
  const ProfileMenuRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileMenuRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SearchScreen]
class SearchRoute extends _i13.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i13.PageInfo<SearchRouteArgs> page =
      _i13.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
