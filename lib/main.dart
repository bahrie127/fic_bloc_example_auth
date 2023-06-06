import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example_auth/pages/home_page.dart';
import 'package:flutter_bloc_example_auth/pages/login_page.dart';

import 'auth_bloc/auth_bloc.dart';
import 'auth_bloc/auth_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return Scaffold(
                body: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            if (state is AuthSuccess) {
              return const HomePage();
            }
            return const LoginPage();
          },
        ),
      ),
    );
  }
}
