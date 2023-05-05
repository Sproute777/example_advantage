import 'dart:async';

import 'package:example_1/app/navigator/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../bloc/app_bloc.dart';
import '../utils/print_colors.dart';

class AppGoRouter extends GoRouter {
  final AppBloc _appBloc;
  AppGoRouter(AppBloc appBloc)
      : _appBloc = appBloc,
        super(
          routes: $appRoutes,
          initialLocation: const SplashRoute().location,
          errorBuilder: const Page404Route().build,
          redirect: (context, goState) {
            debugPrint('$yellow ${goState.location} ${goState.pageKey} $reset');
          },
        ) {
    subscription = _appBloc.stream.listen((state) {
      if (state.status == AppStatus.authenticated) {
        super.go(const HomeRoute().location);
      }
    });
  }

  late StreamSubscription subscription;

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}
