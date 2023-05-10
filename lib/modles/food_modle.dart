import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FoodModle{
  final String image;
  final String name;
  final int price;
  FoodModle({@required this.image,@required this.name,@required this.price});


  factory FoodModle.fromDocument(QueryDocumentSnapshot doc) {
    return  FoodModle
(
      image: doc["image"],
      name: doc["name"],
      price: doc["price"],
    );
  }
}