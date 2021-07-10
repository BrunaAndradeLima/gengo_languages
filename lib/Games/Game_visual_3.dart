import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/Games/Game_visual_4.dart';

class Game_visual_3 extends StatefulWidget {
  static String tag = 'Game-visual-3';
  @override
  State<Game_visual_3> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Game_visual_3> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  String resposta = "";
  var respostas = ["","","","","","","",""];
  int achou;

  void _Branco(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (_) {
        return SimpleDialog(
          backgroundColor: _colors[_currentColorIndex],
          title: Text('Você precisa selecionar algo!',
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
                    MaterialPageRoute(builder: (context) => Game_visual_4()),
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
                        resposta = "";
                        respostas = ["","","","","","","",""];
                        setState(() {
                          Game_visual_3();
                        });
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
                          MaterialPageRoute(builder: (context) => Game_visual_4()),
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
  String _texto = "";

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
                                          Text("Como dizer 'Oi, como vai?' em inglês?",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      )
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
                                          Text("$resposta",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              )
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            child: OutlinedButton(
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                   if(respostas[i] == "Dog "){ //há a palavra
                                     print("achou posicao $i");
                                     for(int j = i; j < 7; j++){
                                       respostas[j] = respostas[j+1];
                                      }
                                     achou = 1;
                                   }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "Dog ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 1: $resposta");
                                    Game_visual_3();
                                  });
                                  },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("Dog",
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
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                    if(respostas[i] == "Hi, "){ //há a palavra
                                      print("achou posicao $i");
                                      for(int j = i; j < 7; j++){
                                        respostas[j] = respostas[j+1];
                                      }
                                      achou = 1;
                                    }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "Hi, ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 2: $resposta");
                                    Game_visual_3();
                                  });
                                },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("Hi, ",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            child: OutlinedButton(
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                    if(respostas[i] == "mother "){ //há a palavra
                                      print("achou posicao $i");
                                      for(int j = i; j < 7; j++){
                                        respostas[j] = respostas[j+1];
                                      }
                                      achou = 1;
                                    }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "mother ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 3: $resposta");
                                    Game_visual_3();
                                  });
                                },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("mother",
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
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                    if(respostas[i] == "What "){ //há a palavra
                                      print("achou posicao $i");
                                      for(int j = i; j < 7; j++){
                                        respostas[j] = respostas[j+1];
                                      }
                                      achou = 1;
                                    }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "What ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 4: $resposta");
                                    Game_visual_3();
                                  });
                                },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("What",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            child: OutlinedButton(
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                    if(respostas[i] == "How "){ //há a palavra
                                      print("achou posicao $i");
                                      for(int j = i; j < 7; j++){
                                        respostas[j] = respostas[j+1];
                                      }
                                      achou = 1;
                                    }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "How ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 5: $resposta");
                                    Game_visual_3();
                                  });
                                },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("How",
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
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                    if(respostas[i] == "are "){ //há a palavra
                                      print("achou posicao $i");
                                      for(int j = i; j < 7; j++){
                                        respostas[j] = respostas[j+1];
                                      }
                                      achou = 1;
                                    }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "are ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 6: $resposta");
                                    Game_visual_3();
                                  });
                                },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("are",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            child: OutlinedButton(
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                    if(respostas[i] == "she "){ //há a palavra
                                      print("achou posicao $i");
                                      for(int j = i; j < 7; j++){
                                        respostas[j] = respostas[j+1];
                                      }
                                      achou = 1;
                                    }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "she ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 7: $resposta");
                                    Game_visual_3();
                                  });
                                },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("she",
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
                                onPressed: () {
                                  achou = 0;
                                  for(int i = 0; i < 8; i++){
                                    if(respostas[i] == "you? "){ //há a palavra
                                      print("achou posicao $i");
                                      for(int j = i; j < 7; j++){
                                        respostas[j] = respostas[j+1];
                                      }
                                      achou = 1;
                                    }
                                  }//se não há
                                  if(achou == 0){
                                    for(int i = 0; i < 8 && achou == 0; i++){
                                      print("entrou ");
                                      if(respostas[i] == ""){
                                        respostas[i] = "you? ";
                                        achou = 1;
                                        print("colocou posicao $i");
                                      }
                                      i = i + 1;
                                    }
                                  }
                                  setState(() {
                                    resposta=respostas[0]+respostas[1]+respostas[2]+respostas[3]+respostas[4]+respostas[5]+respostas[6]+respostas[7];
                                    print("Botão 8: $resposta");
                                    Game_visual_3();
                                  });
                                },
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                                    child: Column (
                                      children: [
                                        Text("you?",
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
                      Card(
                        child: OutlinedButton(
                            onPressed: () {
                              print("Botão Verificar");
                              if(resposta == "Hi, How are you? "){
                                setState(() {
                                  _Acertou(context);
                                  _currentColorIndex = 1;
                                });
                              }
                              else if(resposta == "")
                                setState(() {
                                  _Branco(context);
                                  _currentColorIndex = 3;
                                });
                              else{
                                setState(() {
                                  _Errou(context);
                                  _currentColorIndex = 2;
                                });
                              }
                              },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                child: Column (
                                  children: [
                                    Text("Verificar",
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