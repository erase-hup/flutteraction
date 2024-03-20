import 'package:appointment_doctor_app/core/widget/app_text_button.dart';
import 'package:appointment_doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:appointment_doctor_app/features/sign_up/ui/widget/already_have_account.dart';
import 'package:appointment_doctor_app/features/sign_up/ui/widget/sign_up_bloc_listener.dart';
import 'package:appointment_doctor_app/features/sign_up/ui/widget/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/sign_up_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
                verticalSpacing(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: theme.textTheme.bodyMedium,
                ),
                verticalSpacing(36),
                Column(
                  children: [
                    const SignUpForm(),
                    verticalSpacing(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: theme.textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                      onPressed: () {
                        validateThenDoSignUp(context);
                      },
                    ),
                    verticalSpacing(16),
                    const TermsAndConditionsText(),
                    verticalSpacing(30),
                    const AlreadyHaveAccountText(),
                    const SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
