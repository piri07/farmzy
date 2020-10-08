import 'package:farmzy/adminPages/add_items.dart';
import 'package:farmzy/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'homePage.dart';

void main()=>runApp(new myApp());
final bool DebugShowChecker=false;

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Farmzy",
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: AddCrops(),
    );
  }
}




