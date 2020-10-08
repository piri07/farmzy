import 'package:farmzy/bought_crops.dart';
import 'package:farmzy/searchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:farmzy/ListofFood.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = foods;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        padding: const EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0),
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Hii Welcome",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold)),
                  Text("to Farmzy!",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          SearchBar(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequently Bought",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
              GestureDetector(
                onTap: (){
                  print("Hellow");
                },
                child: Text("View All",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red),),

              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _foods.map(_buildCropItems).toList(),
          )
        ],
      ),
    );
  }
  Widget _buildCropItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtCrops(
        Name: food.Name,
        imagePath: food.imagePath,
      ),
    );
  }
}
