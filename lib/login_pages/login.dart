import 'package:allinone/bottomnavi/bottom.dart';
import 'package:allinone/lists/dropslist.dart';
import 'package:allinone/signup_pages/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _globalKey = GlobalKey<FormState>();

  login() async {
    UserCredential? userCredential;
    try {
      userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _usernameController.text,
              password: _passwordController.text)
          .then(
        (value) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const bottom_bar(),
              ),
              (route) => false);
          },
      );
    } on FirebaseAuthException catch (ex) {
      return const Text("No add");
    }
  }

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _pass = true;

  RegExp email = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  RegExp alphabets = RegExp('[a-zA-Z]');
  RegExp pass =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  RegExp alpha = RegExp('[a-zA-Z]');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 220.0),
          child: Form(
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
                          controller: _usernameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Email Address";
                            } else if (!value.contains(email)) {
                              return "Enter Valid Email Address";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Enter Email",
                              labelText: 'Enter Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: _pass,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                              hintText: " Enter Password Here",
                              labelText: "Password",
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: (_pass = !_pass)
                                      ? const Icon(CupertinoIcons.eye)
                                      : const Icon(CupertinoIcons.eye_slash)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter Password";
                            }

                          },
                          keyboardType: TextInputType.name,
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          // if (_globalKey.currentState!.validate()) {}
                          // if (_passwordController.text.toString().trim().isNotEmpty) {
                          //   if (_globalKey.currentState!.validate()) {
                          //     login();
                          //
                          //   }
                          //
                          // }
                          login();
                        },
                        child: Container(
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                              child: Text("Login",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white))),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
