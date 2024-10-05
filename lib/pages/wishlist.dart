import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playable_toolbar_flutter/list_item_model.dart';

import 'Todaysoffer.dart';

class wishlist_page extends StatefulWidget {
  const wishlist_page({super.key});

  @override
  State<wishlist_page> createState() => _wishlist_pageState();
}

class _wishlist_pageState extends State<wishlist_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        title: Text("SHOPPING BAG",
            style: TextStyle(color: Colors.black, fontSize: 32)),
        actions: const [
          Row(
            children: [
              Align(
                  heightFactor: 18,
                  widthFactor: 2,
                  child: Icon(
                    Icons.person_3_outlined,
                    color: Colors.black,
                    size: 35,
                  )),
            ],
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                foregroundDecoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                color: Colors.grey,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/images/WhatsApp Image 2024-05-03 at 09.42.35_7375acaa.jpg")),
              ),
            ),
            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        color: CupertinoColors.activeGreen,
                        child: Text("𝑺𝒕𝒆𝒂𝒍 𝑫𝒆𝒂𝒍𝒔",style: TextStyle(color: Colors.white,fontSize: 25 ),)),
                  ),
                  Text("Limited Period Offers",style: TextStyle(fontSize: 20),)
                ]),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 10,
                      semanticContainer: true,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image(image: AssetImage("assets/images/madhur2.jpeg"))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Madhur Pure Hygienic Suger"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("1Kg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("⏳ Expiry 19 Nov 2025"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("₹1"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Current Price : ₹49"),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0,top: 4,bottom: 4,right: 1),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text("Add",
                                            style: TextStyle(fontSize: 18)),
                                        style: ButtonStyle(
                                            side: MaterialStatePropertyAll(BorderSide(
                                                color: Colors.blue,
                                                style: BorderStyle.solid)))),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child:
                                      Text("+", style: TextStyle(fontSize: 20)),
                                      style: ButtonStyle(
                                          side: MaterialStatePropertyAll(BorderSide(
                                              color: Colors.blue,
                                              style: BorderStyle.solid))))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),   Card(
                      color: Colors.white,
                      elevation: 10,
                      semanticContainer: true,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image(image: AssetImage("assets/images/crunchex.jpeg"))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Balaji Wafers Crunchex"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("35g"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("⏳ Expiry 19 Nov 2025"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("₹2"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Current Price : ₹11"),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0,top: 4,bottom: 4,right: 1),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text("Add",
                                            style: TextStyle(fontSize: 18)),
                                        style: ButtonStyle(
                                            side: MaterialStatePropertyAll(BorderSide(
                                                color: Colors.blue,
                                                style: BorderStyle.solid)))),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child:
                                      Text("+", style: TextStyle(fontSize: 20)),
                                      style: ButtonStyle(
                                          side: MaterialStatePropertyAll(BorderSide(
                                              color: Colors.blue,
                                              style: BorderStyle.solid))))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Quick Grabs",style: TextStyle(fontSize: 20),),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const offers(),));
                    },
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.alphaBlend(Colors.black12, Colors.blue))),
                        child:const Text("View All",style: TextStyle(color: Colors.white),))
                  ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 10,
                      semanticContainer: true,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image(image: AssetImage("assets/images/madhur2.jpeg"))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Madhur Pure Hygienic Suger"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("1Kg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("⏳ Expiry 19 Nov 2025"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("₹1"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Current Price : ₹49"),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0,top: 4,bottom: 4,right: 1),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text("Add",
                                            style: TextStyle(fontSize: 18)),
                                        style: ButtonStyle(
                                            side: MaterialStatePropertyAll(BorderSide(
                                                color: Colors.blue,
                                                style: BorderStyle.solid)))),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child:
                                      Text("+", style: TextStyle(fontSize: 20)),
                                      style: ButtonStyle(
                                          side: MaterialStatePropertyAll(BorderSide(
                                              color: Colors.blue,
                                              style: BorderStyle.solid))))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),   Card(
                      color: Colors.white,
                      elevation: 10,
                      semanticContainer: true,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image(image: AssetImage("assets/images/crunchex.jpeg"))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Balaji Wafers Crunchex"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("35g"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("⏳ Expiry 19 Nov 2025"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("₹2"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Current Price : ₹11"),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0,top: 4,bottom: 4,right: 1),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text("Add",
                                            style: TextStyle(fontSize: 18)),
                                        style: ButtonStyle(
                                            side: MaterialStatePropertyAll(BorderSide(
                                                color: Colors.blue,
                                                style: BorderStyle.solid)))),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child:
                                      Text("+", style: TextStyle(fontSize: 20)),
                                      style: ButtonStyle(
                                          side: MaterialStatePropertyAll(BorderSide(
                                              color: Colors.blue,
                                              style: BorderStyle.solid))))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
