// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherForecast _$$_WeatherForecastFromJson(Map<String, dynamic> json) =>
    _$_WeatherForecast(
      dt: json['dt'] as int,
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
      speed: (json['speed'] as num).toDouble(),
      deg: json['deg'] as int,
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Weather>[],
      temperature: Temperature.fromJson(json['temp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherForecastToJson(_$_WeatherForecast instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'speed': instance.speed,
      'deg': instance.deg,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'temp': instance.temperature.toJson(),
    };
