import 'package:flaconi_weather_report/app/error/failures.dart';
import 'package:flaconi_weather_report/app/usecase/base_usecase.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CurrentWeatherUsecase extends UseCase<List<Weather>, String> {
  CurrentWeatherUsecase(this.weatherRepository);

  final WeatherRepository weatherRepository;

  @override
  Future<Either<Failure, List<Weather>>> call(String city) async {
    final currentWeatherDataResult =
        await weatherRepository.getCurrentWeatherData(city: city);
    return currentWeatherDataResult.fold(
      (failure) => const Left(NoDataFoundFailure()),
      (success) => Right(success),
    );
  }
}
