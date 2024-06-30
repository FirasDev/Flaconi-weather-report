import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';

abstract interface class WeatherApi {
  Future<List<Weather>> getCurrentWeatherData({
    required city,
    required unit,
  });
  Future<List<Weather>> getWeatherForecast({
    required city,
    required unit,
  });
}
