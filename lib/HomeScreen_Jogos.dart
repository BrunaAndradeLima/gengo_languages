import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/HomeScreen_Chat.dart';
import 'package:gengo_languages/HomeScreen_Home.dart';
import 'package:gengo_languages/HomeScreen_Configuracao.dart';
import 'Layout.dart';

class HomeScreen_Jogos extends StatefulWidget {
  static String tag = 'HomeScreen-jogos';
  @override
  State<HomeScreen_Jogos> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeScreen_Jogos> {
  int _selectedIndex = 2;
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
                      Text(
                        'Jogos',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.orange[800],
                            fontSize: 30
                        ),
                      ),
                      Card(
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.music_note,
                                    color: Colors.orange[800],
                                    size: 30.0,
                                  ),
                                  Icon(
                                    Icons.gamepad_outlined,
                                    color: Colors.orange[800],
                                    size: 30.0,
                                  ),
                                ],
                              )
                          )
                      ),
                      Card(
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.book_outlined,
                                    color: Colors.orange[800],
                                    size: 30.0,
                                  ),
                                  Icon(
                                    Icons.g_translate,
                                    color: Colors.orange[800],
                                    size: 30.0,
                                  ),
                                ],
                              )
                          )
                      ),
                      Card(
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.ondemand_video_outlined,
                                    color: Colors.orange[800],
                                    size: 30.0,
                                  ),
                                  Icon(
                                    Icons.face_retouching_natural,
                                    color: Colors.orange[800],
                                    size: 30.0,
                                  ),
                                ],
                              )
                          )
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
