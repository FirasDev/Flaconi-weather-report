import 'package:flaconi_weather_report/app/theme/flaconi_spacing.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_typography.dart';
import 'package:flaconi_weather_report/app/utils/extension/string_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/utils.dart';
import 'package:flaconi_weather_report/features/weather/application/bloc/weather_bloc.dart';
import 'package:flaconi_weather_report/features/weather/application/presentation/widgets/forecast_item.dart';
import 'package:flaconi_weather_report/features/weather/application/presentation/widgets/weather_details_widget.dart';
import 'package:flaconi_weather_report/features/weather/application/presentation/widgets/weekly_forecast_widget.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/unit.dart';
import 'package:flutter/material.dart';
import 'package:flaconi_weather_report/app/utils/extension/context_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/datetime_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/int_extension.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class WeatherWidget extends StatefulWidget {
  final Weather weather;
  final TempUnit tempUnit;
  final List<Weather> forecast;

  const WeatherWidget({
    super.key,
    required this.weather,
    required this.tempUnit,
    required this.forecast,
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

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<WeatherBloc>().add(
                const WeatherEvent.loadCurrentWeather(currentWeather: []),
              );
        },
        child: OrientationBuilder(
          builder: (context, orientation) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: FlaconiSpacing.s12, top: FlaconiSpacing.s12),
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
                        Utils.fetchLottieWeatherAnimation(
                            widget.weather.weather[0].icon),
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
                      WeatherDetailsWidget(
                        weather: widget.weather,
                        isImperial: _isImperial,
                      ),
                      const SizedBox(
                        height: FlaconiSpacing.s16,
                      ),
                      if (widget.forecast.isNotEmpty) ...[
                        WeeklyForecastWidget(
                          itemBuilder: (context, index) {
                            return ForecastItem(
                              weather: widget.forecast[index],
                              tempUnit: tempUnit,
                            );
                          },
                        )
                      ]
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
