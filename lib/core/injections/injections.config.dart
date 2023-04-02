// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import '../../features/home/data/datasources/weather_remote.dart' as _i6;
import '../../features/home/data/datasources/weather_remote_impl.dart' as _i7;
import '../../features/home/data/repositories/weather.dart' as _i9;
import '../../features/home/domain/repositories/weather.dart' as _i8;
import '../../features/home/domain/usecases/get_daily_weather_forecasts.dart'
    as _i10;
import '../config_reader/config_reader.dart' as _i3;
import 'modules/dio.dart' as _i12;
import 'modules/internet_connection_checker.dart' as _i11;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  final internetConnectionCheckerModule = _$InternetConnectionCheckerModule();
  gh.singleton<_i3.ConfigReader>(_i3.ConfigReaderImpl());
  gh.lazySingleton<_i4.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => internetConnectionCheckerModule.internetConnectionChecker);
  gh.lazySingleton<_i6.WeatherRemoteDataSource>(
      () => _i7.WeatherRemoteDataSourceImpl(dio: gh<_i4.Dio>()));
  gh.lazySingleton<_i8.WeatherRepository>(() => _i9.WeatherRepositoryImpl(
      remoteDataSource: gh<_i6.WeatherRemoteDataSource>()));
  gh.lazySingleton<_i10.GetDailyWeatherForecastsUseCase>(
      () => _i10.GetDailyWeatherForecastsUseCase(
            repository: gh<_i8.WeatherRepository>(),
            internetConnectionChecker: gh<_i5.InternetConnectionChecker>(),
          ));
  return getIt;
}

class _$InternetConnectionCheckerModule
    extends _i11.InternetConnectionCheckerModule {}

class _$DioModule extends _i12.DioModule {}
