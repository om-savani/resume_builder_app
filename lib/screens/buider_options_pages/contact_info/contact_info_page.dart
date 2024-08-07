import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_builder_app/utils/extensions.dart';
import '../../../routes/app_routes.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({super.key});

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  int index = 0;
  bool hide = true;

  void setIndex(int i) {
    index = i;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        title: const Text("Contact Info"),
        backgroundColor: Color(0xff009f98),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setIndex(0);
                    },
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            width: index == 0 ? 2.5 : 0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setIndex(1);
                    },
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            width: index == 1 ? 5 : 0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IndexedStack(
                  index: index,
                  children: [
                    // Contact Page
                    Container(
                      decoration: const BoxDecoration(
                          // color: Color(0xff009f98),
                          color: Colors.white),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Name",
                              hintText: "Enter name",
                              prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          15.h,
                          TextField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: "Contact",
                              hintText: "Enter number",
                              prefixIcon: const Icon(Icons.phone),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          15.h,
                          TextField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Address",
                              hintText: "Enter address",
                              prefixIcon: const Icon(Icons.location_on),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          15.h,
                          TextField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Enter email",
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          15.h,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Submit",
                                ),
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      Colors.greenAccent),
                                  foregroundColor:
                                      WidgetStateProperty.all(Colors.white),
                                ),
                              ),
                              15.w,
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Reset",
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.redAccent),
                                  foregroundColor:
                                      WidgetStateProperty.all(Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Photo Page
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
