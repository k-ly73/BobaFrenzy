import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IntroScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.orange[50], Colors.orange[100]]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.local_drink,
                ), 
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      'Boba Frenzy',
                      style: new TextStyle(
                        fontSize: 30,
                      )
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        child: new Text(
                          "Log in to your Account",
                          style: TextStyle(
                            color: Colors.white,
                          )
                        ),
                        
                      )
                    )
                   
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        child: new Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                          )
                        ),
                      ),
                    )
                  )  
                ],
              )

            ],
          )
        ),
      ),
    );
  }
}