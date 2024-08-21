import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/cupertino.dart';
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
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "om-savani",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "savaniom27@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/156919604?s=400&u=948693c27fd81a3b0c3d4da6e0431f0ccd545f7c&v=4"),
              ),
              decoration: BoxDecoration(color: Colors.greenAccent),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: FlexibleGridView(
            axisCount: GridLayoutEnum.twoElementsInRow,
            crossAxisSpacing: 10,
            mainAxisSpacing: 8,
            children: AppRoutes.allOptions
                .map(
                  (e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(e['route']);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            // margin: const EdgeInsets.only(right: 50),
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              color: const Color(0xff6b9080).withOpacity(0.8),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16),
                              ),
                              border: Border.all(color: Colors.grey, width: 2),
                            ),

                            child: Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    e['icon'],
                                    color: const Color(0xffeaf4f4),
                                    height: 50,
                                  ),
                                  const Spacer(),
                                  Text(
                                    e['title'],
                                    style: const TextStyle(
                                        color: Color(0xffeaf4f4)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    // leading: Image.asset(
                    //   e['icon'],
                    //   height: 25,
                    // ),
                    // title: Text(e['title']),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
