import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/Games/Game_auditivo_5.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Game_auditivo_4 extends StatefulWidget {
  static String tag = 'Game-auditivo-4';
  @override
  State<Game_auditivo_4> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Game_auditivo_4>
    with SingleTickerProviderStateMixin {

  int _Audio = 0;
  int resposta = 0;
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
                    MaterialPageRoute(builder: (context) => Game_auditivo_5()),
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
                        print('You have selected the option 1');
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
                        print('You have selected the option 2');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Game_auditivo_5()),
                        );
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

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  AnimationController
  iconController; // make sure u have flutter sdk > 2.12.0 (null safety)

  bool isAnimated = false;
  bool showPlay = true;
  bool shopPause = false;

  AssetsAudioPlayer audioPlayer1 = AssetsAudioPlayer();
  AssetsAudioPlayer audioPlayer2 = AssetsAudioPlayer();
  AssetsAudioPlayer audioPlayer3 = AssetsAudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    iconController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000)
    );

    audioPlayer1.open(Audio('assets/sound/Hi.mp3') ,autoStart: false,showNotification: true);
    audioPlayer2.open(Audio('assets/sound/Hello.mp3') ,autoStart: false,showNotification: true);
    audioPlayer2.open(Audio('assets/sound/welcome.mp3') ,autoStart: false,showNotification: true);
  }

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
                                          Text("Em qual audio a palavra abaixo está presente?",
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
                              padding: const EdgeInsets.fromLTRB(90, 5, 90, 5),
                              child: Column (
                                children: [
                                  Text("Hello",
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
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () {
                              print("Botão 1");
                              resposta = 1;
                              },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        resposta = 1;
                                        _Audio = 1;
                                        AnimateIcon();
                                      },
                                      child: Icon(
                                        Icons.volume_up_rounded,
                                        color: Colors.orange[800],
                                        size: 50.0,
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
                            onPressed: () {
                              print("Botão 2");
                              resposta = 2;
                              },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        resposta = 2;
                                        _Audio = 2;
                                        AnimateIcon();
                                      },
                                      child: Icon(
                                        Icons.volume_up_rounded,
                                        color: Colors.orange[800],
                                        size: 50.0,
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
                            onPressed: () { print("Botão 3");
                            resposta = 3;
                            },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        resposta = 3;
                                        _Audio = 3;
                                        AnimateIcon();
                                      },
                                      child: Icon(
                                        Icons.volume_up_rounded,
                                        color: Colors.orange[800],
                                        size: 50.0,
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
                              print("Botão Verificar");
                              if (resposta == 2){
                                setState(() {
                                  _Acertou(context);
                                  _currentColorIndex = 1;
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
  void AnimateIcon() {
    switch (_Audio){
      case 1:{
        setState(() {
          audioPlayer1.play();
        });
        break;
      }
      case 2:{
        setState(() {
          audioPlayer2.play();
        });
        break;
      }
      default:{
        setState(() {
          audioPlayer3.play();
        });
        break;
      }
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    switch (_Audio){
      case 1:{
        audioPlayer1.dispose();
        super.dispose();
        break;
      }
      case 2:{
        audioPlayer2.dispose();
        super.dispose();
        break;
      }
      default:{
        audioPlayer3.dispose();
        super.dispose();
        break;
      }
    }
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
