import 'package:flutter/material.dart';
import '/account/account.dart';
import '/app/app.dart';
import '/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.unauthenticated:
      return [LoginPage.page()];

    case AppStatus.authenticated:
      return [AccountPage.page()];
  }
}
