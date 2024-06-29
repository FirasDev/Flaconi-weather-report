// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flaconi_weather_report/app/dependency/injection_module.dart'
    as _i10;
import 'package:flaconi_weather_report/features/weather/application/bloc/weather_bloc.dart'
    as _i9;
import 'package:flaconi_weather_report/features/weather/data/api/remote_weather_api.dart'
    as _i5;
import 'package:flaconi_weather_report/features/weather/data/api/weather_api.dart'
    as _i4;
import 'package:flaconi_weather_report/features/weather/data/repository/weather_repository_impl.dart'
    as _i7;
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart'
    as _i6;
import 'package:flaconi_weather_report/features/weather/domain/usecases/current_weather_usecase.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i4.WeatherApi>(() => _i5.RemoteWeatherApi(gh<_i3.Dio>()));
    gh.lazySingleton<_i6.WeatherRepository>(
        () => _i7.WeatherRepositoryImpl(gh<_i4.WeatherApi>()));
    gh.lazySingleton<_i8.CurrentWeatherUsecase>(
        () => _i8.CurrentWeatherUsecase(gh<_i6.WeatherRepository>()));
    gh.factory<_i9.WeatherBloc>(() => _i9.WeatherBloc(
          gh<_i6.WeatherRepository>(),
          gh<_i8.CurrentWeatherUsecase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
