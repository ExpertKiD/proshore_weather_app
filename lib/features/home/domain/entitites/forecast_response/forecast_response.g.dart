// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastResponse _$$_ForecastResponseFromJson(Map<String, dynamic> json) =>
    _$_ForecastResponse(
      forecasts: (json['list'] as List<dynamic>)
          .map((e) => WeatherForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastResponseToJson(_$_ForecastResponse instance) =>
    <String, dynamic>{
      'list': instance.forecasts.map((e) => e.toJson()).toList(),
    };
