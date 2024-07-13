import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            GoRouter.of(context).go('/dashboard');
          },
          child: const Text('SignIn'),
        ),
      ),
    );
  }
}
