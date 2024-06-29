import 'package:flaconi_weather_report/features/weather/domain/entity/weather_data.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    required WeatherData main,
    required List<WeatherInfo> weather,
    required int dt,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
