import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/Layout.dart';

class Game_cinestesico_1 extends StatefulWidget {
  static String tag = 'Game-cinestesico-1';
  @override
  State<Game_cinestesico_1> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Game_cinestesico_1> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Scaffold(
      body:
      Column (
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left:15, top:15,right:15,bottom:15),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Column (
                                children: [
                                  Row(
                                      children:[
                                        Text("Nível 1: Cumprimentos\n",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.orange[800],
                                            fontSize: 13,
                                          ),
                                        ),
                                      ]
                                  ),
                                  Center(
                                      child:
                                      Column(
                                        children: [
                                          Text("Arraste e ligue os pares",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              )
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Draggable<int>(
                            // Data is the value this Draggable stores.
                            data: 0,
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                  child: Padding (
                                      padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
                                      child:
                                      Text("Dog",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.orange[800],
                                          fontSize: 20,
                                        ),
                                      ),
                                  )
                              ),
                            ),
                            feedback: Card(
                              color: Colors.white,
                              child: Padding (
                                padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
                                child:
                                Text("Dog",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ),
                            childWhenDragging:
                            Card(
                              color: Colors.deepOrange,
                              child: Center(
                                  child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
                                    child:
                                    Text("Dog",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.deepOrange,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ),
                          DragTarget<int>(
                            builder: (
                                BuildContext context,
                                List<dynamic> accepted,
                                List<dynamic> rejected,
                                ) {
                              return Card(
                                color: Colors.white,
                                child: Center(
                                    child: Padding (
                                      padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
                                      child:
                                      Text("Dog $acceptedData",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.orange[800],
                                          fontSize: 20,
                                        ),
                                      ),
                                    )
                                ),
                              );
                            },
                            onAccept: (int data) {
                              setState(() {
                                  acceptedData += 1;
                              }
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]
      ),
    )
    );
  }
}
final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  primary: Colors.orange[800],
  minimumSize: Size(800, 40),
  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
  //padding: EdgeInsets.symmetric(horizontal: 20),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(3)),
  ),
).copyWith(
  side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return BorderSide(
          color: Colors.orangeAccent,
          width: 1,
        );
      return null; // Defer to the widget's default.
    },
  ),
);