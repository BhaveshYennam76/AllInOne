import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../lists/jsontodart.dart';

class Beauty extends StatefulWidget {
  const Beauty({super.key});

  @override
  State<Beauty> createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "SkinCare", images: "assets/images/skincare.jpeg",images1: 'assets/images/nivea.jpeg',text1: "Nivea Skin Care",text3: "assets/images/lipbalm.jpeg",text2: "GIVENCHY Lip Balm"),
    Temperatures(text: "haircare", images: "assets/images/cleaning.jpeg",images1: 'assets/images/beardo.jpeg',text1: "Beardo Hair Oil",text3: "assets/images/myglam.jpeg",text2: "MyGlamm Cosmetics"),
    Temperatures(text: "Makeup", images: "assets/images/makeup.jpeg",images1: 'assets/images/nivea.jpeg',text1: "Nivea Skin Care",text3: "assets/images/lipbalm.jpeg",text2: "GIVENCHY Lip Balm"),
    Temperatures(text: "Fragrances", images: "assets/images/fragrances.jpeg",images1: '',text1: "",text3: "",text2: ""),
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Beauty",
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
                              "assets/images/guessoffer.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/lakmeoffer.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/niveaoffer.jpeg")),

                    ],
                    options: CarouselOptions(
                      animateToClosest: true,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 2),
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
                            child: Container(
                              width: 230,height: 300,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage(dropsproducts[index].images1))),
                            ),
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
                            child: Container(
                              width: 230,height: 300,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage(dropsproducts[index].text3))),
                            ),
                          ),
                          Text(dropsproducts[index].text2,
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
  }
}
