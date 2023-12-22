import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
            context, 'At least 1 lowercase letter', hasLowerCase),
        verticalSpacing(2),
        buildValidationRow(
            context, 'At least 1 uppercase letter', hasUpperCase),
        verticalSpacing(2),
        buildValidationRow(
            context, 'At least 1 special character', hasSpecialCharacters),
        verticalSpacing(2),
        buildValidationRow(context, 'At least 1 number', hasNumber),
        verticalSpacing(2),
        buildValidationRow(context, 'At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(
      BuildContext context, String text, bool hasValidated) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: theme.disabledColor,
        ),
        horizontalSpacing(6),
        Text(
          text,
          style: theme.textTheme.titleSmall!.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? theme.cardColor : theme.disabledColor,
          ),
        )
      ],
    );
  }
}
