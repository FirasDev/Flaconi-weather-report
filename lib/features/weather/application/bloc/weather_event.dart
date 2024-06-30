part of 'weather_bloc.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.loadCurrentWeather({
    required List<Weather> currentWeather,
  }) = _LoadCurrentWeahter;
  const factory WeatherEvent.updateDefaultTempUnit({
    required TempUnit unit,
  }) = _UpdateDefaultTempUnit;
  const factory WeatherEvent.refreshData() = _RefreshData;
}
