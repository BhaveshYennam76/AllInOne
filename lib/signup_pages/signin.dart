import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../login_pages/login.dart';
class Sign extends StatefulWidget {
  const Sign({super.key});
  @override
  State<Sign> createState() => _SignState();
}
class _SignState extends State<Sign> {
  final _globalKey = GlobalKey<FormState>();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final firebaseFirestore = FirebaseFirestore.instance.collection('info');
  bool _pass = true;
  RegExp email = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  RegExp phone = RegExp(r'^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$');
  RegExp pass = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  RegExp alphabets = RegExp('[a-zA-Z]');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _globalKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextFormField(
                        controller: _firstnameController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(alphabets)
                        ],
                        autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter First Name";
                          } else if (!value.contains(alphabets)) {
                            return "Enter Only Alphabets";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "Enter UserName",
                            labelText: 'Enter UserName',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        controller: _lastnameController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(alphabets)
                        ],
                        autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter last Name";
                          } else if (!value.contains(alphabets)) {
                            return "Enter Only Alphabets";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Enter Last Name",
                            labelText: 'Enter Last Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        controller: _emailController,
                        autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Email Address";
                          } else if (!value.contains(email)) {
                            return "Enter Valid Email Address";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Enter Email Address",
                            labelText: 'Enter Email Address',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        controller: _phoneController,
                        autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Phone Number";
                          }
                          // else if (!value.contains(phone)) {
                          //   return "Enter Valid Phone Number";
                          // }
                          return null;
                        },
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: "Enter Phone Number",
                            labelText: 'Enter Phone Number',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _pass,
                        obscuringCharacter: '*',
                        cursorColor: Colors.blue,
                        style: const TextStyle(color: Colors.orange),
                        decoration: InputDecoration(
                            hintText: "password",
                            labelText: "Enter Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: (_pass = !_pass)
                                    ? const Icon(CupertinoIcons.eye)
                                    : const Icon(CupertinoIcons.eye_slash))),
                        autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter Password";
                          } else if (value.length <= 8) {
                            return "Please Enter Minimum 8 charcter";
                          } else if (!value.contains(RegExp(r'[A-Z]'))) {
                            return "PLease Enter at least 1 Upper case Charcter";
                          } else if (!value.contains(RegExp(r'[a-z]'))) {
                            return "PLease Enter at least 1 Lower case Charcter";
                          } else if (!value.contains(RegExp(r'[0-9]'))) {
                            return "PLease Enter at least Numeric Value";
                          } else if (!value.contains(
                              RegExp(r'[_==@@#$!%^&*(){}:"<>?\.;$]'))) {
                            return "PLease Enter at least 1 Special Symbol Charcter";
                          }
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(7.0),
                      child: SizedBox(
                        height: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        firebaseFirestore
                            .doc(_phoneController.text.toString())
                            .set({
                          "FirstName": _firstnameController.text.toString(),
                          "LastName": _lastnameController.text.toString(),
                          "PhoneNumber": _phoneController.text.toString(),
                        }).then((value) => Fluttertoast.showToast(
                                msg: "Signing Successfully"));

                        if (_globalKey.currentState!.validate()) {}
                        if (_firstnameController.text
                                .toString()
                                .trim()
                                .isNotEmpty &&
                            _lastnameController.text
                                .toString()
                                .trim()
                                .isNotEmpty &&
                            _emailController.text
                                .toString()
                                .trim()
                                .isNotEmpty &&
                            _phoneController.text
                                .toString()
                                .trim()
                                .isNotEmpty &&
                            _passwordController.text
                                .toString()
                                .trim()
                                .isNotEmpty) {
                          if (_globalKey.currentState!.validate()) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                                ModalRoute.withName('/'));
                          }
                        }
                      },
                      child: Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text("Sign Up",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
