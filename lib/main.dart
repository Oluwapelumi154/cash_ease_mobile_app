import 'package:cash_ease_mobile_app/routes/route.dart';
import 'package:cash_ease_mobile_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoutes,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
