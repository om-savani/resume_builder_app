import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed((Duration(seconds: 3)), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: kIsWeb
              ? Image.network("lib/assets/gif/splashsc.gif")
              : Image.asset("lib/assets/gif/splashsc.gif")),
    );
  }
}
