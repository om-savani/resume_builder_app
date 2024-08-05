import 'package:flutter/material.dart';
import 'package:resume_builder_app/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Column(
        children: AppRoutes.allOptions
            .map(
              (e) => ListTile(),
            )
            .toList(),
      ),
    );
  }
}
