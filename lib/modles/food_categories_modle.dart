import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FoodCategoriesModle{
  final String image;
  final String name;
  final int price;
  FoodCategoriesModle({@required this.image,@required this.name,@required this.price});


  
factory FoodCategoriesModle.fromDocument(QueryDocumentSnapshot doc) {
    return  FoodCategoriesModle
(
      image: doc["image"],
      name: doc["name"],
      price: doc["price"],
    );
  }
}
