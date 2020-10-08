import 'package:flutter/material.dart';

class AddCrops extends StatefulWidget {
  @override
  _AddCropsState createState() => _AddCropsState();
}

class _AddCropsState extends State<AddCrops> {
  String Name='';
  String imagePath='';
  String title='';
  String price='';
  String Contact='';

  GlobalKey<FormState> _CropItemKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 60.0,horizontal: 15.0),
          height: MediaQuery.of(context).size.height,
          //for taking full height and width of screen
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _CropItemKey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 25.0),
                  width:150,
                  height:150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("asset/images/noImage.jpg")),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                _buildTextFormField("Name"),
                _buildTextFormField("Crop Name"),
                _buildTextFormField("Contact"),
                _buildTextFormField("Price"),
                SizedBox(height: 20.0),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      print("$title");
                      if(_CropItemKey.currentState.validate()){
                        _CropItemKey.currentState.save();

                      }
                    },
                    child: Center(
                      child: Text("Add Item",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildTextFormField(String hint,){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "$hint",
    ),
    keyboardType: hint == "Price"|| hint== "Contact"?TextInputType.number:TextInputType.text,
    validator: (String value) {
      if (value.isEmpty && hint == "Crop Name") {
        return "The Crop Name is required";
      }
      if (value.isEmpty && hint == "Name") {
        return "The Name is required";
      }

      if (value.isEmpty && hint == "Contact") {
        return "Contact is required";
      }

      if (value.isEmpty && hint == "Price") {
        return "Price is required";
      }
    },
    onChanged: (String value){
      if(hint == "Name"){
        var Name  = value;
      }
      if(hint == "Crop Name"){
        var title  = value;
      }
      if(hint == "Contact"){
        var Contact  = value;
      }
      if(hint == "Price"){
        var price  = value;
      }
    },
  );
}
