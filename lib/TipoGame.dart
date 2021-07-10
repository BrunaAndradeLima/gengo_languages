import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/Games/Game_auditivo_1.dart';
import 'package:gengo_languages/Games/Game_visual_1.dart';
import 'package:gengo_languages/Games/Game_cinestesico_1.dart';
import 'Layout.dart';

class Tipo_Game extends StatefulWidget {
  static String tag = 'HomeScreen-home';
  @override
  State<Tipo_Game> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Tipo_Game> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Scaffold(
      body:
      Column (
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Padding (
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Center(
                          child: Text("Escolha o método com o qual você gostaria de aprender:",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.orange[800],
                              fontSize: 20,
                            ),
                          ),
                        )
                      )
                    ),
                    Card(
                      child: OutlinedButton(
                          style: outlineButtonStyle,
                          onPressed: ()  {
                            print("Botão nível 1");
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Game_auditivo_1())
                            );
                          },
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                              child: Text("Auditivo",
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
                            print("Botão nível 1");
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Game_cinestesico_1())
                            );
                          },
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text("Cinestésico",
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
                            print("Botão nível 1");
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Game_visual_1())
                            );
                          },
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text("Visual",
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
                            print("Botão nível 1");
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Game_auditivo_1())
                            );
                          },
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text("De forma aleatótia",
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
