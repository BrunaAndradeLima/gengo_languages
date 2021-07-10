import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/HomeScreen_Home.dart';
import 'package:gengo_languages/HomeScreen_Jogos.dart';
import 'package:gengo_languages/HomeScreen_Configuracao.dart';
import 'Layout.dart';

class HomeScreen_Chat extends StatefulWidget {
  static String tag = 'HomeScreen-chat';
  @override
  State<HomeScreen_Chat> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeScreen_Chat> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:{
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen_Home()));
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
                    children: [
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () { print("Botão eu"); },
                            child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row (
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      children:[
                                        Icon(
                                          Icons.account_circle,
                                          color: Colors.orange[800],
                                          size: 30.0,
                                        ),
                                        Text(" Chats",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.orange[800],
                                            fontSize: 20,
                                          ),
                                        ),
                                      ]
                                  ),
                                  Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.orange[800],
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () { print("Botão eu"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Icon(
                                            Icons.search,
                                            color: Colors.grey[350],
                                            size: 15,
                                          ),
                                          Text("  Pesquise um nome",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.grey[350],
                                              fontSize: 15,
                                            ),
                                          ),
                                        ]
                                    ),
                                  ],
                                )
                            )
                        ),
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () { print("Botão - Fulano"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Icon(
                                            Icons.account_circle,
                                            color: Colors.orange[800],
                                            size: 30,
                                          ),
                                          Text(" Fulano",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Row(
                                      children: [
                                        Text("You: Hey!",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.orange[800],
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    )

                                  ],
                                )
                            )
                        ),
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () { print("Botão - Ciclano"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Icon(
                                            Icons.account_circle,
                                            color: Colors.orange[800],
                                            size: 30,
                                          ),
                                          Text(" Ciclano",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Row(
                                      children: [
                                        Text("Ciclano: I totally agree!",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.orange[800],
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    )

                                  ],
                                )
                            )
                        ),
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () { print("Botão - Joseano"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Icon(
                                            Icons.account_circle,
                                            color: Colors.orange[800],
                                            size: 30,
                                          ),
                                          Text(" Joseano",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Row(
                                      children: [
                                        Text("You: Don't worry!",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.orange[800],
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                            )
                        ),
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () { print("Botão - Beutrano"); },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Column (
                                  children: [
                                    Row(
                                        children:[
                                          Icon(
                                            Icons.account_circle,
                                            color: Colors.orange[800],
                                            size: 30,
                                          ),
                                          Text(" Beutrano",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),
                                        ]
                                    ),
                                    Row(
                                      children: [
                                        Text("Beutrano: You can do it",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.orange[800],
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    )

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
