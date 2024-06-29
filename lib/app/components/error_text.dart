import 'package:flutter/material.dart';
import 'package:flaconi_weather_report/app/theme/token/flaconi_strings.dart';
import 'package:flaconi_weather_report/app/utils/extension/context_extension.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          FlaconiStrings.errorMessage,
          style: context.typo.bodyMediumRegular,
        ),
        Text(
          FlaconiStrings.tryAgainLater,
          style: context.typo.bodyMediumRegular,
        ),
      ],
    );
  }
}
