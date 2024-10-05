import 'package:allinone/bottomnavi/indexcominghome.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../pages/search_page.dart';
import '../pages/wishlist.dart';
import 'indexhome.dart';
import 'jsontodart.dart';

class drops_list extends StatefulWidget {
  const drops_list({super.key});

  @override
  State<drops_list> createState() => _drops_listState();
}

class _drops_listState extends State<drops_list> {
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
    TextEditingController _searchcontrol = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("DROPS",
              style: TextStyle(color: Colors.black, fontSize: 32)),
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
                  icon: Icon(
                    Icons.person,
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
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: BoxDecoration(
              color: Colors.teal[400],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                    width: MediaQuery.of(context).size.width,
                    child:  CarouselSlider(
items: [
                        Image(height: 50, image: AssetImage("assets/images/5300---Kitchen---Citi-bank-stripe-update--under_699_PC-3000_HDFC._CB561474676_.jpg")),
                        Image(height: 50, image: AssetImage("assets/images/motooffer.jpeg")),
                        Image(height: 50, image: AssetImage("assets/images/twit5.jpeg")),
                        Image(height: 50, image: AssetImage("assets/images/twit3.jpeg")),
                        Image(height: 50, image: AssetImage("assets/images/homeoffer3.jpeg")),
                      ],
                      options: CarouselOptions(
                        animateToClosest: true,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 2),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      shrinkWrap: true,
                      controller: ScrollController(keepScrollOffset: true),
                      itemBuilder: (context, index) {
                        return Row(
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
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            dropsproducts[index].images)),
                                  ),
                                  Text(dropsproducts[index].text,),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: dropsproducts.length),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.refresh),
                    Text(
                      "Recently Viewed",
                      style: TextStyle(fontSize: 35),
                    ),
                  ],
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    shrinkWrap: true,
                    controller: ScrollController(keepScrollOffset: true),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      dropsproducts[index].images1),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text(dropsproducts[index].text1),
                        ],
                      );
                    },
                    itemCount: dropsproducts.length),
              ],
            ),
          ),
        ));
  }
}
