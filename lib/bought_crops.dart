import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BoughtCrops extends StatefulWidget {
  final String Name;
  final String imagePath;
  BoughtCrops({this.Name,this.imagePath});
  @override
  _BoughtCropsState createState() => _BoughtCropsState();
}

class _BoughtCropsState extends State<BoughtCrops> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(widget.imagePath,fit: BoxFit.fitWidth,)
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 340.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    Colors.black,
                    Colors.black38,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 10.0,
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: <Widget>[
                    Text(widget.Name,style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
          ),
        ],
        
      ),
    );
  }
}
