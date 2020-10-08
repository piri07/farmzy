import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,

      child:  TextFormField(
        obscureText: true,
        autofocus: false,
        decoration: InputDecoration(
            icon: new Icon(Icons.search, color: Color(0xff224597)),
            hintText: 'Search for Crops',
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.white, width: 3.0))
        ),
      ),
    );
  }
}
