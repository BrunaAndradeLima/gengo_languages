import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Layout.dart';
import 'package:gengo_languages/Pages/Cadastro.dart';

class TelaInicial extends StatefulWidget {
  static String tag = 'HomeScreen-home';
  @override
  State<TelaInicial> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TelaInicial> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                        child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                            child: Center(
                              child: Text("Seja bem-vindo(a) ao aplicativo",
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
                        child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                            child: Center(
                              child: Text("GENGO LANGUAGE",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.orange[800],
                                  fontSize: 22,
                                ),
                              ),
                            )
                        )
                    ),
                    Card(
                        child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                            child: Center(
                              child: Image.asset(
                                "assets/ifsp.jpg",
                                fit: BoxFit.contain,
                                cacheHeight: 405,
                                cacheWidth: 284,
                              ),
                            )
                        )
                    ),
                  ],
                ),
              ),
            ),
            Card(
                child: Padding (
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Center(
                      child: Text("Esse aplicativo foi desenvolvido pela aluna Bruna Andrade Lima",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.orange[800],
                          fontSize: 16,
                        ),
                      ),
                    )
                )
            ),
            Card(
              child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: ()  {
                    print("Botão");
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cadastro())
                    );
                  },
                  child: Padding (
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                    child: Text("Vamos começar?",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.orange[800],
                        fontSize: 20,
                      ),
                    ),
                  )
              ),
            ),
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
