import 'package:allinone/pages/search_page.dart';
import 'package:allinone/pages/wishlist.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../lists/indexhome.dart';
import '../lists/jsontodart.dart';

class womens_page extends StatefulWidget {
  const womens_page({super.key});

  @override
  State<womens_page> createState() => _womens_pageState();
}

class _womens_pageState extends State<womens_page> {
  List<Temperatures> dropsproducts = [
    Temperatures(text: "Ethnic", images: "assets/images/ethnicwear.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Western", images: "assets/images/westernwear.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Foot", images: "assets/images/footwear.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Accesories", images: "assets/images/accessories.jpeg",images1: '',text1: "",text3: "",text2: ""),
    Temperatures(text: "Jewellwry", images: "assets/images/jewellery.jpeg",images1: '',text1: "",text3: "",text2: ""),
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          title: Text("Womens Fashion",
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
                      Image(image: AssetImage("assets/images/offers1.jpeg")),
                      Image(image: AssetImage("assets/images/offers2.jpeg")),
                      Image(image: AssetImage("assets/images/offers3.jpeg")),
                      Image(image: AssetImage("assets/images/offers4.jpg")),
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
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/handbags.jpeg")),
                            ),
                          ),
                        ),
                        Text("Handbags", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/kurta.jpeg")),
                            ),
                          ),
                        ),
                        Text("Kurtas", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/sportsshoes.jpeg")),
                            ),
                          ),
                        ),
                        Text("Sportsshoes", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/handbags.jpeg")),
                            ),
                          ),
                        ),
                        Text("Handbags", style: TextStyle(fontSize: 20)),
                      ],
                    ),
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
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/topsandtshirts.jpeg")),
                            ),
                          ),
                        ),
                        Text("Top&Tshirts", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/casualshoewomen.jpeg")),
                            ),
                          ),
                        ),
                        Text("Casual shoes", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/watchwomen.jpeg")),
                            ),
                          ),
                        ),
                        Text("Watches", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/topsandtshirts.jpeg")),
                            ),
                          ),
                        ),
                        Text("Top&Tshirts", style: TextStyle(fontSize: 20)),
                      ],
                    ),
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
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/sareewomen.webp")),
                            ),
                          ),
                        ),
                        Text("Sarees", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/flatswomen.webp")),
                            ),
                          ),
                        ),
                        Text("Flats", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/jewellerwomen.jpg")),
                            ),
                          ),
                        ),
                        Text("jewellery", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/sareewomen.webp")),
                            ),
                          ),
                        ),
                        Text("Sarees", style: TextStyle(fontSize: 20)),
                      ],
                    ),

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
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/cordswomen.jpeg")),
                            ),
                          ),
                        ),
                        Text("Co-Ords", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/wedgeswomen.jpeg")),
                            ),
                          ),
                        ),
                        Text("Wedges", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/sunglasseswomen.webp")),
                            ),
                          ),
                        ),
                        Text("Sunglasses", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                            height: 150,
                            width: 130,
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                              semanticContainer: true,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/cordswomen.jpeg")),
                            ),
                          ),
                        ),
                        Text("Co-Ords", style: TextStyle(fontSize: 20)),
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
