import 'package:flaconi_weather_report/app/components/error_text.dart';
import 'package:flaconi_weather_report/app/theme/token/flaconi_colors.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_spacing.dart';
import 'package:flaconi_weather_report/app/theme/flaconi_strings.dart';
import 'package:flaconi_weather_report/app/utils/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.onTryAgainPressed,
  });

  final Function() onTryAgainPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ErrorText(),
          const SizedBox(height: FlaconiSpacing.s16),
          ElevatedButton(
            onPressed: onTryAgainPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: FlaconiColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(FlaconiSpacing.s32),
              ),
            ),
            child: Text(
              FlaconiStrings.tryAgainLater,
              style: context.typo.bodyMediumRegular,
            ),
          ),
        ],
      ),
    );
  }
}
