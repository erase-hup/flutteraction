import 'package:appointment_doctor_app/core/di/dependency_injection.dart';
import 'package:appointment_doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpGetIt();
  // to Fix texts being in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}
