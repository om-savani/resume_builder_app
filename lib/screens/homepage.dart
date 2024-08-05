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
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("om-savani"),
              accountEmail: Text("savaniom27@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/156919604?s=400&u=948693c27fd81a3b0c3d4da6e0431f0ccd545f7c&v=4"),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: AppRoutes.allOptions
            .map(
              (e) => ListTile(
                leading: Image.asset(
                  e['icon'],
                  height: 25,
                ),
                title: Text(e['title']),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(e['route']);
                  },
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
