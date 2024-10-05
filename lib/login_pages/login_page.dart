import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logcomplete extends StatefulWidget {
  const logcomplete({super.key});

  @override
  State<logcomplete> createState() => _logcompleteState();
}

class _logcompleteState extends State<logcomplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          color: Colors.black,
          child: Text('Congratulations!'
              'Login Completed',style: TextStyle(color: Colors.white,fontSize: 30),),
          height: 38,
        ),
      ),
    );;
  }
}
