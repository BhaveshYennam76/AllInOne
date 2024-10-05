import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../lists/jsontodart.dart';

class grocery extends StatefulWidget {
  const grocery({super.key});

  @override
  State<grocery> createState() => _groceryState();
}

class _groceryState extends State<grocery> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "Knives", images: "assets/images/chpper.jpeg", images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Cleaning", images: "assets/images/cleaning.jpeg", images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "GasStove", images: "assets/images/gasstove.jpeg", images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Bottles", images: "assets/images/bottles.jpeg", images1: '',text1: "",text3: "",text2: ""),
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Groceries",
              style: TextStyle(color: Colors.black, fontSize: 22)),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },child: Icon(Icons.arrow_back, color: Colors.black, size: 20)),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => search(),));
                  },
                  icon:  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon:  Icon(
                    Icons.mic,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed:() {

                  },
                  icon:
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => wishlist_page(),
                        ));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25,
                  ),
                  color: Colors.black,
                ),
                //Icon(Icons.notifications),
              ],
            ),

          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                    dropsproducts[index].images)),
                          ),
                          Text(dropsproducts[index].text),
                        ],
                      ),
                    ],
                  ),
                  itemCount: dropsproducts.length),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                    items: [
                      Image(
                          image: AssetImage(
                              "assets/images/homeoffer1.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/furnitureoffer2.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/homeoffer3.jpeg")),

                    ],
                    options: CarouselOptions(
                      animateToClosest: true,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                    )),
              ),
              SingleChildScrollView(
               scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 300,
                            width: 200,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child:
                              Image(image: AssetImage("assets/images/nets.jpeg")),
                            ),
                          ),
                        ),
                        Text("Mosquito Nets",style: TextStyle(fontSize: 20)),
                      ],
                    ),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 300,
                            width: 200,  child: Card(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            semanticContainer: true,
                            child:
                            Image(
                                image:
                                AssetImage(
                                    "assets/images/containers.jpeg")),
                          ),
                          ),
                        ),
                        Text("Containers Combo",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 300,
                            width: 200,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child:
                              Image(image: AssetImage("assets/images/nets.jpeg")),
                            ),
                          ),
                        ),
                        Text("Mosquito Nets",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 300,
                            width: 200,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child:
                              Image(image: AssetImage("assets/images/cover.jpeg")),
                            ),
                          ),
                        ),
                        Text("Appliances Covers",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 300,
                            width: 200,  child: Card(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            semanticContainer: true,
                            child:
                            Image(
                                image:
                                AssetImage(
                                    "assets/images/stickers.jpeg")),
                          ),
                          ),
                        ),
                        Text("Wall Papers",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 300,
                            width: 200,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child:
                              Image(image: AssetImage("assets/images/cover.jpeg")),
                            ),
                          ),
                        ),
                        Text("Appliances Covers",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );

  }
}
