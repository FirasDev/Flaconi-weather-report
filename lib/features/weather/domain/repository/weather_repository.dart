import 'package:flaconi_weather_report/app/error/failures.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:fpdart/fpdart.dart';

abstract class WeatherRepository {
  Future<Either<Failure, List<Weather>>> getCurrentWeatherData({
    required city,
    required unit,
  });
  Future<Either<Failure, List<Weather>>> getWeatherForecast({
    required city,
    required unit,
  });
}
