import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Layout.dart';

class HomeScreen extends StatefulWidget {
  static String tag = 'HomeScreen-page';
  @override
  State<HomeScreen> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Column(
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
        ],
    ),
    Column(
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
    Column(
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
        )
      ],
    ),
    Column(
      children: [
        Text(
          'Configuração',
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.orange[800],
              fontSize: 30,
          ),
        ),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                    _widgetOptions.elementAt(_selectedIndex)
                  ],
                )
            ),
          )
        ]
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          print("Você apertou o botão +");
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

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
