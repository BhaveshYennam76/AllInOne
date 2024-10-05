import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../lists/jsontodart.dart';

class essentials extends StatefulWidget {
  const essentials({super.key});

  @override
  State<essentials> createState() => _essentialsState();
}

class _essentialsState extends State<essentials> {
  List<Temperatures> dropsproducts = [
    Temperatures(
        text: "Smart Tvs",
        images: "assets/images/smarttvs.jpeg",
        images1: '',
        text1: "",
        text3: "",
        text2: ""),
    Temperatures(
        text: "ACs",
        images: "assets/images/ACs.jpeg",
        images1: '',
        text1: "",
        text3: "",
        text2: ""),
    Temperatures(
        text: "Refrigerators",
        images: "assets/images/fridge.jpeg",
        images1: '',
        text1: "",
        text3: "",
        text2: ""),
    Temperatures(
        text: "Microwaves",
        images: "assets/images/microwaves.jpeg",
        images1: '',
        text1: "",
        text3: "",
        text2: ""),
    Temperatures(
        text: "Fans&Coolers",
        images: "assets/images/fans.jpeg",
        images1: '',
        text1: "",
        text3: "",
        text2: ""),
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Essentials",
              style: TextStyle(color: Colors.black, fontSize: 22)),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.black, size: 20)),
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
                      crossAxisCount: 5),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage:
                                      AssetImage(dropsproducts[index].images)),
                            ),
                            Text(dropsproducts[index].text),
                          ],
                        ),
                      ],
                    );
                  },
                  itemCount: dropsproducts.length),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                    items: [
                      Image(
                          image: AssetImage(
                              "assets/images/appliancesoffer1.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/appliancesoffer7.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/appliancesoffer2.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/appliancesoffer6.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/appliancesoffer3.jpeg")),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/microoven.jpeg")),
                            ),
                          ),
                        ),
                        Text("Micro Oven", style: TextStyle(fontSize: 20)),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage("assets/images/oven.jpeg")),
                            ),
                          ),
                        ),
                        Text("Micro Oven", style: TextStyle(fontSize: 20)),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/microoven.jpeg")),
                            ),
                          ),
                        ),
                        Text("Micro Oven", style: TextStyle(fontSize: 20)),
                      ],
                    )
                  ],
                ),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/book2.jpeg")),
                            ),
                          ),
                        ),
                        Text("Book Theif", style: TextStyle(fontSize: 20)),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/book5.jpeg")),
                            ),
                          ),
                        ),
                        Text("Teenage Girl", style: TextStyle(fontSize: 20)),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/book2.jpeg")),
                            ),
                          ),
                        ),
                        Text("Book Theif", style: TextStyle(fontSize: 20)),
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
    ;
    ;
  }
}
