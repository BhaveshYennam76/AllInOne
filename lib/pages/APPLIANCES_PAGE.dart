import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../lists/jsontodart.dart';

class appliances extends StatefulWidget {
  const appliances({super.key});

  @override
  State<appliances> createState() => _appliancesState();
}

class _appliancesState extends State<appliances> {
  List<Temperatures> dropsproducts = [
    Temperatures(
      text: "SmartTvs",
      images: "assets/images/smarttvs.jpeg",
      images1: "assets/images/freezz2.jpeg",
      text1: "Micro Oven",
      text3: "Book Theif",
      text2: "assets/images/book3.jpeg",
    ),
    Temperatures(
        text: "ACs",
        images: "assets/images/ACs.jpeg",
        images1: "assets/images/oven.jpeg",
        text1: "Oven",
        text3: "Teenage Girl",
        text2: "assets/images/book5.jpeg"),
    Temperatures(
        text: "fridg",
        images: "assets/images/fridge.jpeg",
        images1: "assets/images/freezz2.jpeg",
        text1: "Micro Oven",
        text3: "Book Theif",
        text2: "assets/images/book3.jpeg"),
    Temperatures(
        text: "Microwave",
        images: "assets/images/microwaves.jpeg",
        images1: '',
        text1: "",
        text3: "",
        text2: ""),
    Temperatures(
        text: "Fans",
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
          toolbarHeight: 70,
          title: Text("Appliances",
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
                            CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage(dropsproducts[index].images)),
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
                      autoPlayAnimationDuration: Duration(seconds: 1),
                    )),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            semanticContainer: true,
                            child: Image(
                                image:
                                    AssetImage(dropsproducts[index].images1)),
                          ),
                          Text(dropsproducts[index].text1,
                              style: TextStyle(fontSize: 20)),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            semanticContainer: true,
                            child: Image(
                                image: AssetImage(dropsproducts[index].text2)),
                          ),
                          Text(dropsproducts[index].text3,
                              style: TextStyle(fontSize: 20)),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
