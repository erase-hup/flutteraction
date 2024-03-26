import 'package:appointment_doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_doctor_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:appointment_doctor_app/features/sign_up/ui/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/ui/screen/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  // GoRouter configuration
  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: Routes.onBoardingScreen,
    routes: [
      GoRoute(
        // name: 'onBoarding',
        path: Routes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => BlocProvider<LoginCubit>(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) => const Scaffold(),
      ),
      GoRoute(
        path: Routes.sigUpScreen,
        builder: (context, state) => BlocProvider<SignUpCubit>(
          create: (context) => getIt<SignUpCubit>(),
          child: const SignUpScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const Scaffold(
      body: Center(
        child: Text("Page Not Found"),
      ),
    ),
  );
}
