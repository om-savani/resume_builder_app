import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/extensions.dart';

import '../../../routes/app_routes.dart';
import '../../../utils/globals.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> available_technologies = [
    "Flutter",
    "Dart",
    "Java",
    "C++",
    "Python",
    "C#",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects Details"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Project Title",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (val) => {Globals.pr_title = val},
                        initialValue: Globals.pr_title,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please enter Project Title";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Project Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                      ),
                      10.h,
                      const Text(
                        "Technologies",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ...available_technologies.map(
                        (e) => CheckboxListTile(
                          title: Text(e),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: Globals.technologies.contains(e),
                          onChanged: (val) {
                            setState(
                              () {
                                if (val!) {
                                  Globals.technologies.add(e);
                                } else {
                                  Globals.technologies.remove(e);
                                }
                              },
                            );
                          },
                        ),
                      ),
                      10.h,
                      const Text(
                        "Roles",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (val) => {Globals.pr_role = val},
                        initialValue: Globals.pr_role,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please enter Your Role In Project";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Role In Project",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                      ),
                      10.h,
                      const Text(
                        "Technologies",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (val) => {Globals.pr_technology = val},
                        initialValue: Globals.pr_technology,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please enter Project Technologies";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Technologies",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                      ),
                      10.h,
                      const Text(
                        "Project Description",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onSaved: (val) => {Globals.passing_year = val},
                        initialValue: Globals.passing_year,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please enter Project Description";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter Project Description",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
