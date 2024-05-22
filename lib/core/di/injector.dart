// import 'package:dio/dio.dart';
// import 'package:skool/features/auth/data/data_sources/auth_service.dart';
// import 'package:skool/features/auth/data/repositories/impl_auth_repo.dart';
// import 'package:skool/features/auth/domain/repositories/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/bloc/bottom_nav_bar/bottom_nav_bar_bloc.dart';

class Injector extends StatelessWidget {
  final Widget child;

  const Injector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        // ..._getAuthRepo(),
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider<BottomNavBarBloc>(
          create: (_) => BottomNavBarBloc(),
        ),
      ], child: child),
    );
  }

  // _getAuthRepo() => [
  //       RepositoryProvider<AuthService>(
  //         create: (context) => AuthService(locator<Dio>()),
  //       ),
  //       RepositoryProvider<AuthRepo>(
  //         create: (context) => ImplAuthRepo(
  //           authService: context.read(),
  //         ),
  //       ),
  //     ];
}
