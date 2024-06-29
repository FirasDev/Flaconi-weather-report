import 'package:flutter/material.dart';

class WeatherThemeData {
  WeatherThemeData._();

  /// Returns a [ThemeData] object based on the [WeatherThemeData] object.
  static ThemeData get lightThemeData {
    return ThemeData(primaryColor: Colors.blueAccent);
  }
}
