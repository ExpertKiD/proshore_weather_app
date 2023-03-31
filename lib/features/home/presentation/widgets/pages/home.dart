import 'package:app/core/helpers/assets.dart';
import 'package:app/core/palettes/palettes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'home_mobile.dart';
part 'home_tablet.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (mobileContext) => const HomeMobileWidget(),
      // tablet: (tabletContext) => const HomeTabletWidget(),
    );
  }
}
