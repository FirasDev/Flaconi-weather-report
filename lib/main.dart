import 'package:flutter/material.dart';
import 'package:flaconi_weather_report/app/weather_theme_data.dart';
import 'package:flaconi_weather_report/app/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getRouter(),
      theme: WeatherThemeData.lightThemeData,
      builder: (context, child) {
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
