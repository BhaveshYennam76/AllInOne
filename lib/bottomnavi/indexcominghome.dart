import 'package:allinone/pages/Mobiles.dart';

import '../pages/APPLIANCES_PAGE.dart';
import '../pages/Beauty_page.dart';
import '../pages/Electronic_page.dart';
import '../pages/Grocery_page.dart';
import '../pages/Toysandbabycare_page.dart';
import '../pages/books_page.dart';
import '../pages/essentials-page.dart';
import 'bottom.dart';

import 'package:allinone/lists/indexhome.dart';
import 'package:allinone/pages/Home_page.dart';
import 'package:allinone/pages/mens.dart';
import 'package:allinone/pages/womens.dart';
import 'package:flutter/material.dart';
class Indexcomming_home extends StatefulWidget {
  const Indexcomming_home({super.key});
  @override
  State<Indexcomming_home> createState() => _Indexcomming_homeState();
}
class _Indexcomming_homeState extends State<Indexcomming_home> {
  int commingindex = Indexing.myindex;

  final screens = [
    womens_page(),
    mens_page(),
    mobiles_page(),
    Toysandbaby_page(),
    Electronics(),
    home(),
    Beauty(),
    books(),
    appliances(),
    grocery(),
    essentials(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[commingindex],
      extendBody: true,
    );
  }
}
