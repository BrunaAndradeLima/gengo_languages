import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/HomeScreen_Chat.dart';
import 'package:gengo_languages/HomeScreen_Home.dart';
import 'package:gengo_languages/HomeScreen_Jogos.dart';
import 'Layout.dart';

class HomeScreen_Configuracao extends StatefulWidget {
  static String tag = 'HomeScreen-configuracao';
  @override
  State<HomeScreen_Configuracao> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeScreen_Configuracao> {
  int _selectedIndex = 3;
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
      case 1:{
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen_Chat()));
        break;
      }
      default:{
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen_Jogos()));
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
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: OutlinedButton(
                                style: outlineButtonStyle,
                                onPressed: ()  {
                                  print("Botão nível 1");
                                },
                                child: Padding (
                                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  child: Text("Configuração",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Card(
                            child: OutlinedButton(
                                style: outlineButtonStyle,
                                onPressed: ()  {
                                  print("Minha conta");
                                },
                                child: Padding (
                                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  child: Text("Minha conta",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Card(
                            child: OutlinedButton(
                                style: outlineButtonStyle,
                                onPressed: ()  {
                                  print("Minha pontuação");
                                },
                                child: Padding (
                                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  child: Text("Minha pontuação",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Card(
                            child: OutlinedButton(
                                style: outlineButtonStyle,
                                onPressed: ()  {
                                  print("Meus dados");
                                },
                                child: Padding (
                                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  child: Text("Meus dados",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Card(
                            child: OutlinedButton(
                                style: outlineButtonStyle,
                                onPressed: ()  {
                                  print("Meus amigos");
                                },
                                child: Padding (
                                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  child: Text("Meus amigos",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Card(
                            child: OutlinedButton(
                                style: outlineButtonStyle,
                                onPressed: ()  {
                                  print("Ajuda");
                                },
                                child: Padding (
                                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                  child: Text("Ajuda",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
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
