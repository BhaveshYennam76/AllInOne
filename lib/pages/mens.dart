import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../lists/jsontodart.dart';

class mens_page extends StatefulWidget {
  const mens_page({super.key});

  @override
  State<mens_page> createState() => _mens_pageState();
}

class _mens_pageState extends State<mens_page> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "Clothing", images: "assets/images/fashion.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Foot", images: "assets/images/mensfoot.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Watches", images: "assets/images/mens watches.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Luggage", images: "assets/images/luggage.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Accessories", images: "assets/images/mens accessories.jpeg",images1: '',text1: "",text3: "",text2: ""),

  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Mens Fashion",
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
                      crossAxisCount: 5),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                                radius: 25,
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
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                    items: [
                      Image(
                          image: AssetImage(
                              "assets/images/Designer.png")),
                      Image(
                          image: AssetImage(
                              "assets/images/Designer (1).png")),
                      Image(
                          image: AssetImage(
                              "assets/images/Designer (2).png")),
                      Image(
                          image: AssetImage(
                              "assets/images/Designer (3).png")),
                      Image(
                          image: AssetImage(
                              "assets/images/Designer (4).png")),
                      Image(
                          image: AssetImage(
                              "assets/images/tshirts offer.png")),
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
                            width: 200,  child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child:
                              Image(
                                  image:
                                  AssetImage(
                                      "assets/images/tshirtcard.jpeg")),
                            ),
                          ),
                        ),
                        Text("Burberry Tshirt",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/shoecard.jpeg")),
                            ),
                          ),
                        ),
                        Text("Lacoste shoes",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/tshirtcard.jpeg")),
                          ),
                          ),
                        ),
                        Text("Burberry Tshirt",style: TextStyle(fontSize: 20)),
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
                            width: 200,  child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child:
                              Image(
                                  image:
                                  AssetImage(
                                      "assets/images/pantscard.jpeg")),
                            ),
                          ),
                        ),
                        Text("Formal Pants",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/capcards.jpeg")),
                            ),
                          ),
                        ),
                        Text("Gucci Cap",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/pantscard.jpeg")),
                          ),
                          ),
                        ),
                        Text("Formal Pants",style: TextStyle(fontSize: 20)),
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
