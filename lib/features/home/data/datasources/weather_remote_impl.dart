import 'package:app/features/home/constants/apis.dart';
import 'package:app/features/home/data/datasources/weather_remote.dart';
import 'package:app/features/home/domain/entitites/forecast_response/forecast_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/app_failure_messages.dart';
import '../../../../core/exceptions/app_exceptions.dart';
import '../../../../core/utils/dio_error_handler.dart';

@LazySingleton(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final Dio dio;

  WeatherRemoteDataSourceImpl({
    required this.dio,
  });

  @override
  Future<ForecastResponse> getForecasts({
    required int days,
    required String city,
  }) async {
    try {
      final response = await dio.get(
        OpenWeatherMapApis.dailyForecastEndpoint,
        queryParameters: {
          'cnt': days,
          'q': city,
          'units': 'metric',
        },
      );

      final forecastResponse =
          ForecastResponse.fromJson(response.data as Map<String, dynamic>);

      return forecastResponse;
    } on DioError catch (error) {
      throw DioErrorHandler.handle(dioError: error);
    } catch (e, stack) {
      throw AppException.unknownException(
          message: AppFailureMessages.kUnknownError);
    }
  }
}
