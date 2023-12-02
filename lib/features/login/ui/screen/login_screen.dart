import 'package:appointment_doctor_app/core/theming/app_color.dart';
import 'package:appointment_doctor_app/core/widget/app_text_form_field.dart';
import 'package:appointment_doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widget/app_text_button.dart';
import '../widget/already_have_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppTextFormField(hintText: "Email"),
                    verticalSpacing(20),
                    AppTextFormField(
                      hintText: "password",
                      obscureText: isObscureText,
                      textInputAction: TextInputAction.done,
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 27,
                        ),
                      ),
                    ),
                    verticalSpacing(20),
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
              ),
              verticalSpacing(40),
              AppTextButton(
                onPressed: () {},
                buttonText: "Login",
                textStyle: theme.textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              verticalSpacing(20),
              const TermsAndConditionsText(),
              verticalSpacing(60),
              const AlreadyHaveAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
