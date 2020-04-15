import 'package:flutter/material.dart';

//Generates an animation to create the user's milk tea creation

class GenerateDrink extends StatefulWidget {
  static const String routeName = "/generate_drink";

  @override
  createState() => _GenerateDrink();

}

class Position {
  double _x;
  double _y;

  Position(this._x, this._y);

  setPosition(double x, double y) {
    this._x = x;
    this._y = y;
  }

  double get x {
    return this._x;
  }
  double get y {
    return this._y;
  }

}

class DragArea extends MultiChildLayoutDelegate {
  List<Position> p = List<Position>();

  DragArea(this.p);

  @override
  void performLayout(Size size) {
    for(int i = 0; i < 3; i++) {
      layoutChild('t' + i.toString(), BoxConstraints.loose(size));
      positionChild('t' + i.toString(), Offset(p[i].x, p[i].y));
    }
  }

  @override 
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate){
    return false;
  }
}

class _GenerateDrink extends State<GenerateDrink> {
  List<Position> position = List<Position>();

  @override 
  Widget build(BuildContext context){
    position.add(Position(40, 400));
    position.add(Position(34, 350));
    position.add(Position(60, 400));

    return Scaffold(
      body: new Container(
        child: new Center(
          child: CustomMultiChildLayout(
            delegate: DragArea(position),
            children: <Widget>[
              LayoutId(
                id: 't0',
                child: Draggable(               
                  child: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/Boba.png"),
                  ),
                  feedback: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/Boba.png"),
                  ),
                  childWhenDragging: Container(),
                  onDragEnd: (DraggableDetails d) {
                    setState((){
                      position[0].setPosition(d.offset.dx, d.offset.dy);
                    });
                  }
                )
              ),
              LayoutId(
                id: 't1',
                child: Draggable(               
                  child: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/Boba.png"),
                  ),
                  feedback: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/Boba.png"),
                  ),
                  childWhenDragging: Container(),
                  onDragEnd: (DraggableDetails d) {
                    setState((){
                      position[1].setPosition(d.offset.dx, d.offset.dy);
                    });
                  }
                )
              ),
              LayoutId(
                id: 't2',
                child: Draggable(               
                  child: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/Boba.png"),
                  ),
                  feedback: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/Boba.png"),
                  ),
                  childWhenDragging: Container(),
                  onDragEnd: (DraggableDetails d) {
                    setState((){
                      position[2].setPosition(d.offset.dx, d.offset.dy);
                    });
                  }
                )
              )
            ],
          )
        )
      )
    );
  }
}