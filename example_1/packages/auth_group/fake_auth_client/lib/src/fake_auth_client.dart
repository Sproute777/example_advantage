// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'package:auth_client/auth_client.dart';

/// {@template auth_client}
///  Fake auth client.
/// {@endtemplate}
class FakeAuthClient implements AuthClient {
  /// {@macro auth_client}
  FakeAuthClient();

  final _controller = StreamController<AuthStatus>();

  /// Stream current [AuthStatus]
  @override
  Stream<AuthStatus> get authStatus => _controller.stream;

  /// Returns whether the user is authenticated or not
  ///
  ///Throws a [FetchAuthenticatedUserFailure] if an exception occurs.
  @override
  Future<bool> isUserAuthenticated() async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      return false;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        FetchAuthenticatedUserFailure(error),
        stackTrace,
      );
    }
  }

  /// Creates a new user with the [email] and [password] variables.
  ///
  /// Throws a [SignUpFailure] if an exception occurs.
  /// Throws a [UserAlreadyExistException] if email already exists.
  @override
  Future<void> signUp(
    String email,
    String password,
  ) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => null
      // _controller.add(AuthStatus.authenticated)
      ,
    );
  }

  /// Confirm the sign up with a confirmation code.
  @override
  Future<void> confirmSignUp(
    String email,
    String confirmationCode,
  ) async {
    try {
      await Future.delayed(
        const Duration(milliseconds: 300),
        () => _controller.add(AuthStatus.authenticated),
      );
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        ConfirmationCodeSignUpFailure(error),
        stackTrace,
      );
    }
  }

  /// Sign in with the provided [email] and [password].
  ///
  /// Throws a [UserDoesNotExistException] if [UserNotFoundException] occurs
  /// (provided email is not correct).
  /// Throws a [UserDoesNotExistException] if [NotAuthorizedException] occurs.
  /// (provided email is correct, but the password isn't, or vice versa).
  /// Throws a [SignInFailure] if an exception occurs.
  @override
  Future<void> signIn(String email, String password) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthStatus.authenticated),
    );
  }

  /// Sign out the current user.
  ///
  /// Throws a [SignOutFailure] if an exception occurs.
  @override
  Future<void> signOut() async {
    try {
      _controller.add(AuthStatus.unauthenticated);
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(SignOutFailure(error), stackTrace);
    }
  }
}
