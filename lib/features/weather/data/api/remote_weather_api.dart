import 'package:dio/dio.dart';
import 'package:flaconi_weather_report/app/helper/open_weather_config.dart';
import 'package:flaconi_weather_report/features/weather/data/api/weather_api.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flaconi_weather_report/infrastructure/exceptions/http_exceptions.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WeatherApi)
class RemoteWeatherApi implements WeatherApi {
  RemoteWeatherApi(this.dio);
  final Dio dio;

  @override
  Future<List<Weather>> getCurrentWeatherData({required city}) async {
    const currentWeatherUrl = '/weather';
    final params = {
      'q': city,
      'appid': OpenWeatherConfig.openWeatherApiKey,
    };

    try {
      final Response<Map<String, dynamic>> response = await dio.get(
        currentWeatherUrl,
        queryParameters: params,
      );
      // final List<Weather> weatherList = (response.data! as List)
      //     .map((i) => Weather.fromJson(i as Map<String, dynamic>))
      //     .toList();
      final Weather weather = Weather.fromJson(response.data!);
      return [weather];

      //return weatherList;
    } on DioException catch (e) {
      throw HttpExceptions.fromDioError(e);
    }
  }
}
