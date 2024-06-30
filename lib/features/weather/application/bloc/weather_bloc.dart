import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flaconi_weather_report/app/utils/extension/datetime_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/int_extension.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/unit.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart';
import 'package:flaconi_weather_report/features/weather/domain/usecases/current_weather_usecase.dart';
import 'package:flaconi_weather_report/features/weather/domain/usecases/get_current_city_usecase.dart';
import 'package:flaconi_weather_report/features/weather/domain/usecases/weather_forecast_usecase.dart';
import 'package:flaconi_weather_report/infrastructure/key_value_storage/key_value_storage_service.dart';
import 'package:flaconi_weather_report/infrastructure/key_value_storage/storage_key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    this.weatherRepository,
    this._keyValueStorageService,
    this.getCurrentCityUsecase,
    this.currentWeatherUsecase,
    this.weatherForecastUsecase,
  ) : super(
          const WeatherState(),
        ) {
    on<_LoadCurrentWeahter>(_onLoadCurrentWeather);
    on<_UpdateDefaultTempUnit>(_onUpdateDefaultTempUnit);
  }

  final WeatherRepository weatherRepository;
  final KeyValueStorageService _keyValueStorageService;
  final GetCurrentCityUsecase getCurrentCityUsecase;
  final CurrentWeatherUsecase currentWeatherUsecase;
  final WeatherForecastUsecase weatherForecastUsecase;

  FutureOr<void> _onLoadCurrentWeather(
      _LoadCurrentWeahter event, Emitter<WeatherState> emit) async {
    final defaultTempUnit =
        _keyValueStorageService.read<int>(StorageKey.temperatureUnit) ??
            TempUnit.fahrenheit.code;
    final tempUnit =
        defaultTempUnit == 0 ? TempUnit.fahrenheit : TempUnit.celsius;
    emit(state.copyWith(
      tempUnit: tempUnit,
    ));
    final cityResult = await getCurrentCityUsecase();
    await cityResult.fold(
      (failure) async {
        emit(state.copyWith(
          status: WeatherStateStatus.error,
        ));
      },
      (city) async {
        //get current weather
        final currentWeatherResult =
            await currentWeatherUsecase(city, tempUnit);
        await currentWeatherResult.fold(
          (failure) async {
            emit(state.copyWith(
              status: WeatherStateStatus.error,
            ));
          },
          (success) async {
            emit(state.copyWith(
              currentWeather: success,
              currentCity: city,
              status: WeatherStateStatus.loaded,
            ));
          },
        );

        // get forecast
        final forecastResult = await weatherForecastUsecase(city, tempUnit);
        await forecastResult.fold(
          (failure) async {
            emit(state.copyWith(
              status: WeatherStateStatus.error,
            ));
          },
          (success) async {
            final List<Weather> filteredList = [];
            var i = 0;
            var day = '';
            while (i < success.length) {
              if (day != success[i].dt.timestampToDateTime().dayName) {
                day = success[i].dt.timestampToDateTime().dayName;
                i++;
                filteredList.add(success[i]);
              } else {
                i++;
              }
            }
            emit(state.copyWith(
              forecast: filteredList,
            ));
          },
        );
      },
    );
  }

  FutureOr<void> _onUpdateDefaultTempUnit(
    _UpdateDefaultTempUnit event,
    Emitter<WeatherState> emit,
  ) {
    emit(state.copyWith(
      status: WeatherStateStatus.loading,
    ));
    _keyValueStorageService.write<int>(
      event.unit.code,
      StorageKey.temperatureUnit,
    );
    add(
      WeatherEvent.loadCurrentWeather(currentWeather: state.currentWeather),
    );
  }
}
