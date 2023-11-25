import 'package:appointment_doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';

void main() {
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}
