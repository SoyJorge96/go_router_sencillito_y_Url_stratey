import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prueba/src/views/dashboard.dart';
import 'package:prueba/src/views/home_view.dart';
import 'package:prueba/src/views/login_view.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy(); // importar url_strategy para quitar el /# del navegador
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) {
            return const LoginView();
          },
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) {
            return const Dashboard();
          },
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
