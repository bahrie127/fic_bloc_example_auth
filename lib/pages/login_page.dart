import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example_auth/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc_example_auth/auth_bloc/auth_event.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        elevation: 5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Welcome to the FIC batch 5')),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(onPressed: () {
            context.read<AuthBloc>().add(LoginEvent());
          }, child: const Text('Login'))
        ],
      ),
    );
  }
}
