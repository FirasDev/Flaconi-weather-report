import 'package:flaconi_weather_report/app/theme/token/flaconi_colors.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_typography.dart';
import 'package:flaconi_weather_report/app/theme/token/flaconi_text_styles.dart';
import 'package:flutter/material.dart';

class WeatherThemeData {
  WeatherThemeData._();

  /// Returns a [ThemeData] object based on the [WeatherThemeData] object.
  static ThemeData get lightThemeData {
    return ThemeData(
      primaryColor: FlaconiColors.primary,
      extensions: const [
        FlaconiTypographyData(
          h1LargeSemiBold: FlaconiTextStyles.flaconiFontHeadlinesH1LSemiBold,
          h2MediumSemiBold: FlaconiTextStyles.flaconiFontHeadlinesH2MSemiBold,
          h3SmallSemiBold: FlaconiTextStyles.flaconiFontHeadlinesH3SSemiBold,
          bodyMediumRegular: FlaconiTextStyles.flaconiFontBodyBodyMRegular,
          input: FlaconiTextStyles.flaconiFontInput,
          button: FlaconiTextStyles.flaconiFontButton,
        ),
      ],
    );
  }
}
