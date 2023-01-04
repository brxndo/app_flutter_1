import 'package:app_flutter_1/router/app_router.dart';
import 'package:app_flutter_1/screens/HomeScreen.dart';
import 'package:app_flutter_1/screens/alert_screen.dart';
import 'package:app_flutter_1/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi Tercera App",
      //home: AlertScreen());
      routes: AppRouter.getRoutes(),
      initialRoute: AppRouter.initialRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
