import 'package:flaconi_weather_report/app/theme/token/flaconi_colors.dart';
import 'package:flutter/material.dart';

class WeatherThemeData {
  WeatherThemeData._();

  /// Returns a [ThemeData] object based on the [WeatherThemeData] object.
  static ThemeData get lightThemeData {
    return ThemeData(
      primaryColor: FlaconiColors.primary,
    );
  }
}
