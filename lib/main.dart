import 'package:appointment_doctor_app/core/di/dependency_injection.dart';
import 'package:appointment_doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpGetIt();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}
