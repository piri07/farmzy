import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmzy/pages/SignIn.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 55.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(" Profile",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 19.0,),
              Row(
                children: <Widget>[
                  SizedBox(width: 20.0,),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                          image: AssetImage("asset/images/dp.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 40.0,),
                  Column(
                    children: <Widget>[
                      Text("Farmer101",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
                      Text("+91-9988774466",style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                      SizedBox(height: 20.0,),
                      Container(
                        height: 30.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          )
                        ),
                        child: Center(child: Text("Edit Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                  "  Account",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 8.0),
                      ListTile(
                        leading: Icon(Icons.location_on,color: Colors.blueAccent,),
                        title: Text("Set Location"),
                      ),
                      Divider(height: 5.0,color: Colors.grey,indent: 10.0,),
                      ListTile(
                        leading: Icon(Icons.language,color: Colors.blueAccent,),
                        title: Text("Languages"),
                      ),
                      Divider(height: 5.0,color: Colors.grey,indent: 10.0,),
                      ListTile(
                        leading: Icon(Icons.save,color: Colors.blueAccent,),
                        title: Text("Saved Contacts"),
                      ),
                      Divider(height: 5.0,color: Colors.grey,indent: 10.0,),
                      ListTile(
                        leading: Icon(Icons.remove_circle,color: Colors.blueAccent,),
                        title: Text("Delete Account"),
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 25.0,),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.of(this.context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignIn()));
                      },
                      child: Text("Sign Out",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
