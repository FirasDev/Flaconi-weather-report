part of 'weather_bloc.dart';

enum WeatherStateStatus {
  loading,
  loaded,
  error,
}

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(WeatherStateStatus.loading) WeatherStateStatus status,
    @Default([]) List<Weather> currentWeather,
  }) = _WeatherState;
}
