import 'package:flutter/cupertino.dart';

class Food{
  final String Name;
  final String imagePath;
  final String title;
  final String price;
  final String Contact;


  Food({this.Name,this.imagePath,this.price,this.Contact,this.title});
}

final List<Food> foods = [
  Food(
    Name : "wheat Crop",
    imagePath: 'asset/images/wheat.jpg',
  ),
  Food(
    Name : "SugarCane",
    imagePath: 'asset/images/sugarcane.jpg',
  ),
  Food(
    Name : "Tomato",
    imagePath: 'asset/images/tomatoes.jpg',
  ),

];

widget({Image child}) {
}