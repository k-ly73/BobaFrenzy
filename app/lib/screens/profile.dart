import 'package:flutter/material.dart';
import 'login.dart';



class ProfilePage extends StatefulWidget {



  @override 
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const String routeName = '/profile';
  LoginPage user = new LoginPage(); 
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      
      appBar: AppBar(
        title: Text('$user}'),
      ),
      body: SafeArea(   
        child: Column(     
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "lib/assets/images/",
              ),
                
            ),
            Text(
              "Profile Name",
              style: TextStyle(
                fontSize: 40,
              )
            ),
            Text(
              "User Name",
              style: TextStyle(
                fontSize: 40,
              )
            ),
            Text(
              "Something",
              style: TextStyle(
                fontSize: 40,
              )
            ),
            SizedBox(
              child: Divider(
                color: Colors.orange[100],
              )
            )
          ]
        )
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
