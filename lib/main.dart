import 'package:flutter/material.dart';
import 'package:resume_builder_app/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // scaffoldBackgroundColor: Color(0xff009f98).withOpacity(0.2),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff009f98).withOpacity(0.2),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
