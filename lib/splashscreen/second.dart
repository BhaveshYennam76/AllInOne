import 'dart:async';
import 'package:allinone/lists/dropslist.dart';
import 'package:allinone/login_pages/login.dart';
import 'package:allinone/pages/Home_page.dart';
import 'package:allinone/signup_pages/signin.dart';
import 'package:flutter/material.dart';
import '../bottomnavi/bottom.dart';
class second_page extends StatefulWidget {
  const second_page({super.key});
  @override
  State<second_page> createState() => _second_pageState();
}
class _second_pageState extends State<second_page> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>const Sign(),
                // bottom_bar(),
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body:
          Center(child: Text("LET'S START BY GETTING YOU READY FOR THE BEST APPLICATION EXPERIENCE. ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)))    ),
    );
  }
}
