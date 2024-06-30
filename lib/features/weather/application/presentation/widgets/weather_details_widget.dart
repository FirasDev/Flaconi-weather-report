import 'package:flaconi_weather_report/app/theme/flaconi_typography.dart';
import 'package:flaconi_weather_report/app/utils/extension/context_extension.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flutter/material.dart';

class WeatherDetailsWidget extends StatelessWidget {
  const WeatherDetailsWidget({
    super.key,
    required this.weather,
    required this.isImperial,
  });

  final Weather weather;
  final bool isImperial;

  @override
  Widget build(BuildContext context) {
    String speedUnit = isImperial ? 'mph' : 'km/h';
    const humidityUnit = '%';
    const pressureUnit = 'hPa';
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Humidity: ${weather.main.humidity}$humidityUnit',
            style: context.typo.h2MediumSemiBold.white,
          ),
          Text(
            'Pressure: ${weather.main.pressure}$pressureUnit',
            style: context.typo.h2MediumSemiBold.white,
          ),
          Text(
            'Wind: ${weather.wind.speed}$speedUnit',
            style: context.typo.h2MediumSemiBold.white,
          ),
        ],
      ),
    );
  }
}
