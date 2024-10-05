import 'package:allinone/pages/Todaysoffer.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

import '../lists/jsontodart.dart';

class shop_page extends StatefulWidget {
  const shop_page({super.key});

  @override
  State<shop_page> createState() => _shop_pageState();
}

class _shop_pageState extends State<shop_page> {
 List<Temperatures>  offers = [
   Temperatures(images: "assets/images/casualshoewomen.jpeg", text: "01", images1: "", text1: "", text2: "", text3: ""),
   Temperatures(images: "assets/images/cards5.jpeg", text: "02", images1: "", text1: "", text2: "", text3: ""),
   Temperatures(images: "assets/images/cards5.jpeg", text: "03", images1: "", text1: "", text2: "", text3: ""),
   Temperatures(images: "assets/images/cards5.jpeg", text: "04", images1: "", text1: "", text2: "", text3: ""),
 ];
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      appBar: AppBar(
        elevation: 1,
        toolbarHeight: 70,
        title: Text("SHOP",style: TextStyle(color: Colors.black,fontSize: 32)),
        actions: [
          Row(
            children: [
              Align(
                  heightFactor: 18,
                  widthFactor: 2,
                  child: Icon(Icons.person_3_outlined,color: Colors.black,size: 35,)),
              //Icon(Icons.notifications),
            ],
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
            AnimatedCard(
              curve: Curves.bounceOut,
              direction: AnimatedCardDirection.left, //Initial animation direction
              initDelay: Duration(milliseconds: 0), //Delay to initial animation
              duration: Duration(seconds: 1), //Initial animation duration
              child: Image.asset(offers[index].images), //Implement this action to active dismiss
            ),
            Text(offers[index].text,style: TextStyle(fontSize: 60),)
             ],
        );

      },
      shrinkWrap: true,
      itemCount: offers.length,)
    );

  }
}
