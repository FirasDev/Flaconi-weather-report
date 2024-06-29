import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart';
import 'package:flaconi_weather_report/features/weather/domain/usecases/current_weather_usecase.dart';
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
  ) : super(
          const WeatherState(),
        ) {
    on<_LoadCurrentWeahter>(_onLoadCurrentWeather);
  }

  final WeatherRepository weatherRepository;
  final CurrentWeatherUsecase currentWeatherUsecase;

  FutureOr<void> _onLoadCurrentWeather(
      _LoadCurrentWeahter event, Emitter<WeatherState> emit) async {
    //TODO: change city placeholder
    String city = 'Cologne';
    final result = await currentWeatherUsecase(city);
    result.fold(
        (failure) => state.copyWith(
              status: WeatherStateStatus.error,
            ),
        (success) => emit(state.copyWith(
              currentWeather: success,
              status: WeatherStateStatus.loaded,
            )));
  }
}
