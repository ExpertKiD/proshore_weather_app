import 'package:app/core/utils/date_parser.dart';
import 'package:app/features/home/domain/entitites/weather_forecast/weather_forecast.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/helpers/assets.dart';
import '../../../../../../core/palettes/palettes.dart';

class WeatherForecastBanner extends StatelessWidget {
  final WeatherForecast forecast;

  const WeatherForecastBanner({
    Key? key,
    required this.forecast,
  }) : super(key: key);

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
                      DateTime.fromMillisecondsSinceEpoch(forecast.dt * 1000)
                          .formattedDay(),
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '${forecast.temperature.max.toStringAsFixed(1)}\u00b0',
                      style: GoogleFonts.roboto(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${forecast.temperature.min.toStringAsFixed(1)}\u00b0',
                      style: GoogleFonts.roboto(
                        fontSize: 32,
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
                    WeatherArtworkAssets.weatherArtWorkFrom(
                        weatherIconId: forecast.weather.first.id),
                    width: 150,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    forecast.weather.first.main,
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
