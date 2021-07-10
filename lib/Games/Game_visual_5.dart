import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/HomeScreen_Home2.dart';

class Game_visual_5 extends StatefulWidget {
  static String tag = 'Game-visual-5';
  @override
  State<Game_visual_5> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Game_visual_5> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _Branco(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (_) {
        return SimpleDialog(
          backgroundColor: _colors[_currentColorIndex],
          title: Text('Você precisa digitar algo!',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          children: [
            Card(
              child: SimpleDialogOption(
                child: Text('Okay',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.orangeAccent,
                    fontSize: 15,
                  ),),
                onPressed: (){
                  // Do something
                  print('You have selected the option 1');
                  Navigator.of(ctx).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }
  void _Acertou(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (_) {
        return SimpleDialog(
          backgroundColor: _colors[_currentColorIndex],
          title: Text('Você acertou!',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          children: [
            Card(
              child: SimpleDialogOption(
                child: Text('Clique aqui para continuar',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.green,
                    fontSize: 15,
                  ),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen_Home2()),
                  );
                  print('You have selected the option 1');
                },
              ),
            ),
          ],
        );
      },
    );
  }
  void _Errou(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (_) {
        return SimpleDialog(
          backgroundColor: _colors[_currentColorIndex],
          title: Text('Você Errou!',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          children: [
            Card(
                child: Column(
                  children: [
                    SimpleDialogOption(
                      child: Text('Clique aqui para revisar',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.red,
                          fontSize: 15,
                        ),),
                      onPressed: (){
                        // Do something
                        print('You have selected the option 1');
                        Navigator.of(ctx).pop();
                      },
                    ),
                    SimpleDialogOption(
                      child: Text('Clique aqui para continuar',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.red,
                          fontSize: 15,
                        ),),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen_Home2()),
                        );
                        print('You have selected the option 2');
                      },
                    ),
                  ],
                )
            ),
          ],
        );
      },
    );
  }

  bool _hasBeenPressed = false;
  List<Color> _colors = <Color>[
    Colors.white,
    Colors.green,
    Colors.red,
    Colors.orange[800]
  ];
  int _currentColorIndex = 0;
  String _texto1 = "";
  String _texto2 = "";

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
        backgroundColor: Colors.orangeAccent,
      ),
      body:
      Column (
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left:15, top:15,right:15,bottom:15),
                  child: Column(
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
                                  Text("Complete as frases",
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
                      Card(
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Column (
                                children: [
                                  Center(
                                      child:
                                      Column(
                                        children: [
                                          Card(
                                              color: Colors.orange[300],
                                              child: Padding (
                                                padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                                                child: Text("She ____ beautiful",
                                                  style: TextStyle(
                                                    decoration: TextDecoration.none,
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              )
                                          ),
                                          TextFormField(
                                            style: TextStyle(
                                              color: Colors.deepOrange,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: 'Escreva sua resposta',
                                            ),
                                            onChanged: (text) {
                                              setState(() {
                                                //you can access nameController in its scope to get
                                                // the value of text entered as shown below
                                                _texto1 = text;
                                                _texto1 = _texto1.toLowerCase();
                                              });
                                            },
                                          ),
                                        Card(
                                              color: Colors.orange[300],
                                              child: Padding (
                                                padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                                                child: Text("You _____ beautiful",
                                                  style: TextStyle(
                                                    decoration: TextDecoration.none,
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              )
                                          ),
                                          TextFormField(
                                            style: TextStyle(
                                              color: Colors.deepOrange,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: 'Escreva sua resposta',
                                            ),
                                            onChanged: (text) {
                                              setState(() {
                                                //you can access nameController in its scope to get
                                                // the value of text entered as shown below
                                                _texto2 = text;
                                                _texto2 = _texto2.toLowerCase();
                                              });
                                            },
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
                            onPressed: () {
                              print("Botão Verificar");
                              if(_texto1 == "is" && _texto2 =="are"){
                                setState(() {
                                  _Acertou(context);
                                  _currentColorIndex = 1;
                                });
                              }
                              else if(_texto1=="" || _texto1==" " || _texto2=="" || _texto2==" "){
                                setState(() {
                                  _Branco(context);
                                  _currentColorIndex = 3;
                                });
                              }
                              else{
                                setState(() {
                                  _Errou(context);
                                  _currentColorIndex = 2;
                                });
                              }
                              },
                            child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              child: Text("Verificar",
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
                ),
              ),
            )
          ]
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
