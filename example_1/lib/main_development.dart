// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:fake_auth_client/fake_auth_client.dart';
import '/app/app.dart';
import '/bootstrap.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  bootstrap(() async {
    final authClient = FakeAuthClient();
    final userRepository = UserRepository(authClient: authClient);
    final isAuthenticated = await userRepository.isUserAuthenticated();
    return App(
      userRepository: userRepository,
      isAuthenticated: isAuthenticated,
    );
  });
}
