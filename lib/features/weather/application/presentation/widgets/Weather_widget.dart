import 'package:flaconi_weather_report/app/theme/flaconi_spacing.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_typography.dart';
import 'package:flaconi_weather_report/app/utils/extension/string_extension.dart';
import 'package:flaconi_weather_report/features/weather/application/bloc/weather_bloc.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/unit.dart';
import 'package:flutter/material.dart';
import 'package:flaconi_weather_report/gen/assets.gen.dart';
import 'package:flaconi_weather_report/app/utils/extension/context_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/datetime_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/int_extension.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class WeatherWidget extends StatefulWidget {
  final Weather weather;
  final TempUnit tempUnit;

  const WeatherWidget({
    super.key,
    required this.weather,
    required this.tempUnit,
  });

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  bool _isImperial = true;

  @override
  void initState() {
    _isImperial = widget.tempUnit == TempUnit.fahrenheit;
    super.initState();
  }

  void _toggleTemperatureUnit() {
    setState(() {
      _isImperial = !_isImperial;
    });
    context.read<WeatherBloc>().add(
          WeatherEvent.updateDefaultTempUnit(
              unit:
                  _isImperial == true ? TempUnit.fahrenheit : TempUnit.celsius),
        );
  }

  @override
  Widget build(BuildContext context) {
    String tempUnit = _isImperial ? 'F' : 'C';
    String speedUnit = _isImperial ? 'mph' : 'km/h';
    const humidityUnit = '%';
    const pressureUnit = 'hPa';
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(FlaconiSpacing.s16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                widget.weather.dt.timestampToDateTime().dayName,
                style: context.typo.h2MediumSemiBold.white,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.weather.weather[0].description.capitalize(),
                style: context.typo.h2MediumSemiBold.white,
              ),
            ),
            Lottie.asset(
              fetchLottieWeatherAnimation(widget.weather.weather[0].icon),
            ),
            Text(
              'Temperature: ${widget.weather.main.temp.toStringAsFixed(1)}°$tempUnit',
              style: context.typo.h2MediumSemiBold.white,
            ),
            ElevatedButton(
              onPressed: _toggleTemperatureUnit,
              child: Text(
                'Toggle to ${_isImperial ? 'Celsius' : 'Fahrenheit'}',
                style: context.typo.bodyMediumRegular.black,
              ),
            ),
            const SizedBox(
              height: FlaconiSpacing.s24,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Humidity: ${widget.weather.main.humidity}°$humidityUnit',
                    style: context.typo.h2MediumSemiBold.white,
                  ),
                  Text(
                    'Pressure: ${widget.weather.main.pressure}°$pressureUnit',
                    style: context.typo.h2MediumSemiBold.white,
                  ),
                  Text(
                    'Wind: ${widget.weather.wind.speed}°$speedUnit',
                    style: context.typo.h2MediumSemiBold.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //Method to dynamically display images based on weather data
  String fetchLottieWeatherAnimation(String icon) {
    final lottieList = Assets.weather.lottie.values;
    return lottieList
        .where((string) => string.endsWith('$icon.json'))
        .toList()
        .first;
  }
}
