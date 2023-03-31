import 'package:app/features/home/domain/entitites/forecast_response/forecast_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/failures/app_failures.dart';

abstract class WeatherRepository {
  Future<Either<AppFailure, ForecastResponse>> getForecasts({
    required int days,
    required String city,
  });
}
