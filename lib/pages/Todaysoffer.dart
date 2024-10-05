import 'package:allinone/lists/jsontodart.dart';
import 'package:flutter/material.dart';

class offers extends StatefulWidget {
  const offers({super.key});

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  List<Temperatures> offerss = [
    Temperatures(
        images: "assets/images/cola.jpeg",
        text1: "COCA COLA",
        text2: "Orignal Taste Soft Drink",
        text3: "2 L",
        text: "",
        images1: ""),
    Temperatures(
        images: "assets/images/tooyum.jpeg",
        text1: "TOO YUM!",
        text2: "Chilli Achari karare",
        text3: "70 g",
        text: "",
        images1: ""),
    Temperatures(
        images: "assets/images/mazza.jpeg",
        text1: "MAAZA",
        text2: "Mango Drink Orignal Flavor",
        text3: "1 L",
        text: "",
        images1: ""),
    Temperatures(
        images: "assets/images/pepsi.jpeg",
        text1: "PEPSI",
        text2: "Soft Drink Plastic bottle",
        text3: "2L",
        text: "",
        images1: ""),
    Temperatures(
        images: "assets/images/mario.jpeg",
        text1: "BRITANIA",
        text2: "Vita Gold Maria Biscuit",
        text3: "248 g",
        text: "",
        images1: ""),
    Temperatures(
        images: "assets/images/pillsbury.jpeg",
        text1: "PILLSBURY",
        text2: "Chocolate Pancake Mix",
        text3: "80 g",
        text: "",
        images1: ""),
    Temperatures(
        images: "assets/images/dew.jpeg",
        text1: "Mountain Dew",
        text2: "Soft Drink Plastic bottle",
        text3: "2.25 L",
        text: "",
        images1: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            centerTitle: true,
            title: Text("Today Offers")),
        body: Center(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: offerss.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  semanticContainer: true,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(offerss[index].images),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(offerss[index].text1),
                            Text(offerss[index].text2),
                            Text(offerss[index].text3),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, top: 4, bottom: 4, right: 1),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("Add",
                                          style: TextStyle(fontSize: 18)),
                                      style: ButtonStyle(
                                          side: MaterialStatePropertyAll(
                                              BorderSide(
                                                  color: Colors.blue,
                                                  style: BorderStyle.solid)))),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("+",
                                        style: TextStyle(fontSize: 20)),
                                    style: ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(
                                                color: Colors.blue,
                                                style: BorderStyle.solid))))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
