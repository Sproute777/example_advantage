import 'package:flutter/widgets.dart';
import '/app/app.dart';
import '/home/home.dart';
import '/sign_in/sign_in.dart';

List<Page<void>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.unauthenticated:
      return [SignInPage.page()];
    case AppStatus.authenticated:
      return [HomePage.page()];
  }
}
