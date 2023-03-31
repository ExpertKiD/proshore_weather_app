import 'package:app/core/failures/app_failures.dart';
import 'package:app/core/use_cases/use_case.dart';
import 'package:app/features/home/domain/entitites/forecast_response/forecast_response.dart';
import 'package:app/features/home/domain/repositories/weather.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../../core/constants/app_failure_messages.dart';

@lazySingleton
class GetDailyWeatherForecastsUseCase
    extends UseCase<AppFailure, ForecastResponse, GetWeatherForecastsParams> {
  final WeatherRepository repository;

  final InternetConnectionChecker internetConnectionChecker;

  GetDailyWeatherForecastsUseCase({
    required this.repository,
    required this.internetConnectionChecker,
  });

  @override
  Future<Either<AppFailure, ForecastResponse>> call(params) async {
    bool isConnected = await internetConnectionChecker.hasConnection;

    if (!isConnected) {
      return Left(AppFailure.noInternetConnection(
          message: AppFailureMessages.kNoInternet));
    } else {
      return await repository.getForecasts(
        days: params.days,
        city: params.city,
      );
    }
  }
}

class GetWeatherForecastsParams {
  final int days;
  final String city;

  GetWeatherForecastsParams({
    this.days = 5,
    this.city = 'Kathmandu',
  });
}
