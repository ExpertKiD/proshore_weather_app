import 'package:flutter/material.dart';

import '../../../domain/entitites/forecast_response/forecast_response.dart';
import '../../../domain/usecases/get_daily_weather_forecasts.dart';
import 'daily_forecast_state.dart';

class DailyForecastNotifier extends ChangeNotifier {
  String? _city;

  static const String kDefaultCity = 'Kathmandu';

  String get city => _city ?? kDefaultCity;

  DailyForecastState state;

  ForecastResponse? oldForecasts;

  GetDailyWeatherForecastsUseCase getDailyWeatherForecastsUseCase;

  DailyForecastNotifier({
    this.state = const DailyForecastState.initial(),
    required this.getDailyWeatherForecastsUseCase,
  });

  /// region - behaviors
  Future<void> fetchWeatherDetailsFor({String city = 'Kathmandu'}) async {
    // Set to loading state
    state = DailyForecastState.loading(oldForecasts: oldForecasts);
    notifyListeners();

    // Start fetching data from api
    final result = await getDailyWeatherForecastsUseCase(
      GetWeatherForecastsParams(
        city: city,
      ),
    );

    // Update state accordingly using result
    result.fold((failure) {
      state = DailyForecastState.loadFailed(
          failure: failure, oldForecasts: oldForecasts);

      notifyListeners();
    }, (forecastResponse) {
      oldForecasts = forecastResponse;

      _city = city;
      state = DailyForecastState.loaded(forecastResponse: forecastResponse);
      notifyListeners();
    });
  }

  void updateCity(String city) async {
    await fetchWeatherDetailsFor(city: city);
  }

  /// endregion - behaviors
}
