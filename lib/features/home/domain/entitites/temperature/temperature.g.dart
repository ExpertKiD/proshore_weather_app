// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Temperature _$$_TemperatureFromJson(Map<String, dynamic> json) =>
    _$_Temperature(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TemperatureToJson(_$_Temperature instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };
