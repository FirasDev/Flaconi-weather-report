import 'package:flaconi_weather_report/app/theme/flaconi_spacing.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_typography.dart';
import 'package:flaconi_weather_report/app/theme/token/flaconi_colors.dart';
import 'package:flaconi_weather_report/app/utils/extension/context_extension.dart';
import 'package:flaconi_weather_report/app/utils/extension/utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ForecastCard extends StatelessWidget {
  const ForecastCard({
    super.key,
    required this.day,
    required this.icon,
    required this.minTemp,
    required this.maxTemp,
    required this.tempUnit,
  });

  final String day;
  final String icon;
  final double minTemp;
  final double maxTemp;
  final String tempUnit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlaconiColors.gold,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(FlaconiSpacing.s8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                day.substring(0, 3),
                style: context.typo.h2MediumSemiBold.white,
              ),
            ),
            Lottie.asset(
              Utils.fetchLottieWeatherAnimation(icon),
            ),
            Text(
              '${minTemp.toStringAsFixed(1)}°$tempUnit / ${maxTemp.toStringAsFixed(1)}°$tempUnit',
              style: context.typo.bodyMediumRegular.white,
            ),
          ],
        ),
      ),
    );
  }
}
