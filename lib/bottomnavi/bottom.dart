import 'package:allinone/lists/dropslist.dart';
import 'package:allinone/pages/suggested.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/shop.dart';
import '../pages/shopingbag.dart';
import '../pages/wishlist.dart';
class bottom_bar extends StatefulWidget {
  const bottom_bar({super.key});
  @override
  State<bottom_bar> createState() => _bottom_barState();
}
class _bottom_barState extends State<bottom_bar> {
  int _selectedindex = 0;
  List<IconData> icons = [CupertinoIcons.add_circled,CupertinoIcons.add_circled,CupertinoIcons.add_circled,CupertinoIcons.add,Icons.local_fire_department_outlined,CupertinoIcons.add,];
 final screens=[
   drops_list(),
   shoppingbag_page(),
   shop_page(),
   wishlist_page(),
   suggested_page()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(items: [
        Icon(CupertinoIcons.flame),
        Icon(CupertinoIcons.shopping_cart,),
        Icon(CupertinoIcons.heart_circle),
        Icon(CupertinoIcons.bag_fill),
        Icon(CupertinoIcons.antenna_radiowaves_left_right),
      ],
        index: _selectedindex,
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });

        },

        backgroundColor: Colors.blue,
        animationDuration: const Duration(milliseconds: 380),
        height: 68,
        buttonBackgroundColor: Colors.white,


      ),
      body: screens[_selectedindex],
    );
  }
}
