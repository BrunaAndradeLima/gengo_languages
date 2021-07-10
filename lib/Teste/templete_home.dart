import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

template(){
  return Container(
    padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
    color: Colors.orangeAccent,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
            Image.asset(
              "images/ingles.png",
              fit: BoxFit.contain,
              cacheHeight: 36,
              cacheWidth: 60,
            ),
            Icon(
              Icons.home,
              color: Colors.red,
              size: 30.0,
            ),
            Icon(
              Icons.chat,
              color: Colors.red,
              size: 30.0,
            ),
            Icon(
              Icons.account_circle_rounded,
              color: Colors.red,
              size: 30.0,
            ),
            Icon(
              Icons.settings,
              color: Colors.red,
              size: 30.0,
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 10,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.tv,
                        color: Colors.deepOrange,
                        size: 30.0,
                        semanticLabel: 'Level',
                      ),
                      Icon(
                        Icons.menu_book_rounded,
                        color: Colors.deepOrange,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.library_books_rounded,
                        color: Colors.deepOrange,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.tag_faces_sharp,
                        color: Colors.deepOrange,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.account_balance,
                        color: Colors.deepOrange,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.videogame_asset_rounded,
                        color: Colors.deepOrange,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.psychology,
                        color: Colors.deepOrange,
                        size: 30.0,
                      ),
                    ],
                  )
              ),
            ),
            Card(
              child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () { print("Botão Nível 2"); },
                  child: Column (
                    children: [
                      Text("Nível 1:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.deepOrange
                        ),
                      ),
                      Text("Cumprimentos",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Card(
              child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () { print("Botão Nível 2"); },
                  child: Column (
                    children: [
                      Text("Nível 2:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.deepOrange
                        ),
                      ),
                      Text("Números",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Card(
              child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () { print("Botão Nível 3"); },
                  child: Column (
                    children: [
                      Text("Nível 3:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.deepOrange
                        ),
                      ),
                      Text("Pronomes Pessoais",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Card(
              child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () { print("Botão Nível 3"); },
                  child: Column (
                    children: [
                      Text("Nível 4:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.deepOrange
                        ),
                      ),
                      Text("Apresentação",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Card(
              child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () { print("Botão Nível 3"); },
                  child: Column (
                    children: [
                      Text("Nível 5:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.deepOrange
                        ),
                      ),
                      Text("Verbos 1",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
              ),
            )
          ],
        ),

        //FloatingActionButton(
          //child: Icon(Icons.add_box_rounded, size: 40.0),
          //foregroundColor: Colors.deepOrange,
          //backgroundColor: Colors.orangeAccent,
          //onPressed: (){
            //print("Botão +");
          //},
        //),
      ],
    ),
  );
}

final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  primary: Colors.deepOrange,
  backgroundColor: Colors.white,
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
          color: Colors.deepOrange,
          width: 1,
        );
      return null; // Defer to the widget's default.
    },
  ),
);

