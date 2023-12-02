import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: theme.textTheme.bodyMedium,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: theme.textTheme.displayMedium,
          ),
          TextSpan(
            text: ' and',
            style: theme.textTheme.bodyMedium,
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: theme.textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
