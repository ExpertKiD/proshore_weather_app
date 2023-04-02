import 'dart:async';

import 'package:flutter/material.dart';

import 'core/apps/app.dart';
import 'core/config_reader/config_reader.dart';
import 'core/injections/injections.dart';
import 'core/routes/app_router.dart';

final appRouter = AppRouter();

void main() async {
  await _initialiseApp();

  runApp(const MyApp());
}

Future _initialiseApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // GetIt configuration
  configureDependencies();
  await getIt<ConfigReader>().initialize();
}
