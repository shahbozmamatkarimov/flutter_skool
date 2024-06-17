// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;
import 'package:skool/features/community/presentation/pages/communitytab_screen.dart'
    as _i6;
import 'package:skool/features/community/presentation/pages/main_screen.dart'
    as _i13;
import 'package:skool/features/profile/presentation/pages/account_screen.dart'
    as _i1;
import 'package:skool/features/profile/presentation/pages/chat_screen.dart'
    as _i4;
import 'package:skool/features/profile/presentation/pages/community_screen.dart'
    as _i5;
import 'package:skool/features/profile/presentation/pages/myprofile_screen.dart'
    as _i15;
import 'package:skool/features/profile/presentation/pages/notification_screen.dart'
    as _i16;
import 'package:skool/features/profile/presentation/pages/password_screen.dart'
    as _i17;
import 'package:skool/features/profile/presentation/pages/payment_history_screen.dart'
    as _i18;
import 'package:skool/features/profile/presentation/pages/payment_methods_screen.dart'
    as _i19;
import 'package:skool/features/profile/presentation/pages/profile_menu_screen.dart'
    as _i21;
import 'package:skool/features/profile/presentation/pages/profile_screen.dart'
    as _i22;
import 'package:skool/features/profile/presentation/pages/referrals_screen.dart'
    as _i23;
import 'package:skool/features/search/presentation/pages/search_screen.dart'
    as _i24;
import 'package:skool/features/settings/presentation/pages/billing_screen.dart'
    as _i2;
import 'package:skool/features/settings/presentation/pages/categories_screen.dart'
    as _i3;
import 'package:skool/features/settings/presentation/pages/dashboard_screen.dart'
    as _i7;
import 'package:skool/features/settings/presentation/pages/discovery_screen.dart'
    as _i8;
import 'package:skool/features/settings/presentation/pages/gamification_screen.dart'
    as _i9;
import 'package:skool/features/settings/presentation/pages/general_screen.dart'
    as _i10;
import 'package:skool/features/settings/presentation/pages/invite_screen.dart'
    as _i11;
import 'package:skool/features/settings/presentation/pages/links_screen.dart'
    as _i12;
import 'package:skool/features/settings/presentation/pages/metrics_screen.dart'
    as _i14;
import 'package:skool/features/settings/presentation/pages/payouts_screen.dart'
    as _i20;
import 'package:skool/features/settings/presentation/pages/settings_screen.dart'
    as _i25;
import 'package:skool/features/settings/presentation/pages/subscriptions_screen.dart'
    as _i26;

abstract class $AppRouter extends _i27.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    BillingRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BillingScreen(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoriesScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatScreen(),
      );
    },
    CommunityRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CommunityScreen(),
      );
    },
    CommunityTabRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CommunityTabScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.DashboardScreen(),
      );
    },
    DiscoveryRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.DiscoveryScreen(),
      );
    },
    GamificationRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.GamificationScreen(),
      );
    },
    GeneralRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.GeneralScreen(),
      );
    },
    InviteRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.InviteScreen(),
      );
    },
    LinksRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.LinksScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.MainScreen(),
      );
    },
    MetricsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.MetricsScreen(),
      );
    },
    MyProfileRoute.name: (routeData) {
      final args = routeData.argsAs<MyProfileRouteArgs>(
          orElse: () => const MyProfileRouteArgs());
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.MyProfileScreen(key: args.key),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.NotificationScreen(),
      );
    },
    PasswordRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.PasswordScreen(),
      );
    },
    PaymentHistoryRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.PaymentHistoryScreen(),
      );
    },
    PaymentMethodsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.PaymentMethodsScreen(),
      );
    },
    PayoutsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.PayoutsScreen(),
      );
    },
    ProfileMenuRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.ProfileMenuScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ProfileScreen(),
      );
    },
    ReferralsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ReferralsScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.SearchScreen(key: args.key),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.SettingsScreen(),
      );
    },
    SubscriptionsRoute.name: (routeData) {
      return _i27.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SubscriptionsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i27.PageRouteInfo<void> {
  const AccountRoute({List<_i27.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BillingScreen]
class BillingRoute extends _i27.PageRouteInfo<void> {
  const BillingRoute({List<_i27.PageRouteInfo>? children})
      : super(
          BillingRoute.name,
          initialChildren: children,
        );

  static const String name = 'BillingRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoriesScreen]
class CategoriesRoute extends _i27.PageRouteInfo<void> {
  const CategoriesRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatScreen]
class ChatRoute extends _i27.PageRouteInfo<void> {
  const ChatRoute({List<_i27.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CommunityScreen]
class CommunityRoute extends _i27.PageRouteInfo<void> {
  const CommunityRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CommunityTabScreen]
class CommunityTabRoute extends _i27.PageRouteInfo<void> {
  const CommunityTabRoute({List<_i27.PageRouteInfo>? children})
      : super(
          CommunityTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityTabRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i7.DashboardScreen]
class DashboardRoute extends _i27.PageRouteInfo<void> {
  const DashboardRoute({List<_i27.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i8.DiscoveryScreen]
class DiscoveryRoute extends _i27.PageRouteInfo<void> {
  const DiscoveryRoute({List<_i27.PageRouteInfo>? children})
      : super(
          DiscoveryRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoveryRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i9.GamificationScreen]
class GamificationRoute extends _i27.PageRouteInfo<void> {
  const GamificationRoute({List<_i27.PageRouteInfo>? children})
      : super(
          GamificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'GamificationRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i10.GeneralScreen]
class GeneralRoute extends _i27.PageRouteInfo<void> {
  const GeneralRoute({List<_i27.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i11.InviteScreen]
class InviteRoute extends _i27.PageRouteInfo<void> {
  const InviteRoute({List<_i27.PageRouteInfo>? children})
      : super(
          InviteRoute.name,
          initialChildren: children,
        );

  static const String name = 'InviteRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i12.LinksScreen]
class LinksRoute extends _i27.PageRouteInfo<void> {
  const LinksRoute({List<_i27.PageRouteInfo>? children})
      : super(
          LinksRoute.name,
          initialChildren: children,
        );

  static const String name = 'LinksRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MainScreen]
class MainRoute extends _i27.PageRouteInfo<void> {
  const MainRoute({List<_i27.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MetricsScreen]
class MetricsRoute extends _i27.PageRouteInfo<void> {
  const MetricsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          MetricsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MetricsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i15.MyProfileScreen]
class MyProfileRoute extends _i27.PageRouteInfo<MyProfileRouteArgs> {
  MyProfileRoute({
    _i28.Key? key,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          MyProfileRoute.name,
          args: MyProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const _i27.PageInfo<MyProfileRouteArgs> page =
      _i27.PageInfo<MyProfileRouteArgs>(name);
}

class MyProfileRouteArgs {
  const MyProfileRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'MyProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.NotificationScreen]
class NotificationRoute extends _i27.PageRouteInfo<void> {
  const NotificationRoute({List<_i27.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i17.PasswordScreen]
class PasswordRoute extends _i27.PageRouteInfo<void> {
  const PasswordRoute({List<_i27.PageRouteInfo>? children})
      : super(
          PasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i18.PaymentHistoryScreen]
class PaymentHistoryRoute extends _i27.PageRouteInfo<void> {
  const PaymentHistoryRoute({List<_i27.PageRouteInfo>? children})
      : super(
          PaymentHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentHistoryRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i19.PaymentMethodsScreen]
class PaymentMethodsRoute extends _i27.PageRouteInfo<void> {
  const PaymentMethodsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          PaymentMethodsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i20.PayoutsScreen]
class PayoutsRoute extends _i27.PageRouteInfo<void> {
  const PayoutsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          PayoutsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PayoutsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i21.ProfileMenuScreen]
class ProfileMenuRoute extends _i27.PageRouteInfo<void> {
  const ProfileMenuRoute({List<_i27.PageRouteInfo>? children})
      : super(
          ProfileMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileMenuRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i22.ProfileScreen]
class ProfileRoute extends _i27.PageRouteInfo<void> {
  const ProfileRoute({List<_i27.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ReferralsScreen]
class ReferralsRoute extends _i27.PageRouteInfo<void> {
  const ReferralsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          ReferralsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReferralsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i24.SearchScreen]
class SearchRoute extends _i27.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i28.Key? key,
    List<_i27.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i27.PageInfo<SearchRouteArgs> page =
      _i27.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i25.SettingsScreen]
class SettingsRoute extends _i27.PageRouteInfo<void> {
  const SettingsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SubscriptionsScreen]
class SubscriptionsRoute extends _i27.PageRouteInfo<void> {
  const SubscriptionsRoute({List<_i27.PageRouteInfo>? children})
      : super(
          SubscriptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionsRoute';

  static const _i27.PageInfo<void> page = _i27.PageInfo<void>(name);
}
