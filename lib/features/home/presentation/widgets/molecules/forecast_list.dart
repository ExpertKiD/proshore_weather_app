import 'package:app/features/home/presentation/widgets/atoms/forecasts/forecast_banner.dart';
import 'package:app/features/home/presentation/widgets/atoms/forecasts/forecast_tile.dart';
import 'package:flutter/material.dart';

import '../../../domain/entitites/weather_forecast/weather_forecast.dart';

class ForecastList extends StatelessWidget {
  final List<WeatherForecast> forecasts;

  const ForecastList({
    Key? key,
    required this.forecasts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        if (index == 0) {
          return WeatherForecastBanner(forecast: forecasts[index]);
        } else {
          return WeatherForecastTile(forecast: forecasts[index]);
        }
      },
      separatorBuilder: (context, index) => const SizedBox.shrink(),
      itemCount: forecasts.length,
    );
    ;
  }
}
