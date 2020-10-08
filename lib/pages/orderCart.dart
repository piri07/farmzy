import 'package:flutter/material.dart';

class OrderCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 20.0,),
            Container(
              height: 65.0,
              width: 65.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/wheat.jpg"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(45.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0)
                  ),
                ],
              ),
            ),
            SizedBox(width: 25.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Wheat Crop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                Text("₹ 15/kg",style: TextStyle(fontSize: 15.0,color: Colors.red),)
              ],
            ),
            Spacer(),
            IconButton(
                icon: Icon(Icons.cancel,color: Colors.grey,),
                onPressed: (){
                  print("hell");
                }
            ),
          ],
        ),
      ),
    );

  }
}
