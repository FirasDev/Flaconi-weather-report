// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flaconi_weather_report/app/dependency/injection_module.dart'
    as _i16;
import 'package:flaconi_weather_report/features/weather/application/bloc/weather_bloc.dart'
    as _i15;
import 'package:flaconi_weather_report/features/weather/data/api/remote_weather_api.dart'
    as _i6;
import 'package:flaconi_weather_report/features/weather/data/api/weather_api.dart'
    as _i5;
import 'package:flaconi_weather_report/features/weather/data/repository/location_repository_impl.dart'
    as _i8;
import 'package:flaconi_weather_report/features/weather/data/repository/weather_repository_impl.dart'
    as _i13;
import 'package:flaconi_weather_report/features/weather/domain/repository/location_repository.dart'
    as _i7;
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart'
    as _i12;
import 'package:flaconi_weather_report/features/weather/domain/usecases/current_weather_usecase.dart'
    as _i14;
import 'package:flaconi_weather_report/features/weather/domain/usecases/get_current_city_usecase.dart'
    as _i11;
import 'package:flaconi_weather_report/infrastructure/key_value_storage/key_value_storage_impl.dart'
    as _i10;
import 'package:flaconi_weather_report/infrastructure/key_value_storage/key_value_storage_service.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i5.WeatherApi>(() => _i6.RemoteWeatherApi(gh<_i4.Dio>()));
    gh.lazySingleton<_i7.LocationRepository>(
        () => _i8.LocationRepositoryImpl());
    gh.lazySingleton<_i9.KeyValueStorageService>(
        () => _i10.KeyValueStorageImpl(gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i11.GetCurrentCityUsecase>(
        () => _i11.GetCurrentCityUsecase(gh<_i7.LocationRepository>()));
    gh.lazySingleton<_i12.WeatherRepository>(
        () => _i13.WeatherRepositoryImpl(gh<_i5.WeatherApi>()));
    gh.lazySingleton<_i14.CurrentWeatherUsecase>(
        () => _i14.CurrentWeatherUsecase(gh<_i12.WeatherRepository>()));
    gh.factory<_i15.WeatherBloc>(() => _i15.WeatherBloc(
          gh<_i12.WeatherRepository>(),
          gh<_i14.CurrentWeatherUsecase>(),
          gh<_i11.GetCurrentCityUsecase>(),
          gh<_i9.KeyValueStorageService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
