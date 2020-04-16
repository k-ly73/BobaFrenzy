import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_result.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  @override 
  _ProfileScreen createState() => new _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  
  static const String routeName = '/profile';
  String userName;
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
              color: Color(0xff622F74),
                gradient: LinearGradient(
                  colors: [new Color(0xFF795548), new Color(0xFFA1887F)],
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0,-1.0),
                 
                ),
              ),
            ),  
            clipper: GetClipper()
          ),
          Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 5,
            left: MediaQuery.of(context).size.width / 14,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/test_profile.png"),
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new TextField(
                            decoration: new InputDecoration.collapsed(
                              hintText: 'Edit Name',
                            ),
                            onChanged: (String str) {
                              setState((){
                              userName = str;
                              });
                            }
                          )
                        )
                      ],
                    )
                  ) 
                )
              ],
            )            
          ),
        ],

      )
    );
  }
}

class GetClipper extends CustomClipper<Path>{
  @override 

  Path getClip(Size size) {

    var path = new Path();

    path.lineTo(0, size.height / 1.9);
    path.lineTo(size.width + 125, 0);
    path.close();

    return path;
  } 
  
  @override 
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
