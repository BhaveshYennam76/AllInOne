import 'package:allinone/lists/indexhome.dart';
import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../lists/jsontodart.dart';

class mobiles_page extends StatefulWidget {
  const mobiles_page({super.key});

  @override
  State<mobiles_page> createState() => _mobiles_pageState();
}

class _mobiles_pageState extends State<mobiles_page> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "phone 2a", images: "assets/images/nothingmobiles.png",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "vivo", images: "assets/images/vivomobiles.png",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Motorola", images: "assets/images/motorolamobiles.png",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Samsung", images: "assets/images/samsungmobiles.png",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Poco", images: "assets/images/pocomobiles.png",images1: '',text1: "",text3: "",text2: ""),
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Mobiles",
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
                  itemBuilder:(context, index) {
                   return Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                      dropsproducts[index].images)),
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
                              "assets/images/motooffer.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/pocooffer.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/samsungoffer.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/vivooffer.jpeg")),
                      Image(
                          image: AssetImage(
                              "assets/images/nothingoffer.jpg")),
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
                                    "assets/images/micard.jpeg")),
                          ),
                          ),
                        ),
                        Text("Mi Xiomi",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/motocard.jpeg")),
                            ),
                          ),
                        ),
                        Text("Motorola",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/micard.jpeg")),
                          ),
                          ),
                        ),
                        Text("Mi Xiomi",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/oppocard.jpeg")),
                          ),
                          ),
                        ),
                        Text("Oppo A53",style: TextStyle(fontSize: 20)),
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
                              Image(image: AssetImage("assets/images/vivocard.jpeg")),
                            ),
                          ),
                        ),
                        Text("Vivo 5G",style: TextStyle(fontSize: 20)),
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
                                    "assets/images/oppocard.jpeg")),
                          ),
                          ),
                        ),
                        Text("Oppo A53",style: TextStyle(fontSize: 20)),
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
