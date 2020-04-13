import 'package:flutter/material.dart';
import 'auth_result.dart';
import 'root.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("bubble_tea.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: new Text(
                      'Boba',
                      style: new TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  )
                ],
              ),
                    new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 200),
                    child: new Text(
                      'Frenzy',
                      style: new TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  )
                ],
              ),
              new Row (
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                      child: GestureDetector(
                        onTap : () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => new RootPage(auth: new AuthResult()),
                            )
                          );
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          width: 60.0,
                          decoration: new BoxDecoration(
                            color: Colors.greenAccent[400],
                            borderRadius: new BorderRadius.circular(10),
                          ),
                          child: new Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )
                          ),
                        ),
                      ),
                    )
                   
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                      child: GestureDetector(
                        onTap : () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            )
                          );
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          width: 60.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            borderRadius: new BorderRadius.circular(10),
                          ),
                          child: new Text(
                            "Explore",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )
                          ),
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