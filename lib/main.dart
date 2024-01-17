import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:r5_test/app_colors.dart';
import 'package:r5_test/auto_route.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDwrWaV70asrC5pPXMXANO7b9BzpG8HElQ",
          appId: "1:584876190947:android:a83a96a304487cad5ce9d6",
          messagingSenderId: "584876190947",
          projectId: "r5-test-5f7d7")); // Inicializa Firebase
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
          titleTextStyle: TextStyle(color: Colors.white),
          centerTitle: true,
          color: AppColors.appBarBackgroundColor,
        ),
      ),
      title: 'Booking App',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
