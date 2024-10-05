import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../lists/jsontodart.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "Redmi", images: "assets/images/redmi2.jpeg", images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Vivo", images: "assets/images/vivo2.jpeg", images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "iphones", images: "assets/images/iphone1.jpeg", images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Realme", images: "assets/images/realme1.jpeg", images1: '',text1: "",text3: "",text2: ""),


  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Electronics Store",
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
                              "assets/images/aceroffer.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/moniteroffer.jpeg")),
 Image(
                          image: AssetImage(
                              "assets/images/motooffer2.jpeg")),

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
                                    "assets/images/lenevo2.jpeg")),
                          ),
                          ),
                        ),
                        Text("Lenovo Tab",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/projecter2.jpeg")),
                            ),
                          ),
                        ),
                        Text("Portable Projecter",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/lenevo2.jpeg")),
                          ),
                          ),
                        ),
                        Text("Lenovo Tab",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/benq.jpeg")),
                          ),
                          ),
                        ),
                        Text("Benq Moniter",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/ipad.jpeg")),
                            ),
                          ),
                        ),
                        Text("iPads",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/benq.jpeg")),
                          ),
                          ),
                        ),
                        Text("Benq Moniter",style: TextStyle(fontSize: 20)),
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
