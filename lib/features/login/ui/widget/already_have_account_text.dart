import 'package:appointment_doctor_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: theme.textTheme.displayMedium,
          ),
          TextSpan(
            text: ' Sign Up',
            style: theme.textTheme.displayMedium!.copyWith(
              color: ColorManager.blue,
            ),
          ),
        ],
      ),
    );
  }
}
