import 'package:flaconi_weather_report/app/error/failures.dart';
import 'package:flaconi_weather_report/features/weather/data/api/weather_api.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flaconi_weather_report/features/weather/domain/repository/weather_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(this.weatherApi);

  final WeatherApi weatherApi;

  @override
  Future<Either<Failure, List<Weather>>> getCurrentWeatherData({
    required city,
    required unit,
  }) async {
    try {
      final result = await weatherApi.getCurrentWeatherData(
        city: city,
        unit: unit,
      );
      return Right(result);
    } on Exception catch (_) {
      return const Left(NoDataFoundFailure());
    }
  }
}
