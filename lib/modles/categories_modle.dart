import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

//the reason save to modles   is can use in another dart

class CategoriesModle {
  final String image;
  final String name;
  CategoriesModle({@required this.image, @required this.name});



factory CategoriesModle.fromDocument(QueryDocumentSnapshot doc) {
    return CategoriesModle(
      image: doc["image"],
      name: doc["name"],
 
    );
  }
}
