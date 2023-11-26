import 'package:appointment_doctor_app/core/routing/routes.dart';
import 'package:appointment_doctor_app/features/onboarding/widget/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widget/doc_logo.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: Column(
            children: [
              const DocLogoWidget(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 28.w,
                ),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 30.h),
                    ElevatedButton(
                      onPressed: () {
                        context.go(Routes.loginScreen);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        child: Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
