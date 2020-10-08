import 'package:farmzy/pages/signUp.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter email or username",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding:false ,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:10.0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 60.0,
              child: Image.asset('asset/images/loog.jpg'),
            ),
            Text("Sign In",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 5.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgot Password ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.blueAccent),),
              ],
            ),
            SizedBox(height: 5.0,),
            Card(
              elevation: 5.0,
              child: Padding(padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 5.0,),
                    _buildPasswordTextField()
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
                child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account ?",style: TextStyle(color: Colors.grey)),
                SizedBox(width: 10.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(this.context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                  },
                    child: Text(
                      "Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent)
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
