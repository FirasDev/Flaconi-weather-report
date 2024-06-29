import 'package:flaconi_weather_report/app/theme/token/flaconi_colors.dart';
import 'package:flutter/material.dart';

// Extension methods for the [TextStyle] class.
extension FlaconiTypographyX on TextStyle {
  TextStyle get deepPurple => copyWith(color: FlaconiColors.primary);
  TextStyle get white => copyWith(color: FlaconiColors.white);
  TextStyle get error => copyWith(color: FlaconiColors.error);
  TextStyle get black => copyWith(color: FlaconiColors.black);
}

class FlaconiTypographyData extends ThemeExtension<FlaconiTypographyData> {
  final TextStyle h1LargeSemiBold;
  final TextStyle h2MediumSemiBold;
  final TextStyle h3SmallSemiBold;
  final TextStyle bodyMediumRegular;
  final TextStyle input;
  final TextStyle button;

  const FlaconiTypographyData({
    required this.h1LargeSemiBold,
    required this.h2MediumSemiBold,
    required this.h3SmallSemiBold,
    required this.bodyMediumRegular,
    required this.input,
    required this.button,
  });

  @override
  ThemeExtension<FlaconiTypographyData> copyWith({
    TextStyle? h1LargeSemiBold,
    TextStyle? h2MediumSemiBold,
    TextStyle? h3SmallSemiBold,
    TextStyle? bodyMediumRegular,
    TextStyle? input,
    TextStyle? button,
  }) {
    return FlaconiTypographyData(
      h1LargeSemiBold: h1LargeSemiBold ?? this.h1LargeSemiBold,
      h2MediumSemiBold: h2MediumSemiBold ?? this.h2MediumSemiBold,
      h3SmallSemiBold: h3SmallSemiBold ?? this.h3SmallSemiBold,
      bodyMediumRegular: bodyMediumRegular ?? this.bodyMediumRegular,
      input: input ?? this.input,
      button: button ?? this.button,
    );
  }

  @override
  ThemeExtension<FlaconiTypographyData> lerp(
    covariant ThemeExtension<FlaconiTypographyData>? other,
    double t,
  ) {
    if (other is! FlaconiTypographyData) {
      return this;
    }
    return FlaconiTypographyData(
      h1LargeSemiBold:
          TextStyle.lerp(h1LargeSemiBold, other.h1LargeSemiBold, t)!,
      h2MediumSemiBold:
          TextStyle.lerp(h2MediumSemiBold, other.h2MediumSemiBold, t)!,
      h3SmallSemiBold:
          TextStyle.lerp(h3SmallSemiBold, other.h3SmallSemiBold, t)!,
      bodyMediumRegular:
          TextStyle.lerp(bodyMediumRegular, other.bodyMediumRegular, t)!,
      input: TextStyle.lerp(input, other.input, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
    );
  }
}
