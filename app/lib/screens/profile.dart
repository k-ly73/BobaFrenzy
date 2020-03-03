import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override 
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const String routeName = '/profile';

  @override 
  Size get preferredSize => Size(double.infinity, 250);
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: new Stack(
          children: <Widget>[
            ClipPath (
              clipper: getClipper(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange[50], 
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton()
                      ]
                    )
                  ],
                )
              )
            ),  
          ],
          
        )
        
    );
  }
}

class getClipper extends CustomClipper<Path>{
  @override 
  Path getClip(Size size) {

    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();

    return path;
  } 
  
  @override 
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
