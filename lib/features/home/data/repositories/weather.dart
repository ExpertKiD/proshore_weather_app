import 'package:app/core/exceptions/app_exceptions.dart';
import 'package:app/core/failures/app_failures.dart';
import 'package:app/features/home/domain/entitites/forecast_response/forecast_response.dart';
import 'package:app/features/home/domain/repositories/weather.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../datasources/weather_remote.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<AppFailure, ForecastResponse>> getForecasts({
    required int days,
    required String city,
  }) async {
    try {
      return Right(await remoteDataSource.getForecasts(days: days, city: city));
    } on AppException catch (e) {
      return Left(AppFailure.fromException(e));
    }
  }
}
