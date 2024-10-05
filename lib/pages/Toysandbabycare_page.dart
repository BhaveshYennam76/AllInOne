import 'package:allinone/lists/indexhome.dart';
import 'package:allinone/pages/Beauty_page.dart';
import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/suggested.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import '../bottomnavi/indexcominghome.dart';
import '../lists/jsontodart.dart';
import 'Electronic_page.dart';

class Toysandbaby_page extends StatefulWidget {
  const Toysandbaby_page({super.key});

  @override
  State<Toysandbaby_page> createState() => _Toysandbaby_pageState();
}

class _Toysandbaby_pageState extends State<Toysandbaby_page> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "BabyEssentials", images: "assets/images/babyessn.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Toys&Games", images: "assets/images/toysandgames.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "For Parents", images: "assets/images/babycareper.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Learning", images: "assets/images/schoolbaby.jpeg",images1: '',text1: "",text3: "",text2: ""),
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Toys",
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
                              "assets/images/bestselling.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/writing.jpeg")),

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
                              Image(image: AssetImage("assets/images/pampers.jpeg")),
                            ),
                          ),
                        ),
                        Text("Baby Pampers",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/babyessent.jpeg")),
                          ),
                          ),
                        ),
                        Text("Baby Essentials",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/pampers.jpeg")),
                            ),
                          ),
                        ),
                        Text("Baby Pampers",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/thing3.jpeg")),
                            ),
                          ),
                        ),
                        Text("Baby thigs",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/thing2.jpeg")),
                          ),
                          ),
                        ),
                        Text("Baby Care",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/thing3.jpeg")),
                            ),
                          ),
                        ),
                        Text("Baby thigs",style: TextStyle(fontSize: 20)),
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