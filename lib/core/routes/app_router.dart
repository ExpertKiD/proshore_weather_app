import 'package:app/features/home/presentation/widgets/pages/home.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(page: HomeRoute.page),
  ];
}
