import 'package:flutter/material.dart';
import 'homePage.dart';
import 'home_screen.dart';
import 'package:farmzy/pages/orderPage.dart';
import 'pages/profie.dart';

class BottomNavigate extends StatefulWidget {
  @override
  _BottomNavigateState createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  int currentTab =0;
  HomeScreen homeScreen;
  Orders orders;
  ProfilePage profilePage;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    homeScreen = HomeScreen();
    orders = Orders();
    profilePage = ProfilePage();
    pages = [homeScreen,orders,profilePage];
    currentPage = homeScreen;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTab,
        type: BottomNavigationBarType.fixed,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
      body: currentPage,
      appBar: currentTab==1 ?  new AppBar(
        title:  Text("Crop Cart",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ):null,
    );
  }
}
