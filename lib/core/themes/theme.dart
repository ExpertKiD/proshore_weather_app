import 'package:app/core/palettes/palettes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'theme_dark.dart';
part 'theme_light.dart';

class ThemeManager {
  static get light => _lightTheme;

  static get dark => _darkTheme;
}
