import 'package:flutter/material.dart';
import 'auth_result.dart';
import 'root.dart';
import 'home_page.dart';

class IntroScreen extends StatefulWidget {
  createState() => _IntroScreen();
}
class _IntroScreen extends State<IntroScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("lib/assets/bubble_tea2.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ]
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: new Column(
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
                            color: Colors.white
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
                            color: Colors.white
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
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.yellow,
                                  ],
                                ),
                                
                                borderRadius: new BorderRadius.circular(10),
                              ),
                              child: new Text(
                                "Start",
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

                ],
              )
            )
          ) 
        ),
      ),
    );
  }
}