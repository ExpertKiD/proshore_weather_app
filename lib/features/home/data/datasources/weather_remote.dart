import 'package:app/features/home/domain/entitites/forecast_response/forecast_response.dart';

abstract class WeatherRemoteDataSource {
  Future<ForecastResponse> getForecasts({
    required int days,
    required String city,
  });
}
