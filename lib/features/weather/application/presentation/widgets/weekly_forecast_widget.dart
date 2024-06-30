import 'package:flaconi_weather_report/app/theme/flaconi_spacing.dart';
import 'package:flutter/material.dart';

class WeeklyForecastWidget extends StatelessWidget {
  final Widget Function(BuildContext context, int index) itemBuilder;
  const WeeklyForecastWidget({
    required this.itemBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 250,
        child: ListView.separated(
          padding: const EdgeInsets.only(right: FlaconiSpacing.s8),
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: itemBuilder,
          separatorBuilder: (context, index) =>
              const SizedBox(width: FlaconiSpacing.s12),
        ),
      ),
    );
  }
}
