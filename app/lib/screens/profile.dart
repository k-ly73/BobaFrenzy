import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_result.dart';
import 'package:firebase_database/firebase_database.dart';



class ProfileScreen extends StatefulWidget {
  @override 
  _ProfileScreen createState() => new _ProfileScreen();
}
class User {
  final String id;
  final String userName;

  User({this.id, this.userName});

  User.fromData(Map<String, dynamic> data) 
  : id = data['id'], userName = data["username"];


  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': userName,

    };
  }
  
}
class _ProfileScreen extends State<ProfileScreen> {
  static const String routeName = '/profile';
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
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
                
              ],
            )
          )
        ]
            
      
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
