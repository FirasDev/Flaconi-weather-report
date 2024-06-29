import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flaconi_weather_report/app/router/router_key.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  static String get routeName => 'weather_home_page';

  static String get routeLocation => '/$routeName';

  static GoRoute get route => GoRoute(
        name: routeName,
        path: routeLocation,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const WeatherHomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Weather home page')),
    );
  }
}
