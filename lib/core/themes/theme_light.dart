part of 'theme.dart';

get _lightTheme => ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: AppPalette.sunshineBlue,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppPalette.sunshineLightBlue,
        ),
      ),
    );
