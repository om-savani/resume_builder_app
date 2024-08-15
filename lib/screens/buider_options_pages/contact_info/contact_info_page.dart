import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/utils/extensions.dart';
import '../../../routes/app_routes.dart';
import '../../../utils/globals.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({super.key});

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  int index = 0;
  bool hide = true;
  String? name, phone, address, email;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
        backgroundColor: Color(0xff009f98).withOpacity(0.5),
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
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                onSaved: (val) => {Globals.name = val},
                                initialValue: Globals.name,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter name";
                                  }
                                  return null;
                                },
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
                              TextFormField(
                                maxLength: 10,
                                onSaved: (val) => {Globals.phone = val},
                                initialValue: Globals.phone,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter phone number";
                                  } else if (val.length < 10) {
                                    return "Number must be 10 digits";
                                  }
                                  return null;
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
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
                              TextFormField(
                                onSaved: (val) => {Globals.address = val},
                                initialValue: Globals.address,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter address";
                                  }
                                  return null;
                                },
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
                              TextFormField(
                                onSaved: (val) => {Globals.email = val},
                                initialValue: Globals.email,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter email";
                                  }
                                  return null;
                                },
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      bool valid =
                                          formKey.currentState!.validate();
                                      if (valid) {
                                        formKey.currentState!.save();

                                        SnackBar snackBar = const SnackBar(
                                          content: Text(
                                              "Form saved successfully... !!"),
                                          backgroundColor: Colors.green,
                                          behavior: SnackBarBehavior.floating,
                                        );

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      } else {
                                        SnackBar snackBar = const SnackBar(
                                          content:
                                              Text("Something went wrong...!!"),
                                          backgroundColor: Colors.red,
                                          behavior: SnackBarBehavior.floating,
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.greenAccent),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    child: const Text("Save"),
                                  ),
                                  15.w,
                                  ElevatedButton(
                                    onPressed: () {
                                      formKey.currentState!.reset();
                                      Globals.name = Globals.phone = Globals
                                          .address = Globals.email = null;
                                      setState(() {});
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.redAccent),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    child: const Text("Reset"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Photo Page
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            foregroundImage: Globals.image != null
                                ? FileImage(Globals.image!)
                                : null,
                            child: Text("Add Photo"),
                            radius: 70,
                            backgroundColor: Colors.grey.shade300,
                          ),
                          FloatingActionButton.small(
                            onPressed: () async {
                              ImagePicker picker = ImagePicker();
                              XFile? file = await picker.pickImage(
                                source: ImageSource.camera,
                              );
                              if (file != null) {
                                log("FILE GOT !!");
                                Globals.image = File(file.path);
                                setState(() {});
                              } else {
                                log("FAILED !!");
                              }
                            },
                            child: Icon(Icons.add),
                          ),
                        ],
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
