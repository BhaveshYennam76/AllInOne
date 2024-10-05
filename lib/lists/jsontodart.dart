// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

List<Temperatures> temperaturesFromJson(String str) => List<Temperatures>.from(json.decode(str).map((x) => Temperatures.fromJson(x)));

String temperaturesToJson(List<Temperatures> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Temperatures {
  String images;
  String text;
  String images1;
  String text1;
  String text2;
  String text3;

  Temperatures({
    required this.images,
    required this.text,
    required this.images1,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    images: json["images"],
    text: json["text"],
 images1: json["images1"],
    text1: json["text1"],
    text2: json["text2"],
    text3: json["text3"],

  );

  Map<String, dynamic> toJson() => {
    "images": images,
    "images1": images1,
    "text": text,
    "text1": text1,
    "text2": text2,
    "text3": text3,
  };
}
