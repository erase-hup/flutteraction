import 'package:appointment_doctor_app/core/theming/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

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
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.go(Routes.sigUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
