import 'package:flutter/material.dart';
import 'drawer.dart';
import 'auth_result.dart';


class HomeScreen extends StatelessWidget {
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  HomeScreen({this.auth, this.onSignedOut});

  void _signedOut() async {
    try {
      await auth.signOut();
      onSignedOut();
    }
    catch(e) {
      print(e);
    }
  }


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text("Home"),
        actions: <Widget>[
          new FlatButton(
            child: new Text(
              'Logout',
              style: new TextStyle(
                color: Colors.white,
                
              ),
            ),
            onPressed: _signedOut
          )
        ],
      ),
      drawer: MenuDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.orange[50], Colors.orange[100]]
                ),
              )
            ),
            
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome to Boba Frenzy!',
                style: TextStyle(
                  fontSize: 30, 
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.local_drink,
                )    , 
              ),
            ],
          )
        ],
      )
    );
  }
}