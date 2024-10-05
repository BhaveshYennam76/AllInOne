import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchcontrol = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      title: Text("Search",style: TextStyle(fontSize: 30)),
        actions: [
          Icon(Icons.mic,size: 30),
          Padding(
            padding: const EdgeInsets.only(left: 11.0,right: 11),
            child: Icon(Icons.camera_alt_outlined,size: 30),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(

              controller: _searchcontrol,
              decoration: InputDecoration(hintText: "Search Here",prefixIcon: Icon(Icons.search),border: OutlineInputBorder()),

            ),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
    shrinkWrap: true,
            itemCount: 5,itemExtent: 50,

            itemBuilder: (context, index) {
            return Container(
              color:Colors.white,
              child: Column(

              ),
            );
          },)
        ],
      )
    );
  }
}
