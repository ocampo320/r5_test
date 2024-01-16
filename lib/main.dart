import 'package:flutter/material.dart';
import 'package:r5_test/app_colors.dart';
import 'package:r5_test/auto_route.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.buttonPrimaryColor,
          textTheme: ButtonTextTheme.primary,
        ),
        appBarTheme: const AppBarTheme(
          color: AppColors.appBarBackgroundColor,
        ),
      ),
      title: 'Booking App',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
