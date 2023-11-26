import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/theming/app_theme.dart';

class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorApp({required this.appRouter, super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "Appointment Doctor",
          routerConfig: appRouter.router,
          theme: AppTheme.light,
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}
