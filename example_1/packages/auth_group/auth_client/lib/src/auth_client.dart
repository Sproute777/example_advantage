import 'dart:async';

/// Enum indicating the Authentication status
enum AuthStatus {
  /// Authenticated session
  authenticated,

  /// Unauthenticated session
  unauthenticated,
}

/// {@template auth_client}
/// AWS Amplify auth client.
/// {@endtemplate}
abstract class AuthClient {
  /// current auth status [Stream]
  Stream<AuthStatus> get authStatus;

  /// current auth status get [Future]
  Future<bool> isUserAuthenticated();

  /// sing up new user
  Future<void> signUp(
    String email,
    String password,
  );

  /// confirm email code
  Future<void> confirmSignUp(
    String email,
    String confirmationCode,
  );

  /// sing in to app
  Future<void> signIn(String email, String password);

  /// sing out from app
  Future<void> signOut();
}
