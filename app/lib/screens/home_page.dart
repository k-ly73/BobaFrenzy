import 'package:flutter/material.dart';
import 'drawer.dart';
import 'auth_result.dart';


class HomeScreen extends StatelessWidget {
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  HomeScreen({this.auth, this.onSignedOut});

  static const String routeName = '/home_screen';

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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.orange[50], Colors.orange[200]],

                ),
              )
            ),
            
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                'Welcome',
                  style: TextStyle(
                    fontSize: 30, 
                  ),
                ),
              ),
             
              new CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.local_drink,
                ), 
              ),
              new Container(
                padding: EdgeInsets.only(top: 100, bottom: 50),
                child: new Text(
                  'Putting creativity to the test for tea lovers',
                  style: TextStyle(
                    fontFamily: 'Cursive',
                    fontSize: 20
                  )
                ),
              ),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.brown[100],
                child: new Text(
                  'Create a drink'
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/create_drink");
                }
              ),
            ],
          )
        ],
      )
    );
  }
}