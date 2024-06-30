import 'package:flutter/material.dart';
import 'package:flaconi_weather_report/gen/assets.gen.dart';
import 'package:flaconi_weather_report/app/utils/extension/context_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/datetime_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/int_extension.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:lottie/lottie.dart';

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
          children: [
            Text(
              weather.dt.timestampToDateTime().dayName,
              style: context.typo.h2MediumSemiBold,
            ),
            Lottie.asset(
              fetchLottieWeatherAnimation(weather.weather[0].icon),
            ),
          ],
        ),
      ),
    );
  }

  //Method to dynamically display images based on weather data
  //Some lotties were re-used for day/night because of free filedownload limit
  String fetchLottieWeatherAnimation(String icon) {
    final lottieList = Assets.weather.lottie.values;
    return lottieList
        .where((string) => string.endsWith('$icon.json'))
        .toList()
        .first;
  }
}
