import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home_page.dart';
class LoginPage extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  var emailEditingController = TextEditingController();
  var passwordEditingController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(35, 20, 20, 0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: passwordEditingController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                        labelStyle: TextStyle(
                        fontFamily: 'Montserra',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      )
                    ),
                  ),
                ],
              )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35, 20, 20, 50),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: passwordEditingController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                        labelStyle: TextStyle(
                        fontFamily: 'Montserra',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      )
                    ),
                  ),
                ],
              )
            ),
          
            RaisedButton(
              padding: EdgeInsets.all(8.0),
              child: Text("Login"),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
              ),
              onPressed: (){
              print("clicked");
              print(emailEditingController.text.toString());
              print(passwordEditingController.text.toString());

              _auth.createUserWithEmailAndPassword(
                email: emailEditingController.text.toString(), 
                password: passwordEditingController.text.toString())
                .then((value) {
                  print("Successfully signed up! " + value.user.uid);
                  MaterialPageRoute(builder: (context) => HomeScreen());
                }).catchError((e){
                  print("Unable to sign up " + e.toString());
                });
            },
            
          ),
          RaisedButton(
            padding: EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blueAccent,
            splashColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
            ),
            child: Text("Sign Up"),
        
            onPressed: (){
              print("clicked");
              print(emailEditingController.text.toString());
              print(passwordEditingController.text.toString());

              _auth.createUserWithEmailAndPassword(
                email: emailEditingController.text.toString(), 
                password: passwordEditingController.text.toString())
                .then((value) {
                  print("Successfully logged in! " + value.user.uid);
                  MaterialPageRoute(builder: (context) => HomeScreen());
                }).catchError((e){
                  print("Unable to login " + e.toString());
                });
              },
          
            )
          ],
        )
      )
    );
  }
}