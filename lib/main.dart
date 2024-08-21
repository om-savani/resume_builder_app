import 'package:flutter/material.dart';
import 'package:resume_builder_app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffcce3de),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff6b9080),
          foregroundColor: Color(0xffeaf4f4),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
