import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override 
  _ProfilePageState createState() => new _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  static const String routeName = '/profile';

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Profile'),
        // ),
        body: new Stack(
          children: <Widget>[
            Container(
              height: 30.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),

              )
            ),
          ],
          
        )
        
    );
  }
}