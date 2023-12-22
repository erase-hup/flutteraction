import 'package:appointment_doctor_app/core/theming/app_color.dart';
import 'package:appointment_doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widget/app_text_button.dart';
import '../../data/models/login_request_body.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widget/already_have_account_text.dart';
import '../widget/email_and_password.dart';
import '../widget/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome Back",
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.primaryColor,
                ),
              ),
              verticalSpacing(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: theme.textTheme.bodyMedium,
              ),
              verticalSpacing(36),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EmailAndPassword(),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forgot Password?",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: ColorManager.blue,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpacing(40),
              AppTextButton(
                onPressed: () {
                  validateThenDoLogin(context);
                },
                buttonText: "Login",
                textStyle: theme.textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              verticalSpacing(20),
              const TermsAndConditionsText(),
              verticalSpacing(60),
              const AlreadyHaveAccountText(),
              const LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    LoginCubit cubit = LoginCubit.get(context);
    if (cubit.formKey.currentState!.validate()) {
      cubit.emitLoginState(
        LoginRequestBody(
          email: cubit.emailController.text,
          password: cubit.passwordController.text,
        ),
      );
    }
  }
}
