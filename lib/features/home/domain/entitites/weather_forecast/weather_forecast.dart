// ignore_for_file: invalid_annotation_target

import 'package:app/features/home/domain/entitites/temperature/temperature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../weather/weather.dart';

part 'weather_forecast.freezed.dart';
part 'weather_forecast.g.dart';

@freezed
class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    @JsonKey(name: 'dt') required int dt,
    @JsonKey(name: 'pressure') required int pressure,
    @JsonKey(name: 'humidity') required int humidity,
    @JsonKey(name: 'speed') required double speed,
    @JsonKey(name: 'deg') required int deg,
    @JsonKey(name: 'weather') @Default(<Weather>[]) List<Weather> weather,
    @JsonKey(name: 'temp') required Temperature temperature,
  }) = _WeatherForecast;

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);
}
