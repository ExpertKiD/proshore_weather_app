import 'package:app/core/routes/app_router.dart';
import 'package:app/features/home/presentation/widgets/pages/home.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeManager.light,
      routerDelegate: AutoRouterDelegate(appRouter, initialRoutes: [
        const HomeRoute(),
      ]),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
