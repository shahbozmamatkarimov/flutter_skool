import 'package:flutter/material.dart';
import 'package:skool/config/routes/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF000000),
            background: const Color(0xFFF0F5FA)),
        // useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
