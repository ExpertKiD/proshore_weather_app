// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) {
  return _WeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecast {
  @JsonKey(name: 'dt')
  int get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure')
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'speed')
  double get speed => throw _privateConstructorUsedError;
  @JsonKey(name: 'deg')
  int get deg => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<Weather> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  Temperature get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastCopyWith<WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCopyWith<$Res> {
  factory $WeatherForecastCopyWith(
          WeatherForecast value, $Res Function(WeatherForecast) then) =
      _$WeatherForecastCopyWithImpl<$Res, WeatherForecast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'speed') double speed,
      @JsonKey(name: 'deg') int deg,
      @JsonKey(name: 'weather') List<Weather> weather,
      @JsonKey(name: 'temp') Temperature temperature});

  $TemperatureCopyWith<$Res> get temperature;
}

/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res, $Val extends WeatherForecast>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? speed = null,
    Object? deg = null,
    Object? weather = null,
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res> get temperature {
    return $TemperatureCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherForecastCopyWith<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  factory _$$_WeatherForecastCopyWith(
          _$_WeatherForecast value, $Res Function(_$_WeatherForecast) then) =
      __$$_WeatherForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'speed') double speed,
      @JsonKey(name: 'deg') int deg,
      @JsonKey(name: 'weather') List<Weather> weather,
      @JsonKey(name: 'temp') Temperature temperature});

  @override
  $TemperatureCopyWith<$Res> get temperature;
}

/// @nodoc
class __$$_WeatherForecastCopyWithImpl<$Res>
    extends _$WeatherForecastCopyWithImpl<$Res, _$_WeatherForecast>
    implements _$$_WeatherForecastCopyWith<$Res> {
  __$$_WeatherForecastCopyWithImpl(
      _$_WeatherForecast _value, $Res Function(_$_WeatherForecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? speed = null,
    Object? deg = null,
    Object? weather = null,
    Object? temperature = null,
  }) {
    return _then(_$_WeatherForecast(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherForecast implements _WeatherForecast {
  const _$_WeatherForecast(
      {@JsonKey(name: 'dt') required this.dt,
      @JsonKey(name: 'pressure') required this.pressure,
      @JsonKey(name: 'humidity') required this.humidity,
      @JsonKey(name: 'speed') required this.speed,
      @JsonKey(name: 'deg') required this.deg,
      @JsonKey(name: 'weather') final List<Weather> weather = const <Weather>[],
      @JsonKey(name: 'temp') required this.temperature})
      : _weather = weather;

  factory _$_WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherForecastFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int dt;
  @override
  @JsonKey(name: 'pressure')
  final int pressure;
  @override
  @JsonKey(name: 'humidity')
  final int humidity;
  @override
  @JsonKey(name: 'speed')
  final double speed;
  @override
  @JsonKey(name: 'deg')
  final int deg;
  final List<Weather> _weather;
  @override
  @JsonKey(name: 'weather')
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'temp')
  final Temperature temperature;

  @override
  String toString() {
    return 'WeatherForecast(dt: $dt, pressure: $pressure, humidity: $humidity, speed: $speed, deg: $deg, weather: $weather, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherForecast &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dt, pressure, humidity, speed,
      deg, const DeepCollectionEquality().hash(_weather), temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherForecastCopyWith<_$_WeatherForecast> get copyWith =>
      __$$_WeatherForecastCopyWithImpl<_$_WeatherForecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherForecastToJson(
      this,
    );
  }
}

abstract class _WeatherForecast implements WeatherForecast {
  const factory _WeatherForecast(
          {@JsonKey(name: 'dt') required final int dt,
          @JsonKey(name: 'pressure') required final int pressure,
          @JsonKey(name: 'humidity') required final int humidity,
          @JsonKey(name: 'speed') required final double speed,
          @JsonKey(name: 'deg') required final int deg,
          @JsonKey(name: 'weather') final List<Weather> weather,
          @JsonKey(name: 'temp') required final Temperature temperature}) =
      _$_WeatherForecast;

  factory _WeatherForecast.fromJson(Map<String, dynamic> json) =
      _$_WeatherForecast.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get dt;
  @override
  @JsonKey(name: 'pressure')
  int get pressure;
  @override
  @JsonKey(name: 'humidity')
  int get humidity;
  @override
  @JsonKey(name: 'speed')
  double get speed;
  @override
  @JsonKey(name: 'deg')
  int get deg;
  @override
  @JsonKey(name: 'weather')
  List<Weather> get weather;
  @override
  @JsonKey(name: 'temp')
  Temperature get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastCopyWith<_$_WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}
