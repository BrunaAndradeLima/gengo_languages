import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/HomeScreen_Chat.dart';
import 'package:gengo_languages/HomeScreen_Jogos.dart';
import 'package:gengo_languages/HomeScreen_Configuracao.dart';
import 'package:gengo_languages/Aprendizado.dart';
import 'Layout.dart';

class HomeScreen_Home extends StatefulWidget {
  static String tag = 'HomeScreen-home';
  @override
  State<HomeScreen_Home> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeScreen_Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 1:{
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen_Chat()));
        break;
      }
      case 2:{
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen_Jogos()));
        break;
      }
      default:{
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen_Configuracao()));
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Scaffold(
      body:
      Column (
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () {
                              print("Botão eu");
                            },
                            child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row (
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/ingles.png",
                                    fit: BoxFit.contain,
                                    cacheHeight: 29,
                                    cacheWidth: 48,
                                  ),
                                  Text("Bruna",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                    ),
                                  ),
                                  Row(
                                      children:[
                                        Text("0",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.orange[800],
                                            fontSize: 20,
                                          ),
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.orange[800],
                                          size: 30.0,
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: ()  {
                              print("Botão nível 1");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Carousel())
                              );
                            },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Text("Nível 1:",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 13,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Text("Cumprimentos",
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
                            onPressed: () { print("Botão nível 2"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Text("Nível 2:",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 13,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Text("Números",
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
                            onPressed: () { print("Botão nível 3"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Text("Nível 3:",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 13,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Text("Pronomes Pessoais",
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
                            onPressed: () { print("Botão nível 4"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Text("Nível 4:",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 13,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Text("Apresentação",
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
                            onPressed: () { print("Botão nível 5"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Text("Nível 5:",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 13,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Text("Verbos 1",
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
                            onPressed: () { print("Botão nível 6"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Text("Nível 6:",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 13,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Text("Verbos 2",
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
                            onPressed: () { print("Botão nível 7"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Text("Nível 7:",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 13,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Text("Cores",
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
            )
          ]
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orangeAccent,
              size: 30.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.orangeAccent,
              size: 30.0,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Colors.orangeAccent,
              size: 30.0,
            ),
            label: 'Jogos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.orangeAccent,
              size: 30.0,
            ),
            label: 'Configuração',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
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
