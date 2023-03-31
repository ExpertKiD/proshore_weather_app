import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/failures/app_failures.dart';
import '../../../domain/entitites/forecast_response/forecast_response.dart';

part 'daily_forecast_state.freezed.dart';

@freezed
class DailyForecastState with _$DailyForecastState {
  const factory DailyForecastState.initial() = _DailyForecastStateInitial;

  const factory DailyForecastState.loading(
      {@Default(true) bool showIndicator}) = _DailyForecastStateLoading;

  const factory DailyForecastState.loaded(
      {required ForecastResponse forecastResponse}) = _DailyForecastStateLoaded;

  const factory DailyForecastState.loadFailed({required AppFailure failure}) =
      _DailyForecastStateLoadFailed;
}
