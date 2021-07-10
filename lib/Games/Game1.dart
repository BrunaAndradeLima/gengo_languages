import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Game1 extends StatefulWidget {
  @override
  State<Game1> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Game1> {
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
          Container(
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
                                      Text("Qual é o significado da palavra abaixo?",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.orange[800],
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text("Hello",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.orange[800],
                                          fontSize: 20,
                                        ),
                                      ),
                                      Icon(
                                        Icons.volume_up_rounded,
                                        color: Colors.orange[800],
                                        size: 30.0,
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          )
                      )
                  ),
                Card(
                  child: OutlinedButton(
                      style: outlineButtonStyle,
                      onPressed: () { print("Botão 1"); },
                      child: Padding (
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                          child: Column (
                            children: [
                              Text("Cachorro!",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.orange[800],
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                      )
                  ),
                ),
                Card(
                  child: OutlinedButton(
                      style: outlineButtonStyle,
                      onPressed: () { print("Botão 2"); },
                      child: Padding (
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                          child: Column (
                            children: [
                              Text("Bem-vindo!",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.orange[800],
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                      )
                  ),
                ),
                Card(
                  child: OutlinedButton(
                      style: outlineButtonStyle,
                      onPressed: () { print("Botão 3"); },
                      child: Padding (
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                          child: Column (
                            children: [
                              Text("Bom!",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.orange[800],
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                      )
                  ),
                ),
                Card(
                  child: OutlinedButton(
                      style: outlineButtonStyle,
                      onPressed: () { print("Botão 4"); },
                      child: Padding (
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                          child: Column (
                            children: [
                              Text("Olá!",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.orange[800],
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                      )
                  ),
                ),
              ],
            ),
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
