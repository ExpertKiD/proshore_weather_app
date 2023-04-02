import 'package:app/core/utils/date_parser.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/helpers/assets.dart';
import '../../../../../../core/palettes/palettes.dart';
import '../../../../domain/entitites/weather_forecast/weather_forecast.dart';

class WeatherForecastTile extends StatelessWidget {
  final WeatherForecast forecast;

  const WeatherForecastTile({
    Key? key,
    required this.forecast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: Show detail page if needed
      },
      highlightColor: AppPalette.sunshineLightBlue,
      child: Container(
        // color: AppPalette.sunshineLightBlue,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.only(
                right: 16,
                top: 0,
                bottom: 0,
              ),
              child: Image.asset(


                IconAssets.weatherIconFrom(
                    weatherIconId: forecast.weather.first.id),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateTime.fromMillisecondsSinceEpoch(forecast.dt * 1000)
                        .formattedDay(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: AppPalette.grey700,
                    ),
                  ),
                  Text(
                    forecast.weather.first.main,
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: AppPalette.grey700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${forecast.temperature.max.toStringAsFixed(1)}\u00b0',
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                  ),
                ),
                Text(
                  '${forecast.temperature.min.toStringAsFixed(1)}\u00b0',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: AppPalette.grey700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
