import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/utils/extensions.dart';

import '../../../routes/app_routes.dart';
import '../../../utils/globals.dart';

class PersonalDetailPage extends StatefulWidget {
  const PersonalDetailPage({super.key});

  @override
  State<PersonalDetailPage> createState() => _PersonalDetailPageState();
}

class _PersonalDetailPageState extends State<PersonalDetailPage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> availablelanguages = [
    "Gujarati",
    "Hindi",
    "English",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
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
                      "DOB",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.datetime,
                      onSaved: (val) => {Globals.dob = val},
                      initialValue: Globals.dob,
                      decoration: const InputDecoration(
                        hintText: "DD/MM/YYYY",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                    ),
                    10.h,
                    const Text(
                      "Marital Status",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RadioListTile(
                      contentPadding: const EdgeInsets.only(bottom: 2),
                      title: const Text("Male"),
                      value: "Male",
                      groupValue: Globals.gender,
                      onChanged: (val) {
                        Globals.gender = val;
                        setState(() {});
                      },
                    ),
                    RadioListTile(
                      contentPadding: const EdgeInsets.only(bottom: 2),
                      title: const Text("Female"),
                      value: "Female",
                      groupValue: Globals.gender,
                      onChanged: (val) {
                        Globals.gender = val;
                        setState(() {});
                      },
                    ),
                    10.h,
                    const Text(
                      "Known Languages",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...availablelanguages.map(
                      (e) => CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: Globals.languages.contains(e),
                        title: Text(e),
                        onChanged: (val) {
                          if (val!) {
                            Globals.languages.add(e);
                          } else {
                            Globals.languages.remove(e);
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    10.h,
                    const Text(
                      "Nationality",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      onSaved: (val) => {Globals.nationality = val},
                      initialValue: Globals.nationality,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your nationality";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Indian",
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
