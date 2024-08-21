import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/extensions.dart';

import '../../../routes/app_routes.dart';
import '../../../utils/globals.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({super.key});

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Declaration Page"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Declaration"),
                  Switch(
                    value: Globals.isDeclared ?? false,
                    onChanged: (val) {
                      Globals.isDeclared = val;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Form(
                key: formKey,
                child: Visibility(
                  visible: Globals.isDeclared ?? false,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "lib/assets/icons/target.png",
                          width: 50,
                          height: 50,
                        ),
                        30.h,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (val) => {Globals.description = val},
                          initialValue: Globals.description,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter Description";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "Description",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                          ),
                        ),
                        20.h,
                        const Divider(),
                        20.h,
                        const Text(
                          "Date",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (val) => {Globals.date = val},
                          initialValue: Globals.date,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter Date";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "DD/MM/YYYY",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                          ),
                        ),
                        const Text(
                          "Place(Interview venue/city)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (val) => {Globals.city = val},
                          initialValue: Globals.city,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter City";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "City",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
