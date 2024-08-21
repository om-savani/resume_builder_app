import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/extensions.dart';

import '../../../routes/app_routes.dart';
import '../../../utils/globals.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
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
                      "Course/Degree",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (val) => {Globals.course = val},
                      initialValue: Globals.course,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Your Course/Degree";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "B. Tech Information Technology",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                    ),
                    10.h,
                    const Text(
                      "School/College/Institute",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (val) => {Globals.institute = val},
                      initialValue: Globals.institute,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Your School/College/Institute";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Bhagavan Mahavir University",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                    ),
                    10.h,
                    const Text(
                      "Mark Obtained",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (val) => {Globals.marks = val},
                      initialValue: Globals.marks,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Your Obtained Marks";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "70% (or) 7.0 CGPA",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                    ),
                    10.h,
                    const Text(
                      "Year of Pass",
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
                          return "Please enter Your Passing Year";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "2021",
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
    );
  }
}
