import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart';
import 'package:flaconi_weather_report/features/weather/domain/usecases/current_weather_usecase.dart';
import 'package:flaconi_weather_report/features/weather/domain/usecases/get_current_city_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    this.weatherRepository,
    this.currentWeatherUsecase,
    this.getCurrentCityUsecase,
  ) : super(
          const WeatherState(),
        ) {
    on<_LoadCurrentWeahter>(_onLoadCurrentWeather);
  }

  final WeatherRepository weatherRepository;
  final CurrentWeatherUsecase currentWeatherUsecase;
  final GetCurrentCityUsecase getCurrentCityUsecase;

  FutureOr<void> _onLoadCurrentWeather(
      _LoadCurrentWeahter event, Emitter<WeatherState> emit) async {
    final cityResult = await getCurrentCityUsecase();
    await cityResult.fold(
      (failure) async {
        emit(state.copyWith(
          status: WeatherStateStatus.error,
        ));
      },
      (city) async {
        final result = await currentWeatherUsecase(city);
        await result.fold(
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
      },
    );
  }
}
