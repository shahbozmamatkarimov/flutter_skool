// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:skool/features/community/presentation/pages/app_main_screen.dart'
    as _i1;
import 'package:skool/features/community/presentation/pages/search/root_search_screen.dart'
    as _i4;
import 'package:skool/features/main/presentation/pages/root/root_community.dart'
    as _i2;
import 'package:skool/features/main/presentation/pages/root/root_search.dart'
    as _i3;
import 'package:skool/features/search/presentation/pages/search.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AppMainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppMainScreen(),
      );
    },
    RootCommunity.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RootCommunity(),
      );
    },
    RootSearch.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RootSearch(),
      );
    },
    RootSearchRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RootSearchScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SearchScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AppMainScreen]
class AppMainRoute extends _i6.PageRouteInfo<void> {
  const AppMainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AppMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppMainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RootCommunity]
class RootCommunity extends _i6.PageRouteInfo<void> {
  const RootCommunity({List<_i6.PageRouteInfo>? children})
      : super(
          RootCommunity.name,
          initialChildren: children,
        );

  static const String name = 'RootCommunity';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RootSearch]
class RootSearch extends _i6.PageRouteInfo<void> {
  const RootSearch({List<_i6.PageRouteInfo>? children})
      : super(
          RootSearch.name,
          initialChildren: children,
        );

  static const String name = 'RootSearch';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RootSearchScreen]
class RootSearchRoute extends _i6.PageRouteInfo<void> {
  const RootSearchRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RootSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootSearchRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SearchScreen]
class SearchRoute extends _i6.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i6.PageInfo<SearchRouteArgs> page =
      _i6.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key}';
  }
}
