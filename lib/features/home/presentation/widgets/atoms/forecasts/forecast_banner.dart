import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/helpers/assets.dart';
import '../../../../../../core/palettes/palettes.dart';

class WeatherForecastBanner extends StatelessWidget {
  const WeatherForecastBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Open detail page if needed
      },
      child: Container(
        color: AppPalette.sunshineBlue,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today, March 30',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '25\u00b0',
                      style: GoogleFonts.roboto(
                        fontSize: 72,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '15\u00b0',
                      style: GoogleFonts.roboto(
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    WeatherArtworkAssets.rain,
                    width: 150,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Rain',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
