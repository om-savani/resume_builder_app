import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/extensions.dart';

import '../../../routes/app_routes.dart';
import '../../../utils/globals.dart';

class CarrierObjectivePage extends StatefulWidget {
  const CarrierObjectivePage({super.key});

  @override
  State<CarrierObjectivePage> createState() => _CarrierObjectivePageState();
}

class _CarrierObjectivePageState extends State<CarrierObjectivePage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrier Objective "),
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
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Carrier Objective",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      minLines: 5,
                      maxLines: 10,
                      onSaved: (val) => {Globals.carrier_objective = val},
                      initialValue: Globals.carrier_objective,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter the carrier objective";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Discribtion",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              20.h,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Current designation(Experienced Candidate)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      onSaved: (val) => {Globals.designation = val},
                      initialValue: Globals.designation,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Current designation";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Software Developer",
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
