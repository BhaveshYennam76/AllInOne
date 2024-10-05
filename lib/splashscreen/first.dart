import 'dart:async';
import 'package:allinone/splashscreen/second.dart';
import 'package:flutter/material.dart';
class first_page extends StatefulWidget {
  const first_page({super.key});
  @override
  State<first_page> createState() => _first_pageState();
}
class _first_pageState extends State<first_page> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=> Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => second_page()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body:
          Center(child: Text("WELCOME. WE ARE EXCITED YOU'RE HERE. ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),))    ),
    );
  }
}