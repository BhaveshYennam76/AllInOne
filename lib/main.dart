
import 'package:allinone/pages/APPLIANCES_PAGE.dart';
import 'package:allinone/pages/Beauty_page.dart';
import 'package:allinone/pages/Electronic_page.dart';
import 'package:allinone/pages/Grocery_page.dart';
import 'package:allinone/pages/Home_page.dart';
import 'package:allinone/pages/Mobiles.dart';
import 'package:allinone/pages/Todaysoffer.dart';
import 'package:allinone/pages/Toysandbabycare_page.dart';
import 'package:allinone/pages/books_page.dart';
import 'package:allinone/pages/essentials-page.dart';
import 'package:allinone/pages/mens.dart';
import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/shop.dart';
import 'package:allinone/pages/shopingbag.dart';
import 'package:allinone/pages/womens.dart';
import 'package:allinone/signup_pages/signin.dart';
import 'package:allinone/splashscreen/first.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'bottomnavi/bottom.dart';
import 'lists/dropslist.dart';
import 'login_pages/login.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDuxWjnMszWMtd1mqIveW13U-OJ19aw2zo",
          appId: "1:677651362983:android:ea24bc1b39fdaf238ed782",
          messagingSenderId: "677651362983",
          projectId: "allinone-c89f9"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: first_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}
