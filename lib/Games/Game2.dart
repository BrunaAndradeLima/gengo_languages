import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Game2 extends StatefulWidget {
  @override
  State<Game2> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Game2> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text('Gengo language', style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 20
        ),
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        backgroundColor: Colors.orangeAccent,
      ),
      body:
      Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(left:15, top:15,right:15,bottom:15),
            child: Card(
                child: Padding (
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Column (
                      children: [

                      ],
                    )
                )
            ),
          ),
        ],
      ),

      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Card(
              color: Colors.orangeAccent,
              child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () { print("Botão Conta"); },
                  child: Column (
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ],
                  )
              ),
            ),
            ListTile(
              leading: Icon(Icons.star_outline_rounded, color: Colors.orange[800]),
              title: Text('Minha conta', style: TextStyle(color: Colors.orange[800], fontSize: 20)),
              onTap: () {
                // This line code will close drawer programatically....
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star_outline_rounded, color: Colors.orange[800]),
              title: Text('Minha pontuação', style: TextStyle(color: Colors.orange[800], fontSize: 20)),
            ),
            ListTile(
              leading: Icon(Icons.star_outline_rounded, color: Colors.orange[800]),
              title: Text('Meus dados', style: TextStyle(color: Colors.orange[800], fontSize: 20)),
            ),
            ListTile(
              leading: Icon(Icons.star_outline_rounded, color: Colors.orange[800]),
              title: Text('Meus amigos', style: TextStyle(color: Colors.orange[800], fontSize: 20)),
            ),
          ],
        ),
      ),
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
