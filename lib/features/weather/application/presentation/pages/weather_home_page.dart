import 'package:flaconi_weather_report/app/components/error_screen.dart';
import 'package:flaconi_weather_report/app/components/loading_indicator.dart';
import 'package:flaconi_weather_report/app/dependency/injection.dart';
import 'package:flaconi_weather_report/app/weather_theme_data.dart';
import 'package:flaconi_weather_report/features/weather/application/bloc/weather_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Scaffold(
        backgroundColor: WeatherThemeData.lightThemeData.primaryColor,
        body: BlocProvider(
          create: (context) => getIt<WeatherBloc>()
            ..add(const WeatherEvent.loadCurrentWeather(currentWeather: [])),
          child: BlocBuilder<WeatherBloc, WeatherState>(
            buildWhen: (previous, current) =>
                previous.currentWeather != current.currentWeather ||
                previous.status != current.status,
            builder: (context, state) {
              return switch (state.status) {
                WeatherStateStatus.loading => const LoadingIndicator(),
                WeatherStateStatus.error => ErrorScreen(onTryAgainPressed: () {
                    context.read<WeatherBloc>().add(
                        const WeatherEvent.loadCurrentWeather(
                            currentWeather: []));
                  }),
                WeatherStateStatus.loaded =>
                  const Center(child: Text('data loaded successfully')),
              };
            },
          ),
        ));
  }
}
