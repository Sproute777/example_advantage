import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import '/app/app.dart';
import 'app/utils/print_colors.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final _firebaseAuth = FirebaseAuth.instance;
  try {
    // FirebaseFirestore.instance.useFirestoreEmulator('localhost', 9099);
    await _firebaseAuth.useAuthEmulator('localhost', 9099);
    debugPrint('$green success runnning Emulator $reset');
  } catch (e) {
    debugPrint('$red $e $reset');
  }

  final authenticationRepository =
      AuthenticationRepository(firebaseAuth: _firebaseAuth);
  await authenticationRepository.user.first;

  runApp(App(authenticationRepository: authenticationRepository));
}
