import 'package:flaconi_weather_report/app/error/failures.dart';
import 'package:flaconi_weather_report/app/usecase/base_usecase.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/unit.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class WeatherForecastUsecase
    extends TwoParamUseCase<List<Weather>, String, TempUnit> {
  WeatherForecastUsecase(this.weatherRepository);

  final WeatherRepository weatherRepository;

  @override
  Future<Either<Failure, List<Weather>>> call(
    String param1,
    TempUnit param2,
  ) async {
    final currentWeatherDataResult = await weatherRepository.getWeatherForecast(
      city: param1,
      unit: param2,
    );
    return currentWeatherDataResult.fold(
      (failure) => const Left(NoDataFoundFailure()),
      (success) => Right(success),
    );
  }
}
