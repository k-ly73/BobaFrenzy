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
    for(int i = 0; i < 6; i++) {
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


    return Scaffold(
      body: new Stack (
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/milktea_temp.PNG'),
                fit: BoxFit.contain
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange[50], Colors.orange[100]]
              )
            ),
            child: new Center(
              child: CustomMultiChildLayout(
                delegate: DragArea(position),
                children: 
                  layoutsBubbleTea()
              
              )
            )
          )
        ]
      )
      
    );
  }
  
  List<Widget> layoutsBubbleTea() {
    position.add(Position(180, 600));
    position.add(Position(190, 550));
    position.add(Position(170, 580));
    position.add(Position(170, 530));
    position.add(Position(190, 530));
    position.add(Position(190, 580));
    return [
      LayoutId(
        id: 't0',
        child: Draggable(               
          child: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          feedback: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
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
            radius: 10.0,
          ),
          feedback: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
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
            radius: 10.0,
          ),
          feedback: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          childWhenDragging: Container(),
          onDragEnd: (DraggableDetails d) {
            setState((){
              position[2].setPosition(d.offset.dx, d.offset.dy);
            });
          }
        )
      ),
      LayoutId(
        id: 't3',
        child: Draggable(               
          child: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          feedback: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          childWhenDragging: Container(),
          onDragEnd: (DraggableDetails d) {
            setState((){
              position[3].setPosition(d.offset.dx, d.offset.dy);
            });
          }
        )
      ),
      LayoutId(
        id: 't4',
        child: Draggable(               
          child: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          feedback: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          childWhenDragging: Container(),
          onDragEnd: (DraggableDetails d) {
            setState((){
              position[4].setPosition(d.offset.dx, d.offset.dy);
            });
          }
        )
      ),
      LayoutId(
        id: 't5',
        child: Draggable(               
          child: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          feedback: CircleAvatar(
            backgroundImage: AssetImage("lib/assets/Boba.png"),
            radius: 10.0,
          ),
          childWhenDragging: Container(),
          onDragEnd: (DraggableDetails d) {
            setState((){
              position[5].setPosition(d.offset.dx, d.offset.dy);
            });
          }
        )
      ),
      // LayoutId(
      //   id: 't6',
      //   child: Draggable(               
      //     child: CircleAvatar(
      //       backgroundImage: AssetImage("lib/assets/egg_pudding.png"),
      //       radius: 10.0,
      //     ),
      //     feedback: CircleAvatar(
      //       backgroundImage: AssetImage("lib/assets/egg_pudding.png"),
      //       radius: 10.0,
      //     ),
      //     childWhenDragging: Container(),
      //     onDragEnd: (DraggableDetails d) {
      //       setState((){
      //         position[6].setPosition(d.offset.dx, d.offset.dy);
      //       });
      //     }
      //   )
      // ),
    ];
  }
}

