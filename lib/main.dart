import 'package:flaconi_weather_report/app/dependency/injection.dart';
import 'package:flutter/material.dart';
import 'package:flaconi_weather_report/app/theme/weather_theme_data.dart';
import 'package:flaconi_weather_report/app/router/router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.dev);
  await dotenv.load();
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
