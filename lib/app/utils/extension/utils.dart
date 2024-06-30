import 'package:flaconi_weather_report/gen/assets.gen.dart';

class Utils {
  //Method to dynamically display images based on weather data
  static String fetchLottieWeatherAnimation(String icon) {
    final lottieList = Assets.weather.lottie.values;
    return lottieList
        .where((string) => string.endsWith('$icon.json'))
        .toList()
        .first;
  }
}
