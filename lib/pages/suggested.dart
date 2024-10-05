import 'package:allinone/lists/jsontodart.dart';
import 'package:allinone/pages/Toysandbabycare_page.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

import '../bottomnavi/indexcominghome.dart';
import '../lists/indexhome.dart';
class suggested_page extends StatefulWidget {
  const suggested_page({super.key});

  @override
  State<suggested_page> createState() => _suggested_pageState();
}

class _suggested_pageState extends State<suggested_page> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "Womens",
      images: "assets/images/womens.jpeg",
      images1: "assets/images/card1.jpeg",
      text1: "Iphone15",
      text3: "",
      text2: "",
    ),
    Temperatures(text: "Mens",
      images: "assets/images/fashion.jpeg",
      images1: "assets/images/cards2.jpeg",
      text1: "SamsungS22",
      text3: "",
      text2: "assets/images/BEST-SELLER-_-2X._CB561563452_.jpg",
    ),
    Temperatures(text: "Mobiles",
      images: "assets/images/mobiles.jpeg",
      images1: "assets/images/cards3.jpeg",
      text1: "Nivea Lotion",
      text3: "",
      text2: "assets/images/PC_GW_Hero_3000x1200_01._CB579486410_.jpg",
    ),
    Temperatures(text: "Toys&Baby",
      images: "assets/images/babycare.jpeg",
      images1: "assets/images/cards4.jpeg",
      text1: "Hudies Combo",
      text3: "",
      text2: "assets/images/Skincare-PC_Rev._CB561514457_.jpg",
    ),
    Temperatures(text: "Electronics",
      images: "assets/images/electronics.jpeg",
      images1: "assets/images/cards5.jpeg",
      text1: "NYC",
      text3: "",
      text2: "assets/images/Under_1499_Tallhero_3000x1200._CB561212093_.jpg",
    ),
    Temperatures(text: "Home",
      images: "assets/images/home.jpeg",
      images1: "assets/images/cards6.jpeg",
      text1: "LV Tshirt",
      text3: "",
      text2: "",
    ),
    Temperatures(text: "Beauty",
      images: "assets/images/beauty.png",
      images1: "assets/images/cards7.jpeg",
      text1: "Gucci Tshirt",
      text3: "",
      text2: "",
    ),
    Temperatures(text: "Books",
      images: "assets/images/books.jpeg",
      images1: "assets/images/cards8.jpeg",
      text1: "Balenciaga",
      text3: "",
      text2: "",
    ),
    Temperatures(text: "Appliances",
      images: "assets/images/appliances.jpeg",
      images1: "assets/images/cards9.jpeg",
      text1: "ChromeHeart",
      text3: "",
      text2: "",
    ),
    Temperatures(text: "Grocery",
      images: "assets/images/grocery.jpeg",
      images1: "assets/images/cards10.jpeg",
      text1: "AirForce1",
      text3: "",
      text2: "",
    ),
    Temperatures(text: "Essentials",
      images: "assets/images/essentials.jpeg",
      images1: "assets/images/cards11.jpeg",
      text1: "Jewellery",
      text3: "",
      text2: "",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Suggested Products",
              style: TextStyle(color: Colors.black, fontSize: 32)),
         actions: [

          ],
          backgroundColor: Colors.white,
        ),

        body:
        ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Indexing.myindex = index;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Indexcomming_home(),
                        ));
                  },
                  child: Column(
                    children: [
                      AnimatedCard(
                        curve: Curves.bounceOut,
                        direction: AnimatedCardDirection.left, //Initial animation direction
                        initDelay: Duration(milliseconds: 1), //Delay to initial animation
                        duration: Duration(seconds: 1), //Initial animation duration
                        child: Image.asset(dropsproducts[index].images), //Implement this action to active dismiss
                      ),
                      Text(dropsproducts[index].text,style: TextStyle(fontSize: 60),)
                    ],
                  ),
                ),
              ],
            );
          },
          itemCount: dropsproducts.length,
          shrinkWrap: true,
        )
    );
  }
}
