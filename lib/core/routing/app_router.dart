import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/ui/screen/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
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
        // name: 'login',
        path: Routes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
    errorBuilder: (context, state) => const Scaffold(
      body: Center(
        child: Text("Page Not Found"),
      ),
    ),
  );
}
