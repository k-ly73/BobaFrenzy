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
            TextField(
              controller: emailEditingController,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),

            TextField(
              controller: passwordEditingController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            FlatButton(
              child: Text("Sign Up"),
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
            FlatButton(
              child: Text("Login"),
          
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