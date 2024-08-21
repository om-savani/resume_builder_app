import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/extensions.dart';

import '../../../routes/app_routes.dart';
import '../../../utils/globals.dart';

class ReferencesPage extends StatefulWidget {
  const ReferencesPage({super.key});

  @override
  State<ReferencesPage> createState() => _ReferencesPageState();
}

class _ReferencesPageState extends State<ReferencesPage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("References Details"),
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
                      "Reference Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (val) => {Globals.reference_name = val},
                      initialValue: Globals.reference_name,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Reference Name";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Person Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                    ),
                    10.h,
                    const Text(
                      "Designation",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (val) => {Globals.reference_designation = val},
                      initialValue: Globals.reference_designation,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Designation";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Marketing Manager,ID-1234",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                    ),
                    10.h,
                    const Text(
                      "Organization/Institute",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (val) => {Globals.organization = val},
                      initialValue: Globals.organization,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Organization/Institute";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Company Name",
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
