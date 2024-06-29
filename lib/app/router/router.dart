import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flaconi_weather_report/features/weather/application/presentation/pages/weather_home_page.dart';
import 'router_key.dart';

GoRouter getRouter() => GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: WeatherHomePage.routeLocation,
      routes: [WeatherHomePage.route],
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Column(
            children: [
              const Icon(Icons.error, color: Colors.red),
              Text(state.error.toString()),
            ],
          ),
        ),
      ),
    );
