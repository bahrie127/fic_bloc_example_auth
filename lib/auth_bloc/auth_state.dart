abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String name;
  AuthSuccess({
    required this.name,
  });
}

class AuthError extends AuthState {
  final String message;
  AuthError({
    required this.message,
  });
}
