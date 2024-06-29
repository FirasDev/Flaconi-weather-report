import 'package:flaconi_weather_report/app/utils/extension/datetime_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/int_extension.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  const WeatherWidget({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [Text(weather.dt.timestampToDateTime().dayName)],
        ),
      ),
    );
  }
}
