import 'package:farmzy/pages/SignIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
      ),
    );
  }
  Widget _buildUsernameTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Username",
      ),
    );
  }
  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Enter your password"
      ),
      obscureText: true,
    );
  }
  Widget _buildRePasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Renter your password"
      ),
      obscureText: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding:false ,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:10.0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign Up",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 30.0,),
            Card(
              elevation: 5.0,
              child: Padding(padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 8.0,),
                    _buildUsernameTextField(),
                    SizedBox(height: 8.0,),
                    _buildPasswordTextField(),
                    SizedBox(height: 8.0,),
                    _buildRePasswordTextField()
                  ],
                ),
              ),
            ),
            SizedBox(height:10.0,),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                SizedBox(width: 10.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(this.context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignIn()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
