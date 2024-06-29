import 'package:flutter/material.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_typography.dart';

extension BuildContextX on BuildContext {
  FlaconiTypographyData get typo =>
      Theme.of(this).extension<FlaconiTypographyData>()!;
}
