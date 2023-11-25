import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  // GoRouter configuration
  final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [],
    errorBuilder: (context, state) => const Scaffold(
      body: Center(
        child: Text("Page Not Found"),
      ),
    ),
  );
}
