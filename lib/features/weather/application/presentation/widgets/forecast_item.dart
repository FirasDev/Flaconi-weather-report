import 'package:flaconi_weather_report/app/components/forecast_card.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_spacing.dart';
import 'package:flaconi_weather_report/app/utils/extension/datetime_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/int_extension.dart';
import 'package:flaconi_weather_report/features/weather/domain/entity/weather.dart';
import 'package:flutter/material.dart';

class ForecastItem extends StatelessWidget {
  final Weather weather;
  final String tempUnit;

  const ForecastItem({
    required this.weather,
    required this.tempUnit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String day = weather.dt.timestampToDateTime().dayName;
    final String icon = weather.weather[0].icon;
    final double minTemp = weather.main.tempMin;
    final double maxTemp = weather.main.tempMax;
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(FlaconiSpacing.s8),
              child: ForecastCard(
                day: day,
                icon: icon,
                minTemp: minTemp,
                maxTemp: maxTemp,
                tempUnit: tempUnit,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
