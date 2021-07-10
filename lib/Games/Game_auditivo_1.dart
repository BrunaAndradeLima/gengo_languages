import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/Games/Game_auditivo_2.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Game_auditivo_1 extends StatefulWidget {
  static String tag = 'Game-auditivo-1';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Game_auditivo_1>
    with SingleTickerProviderStateMixin{
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
                    MaterialPageRoute(builder: (context) => Game_auditivo_2()),
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
                          MaterialPageRoute(builder: (context) => Game_auditivo_2()),
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

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  AnimationController
  iconController; // make sure u have flutter sdk > 2.12.0 (null safety)

  bool isAnimated = false;
  bool showPlay = true;
  bool shopPause = false;

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    iconController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000)
    );

    audioPlayer.open(Audio('assets/sound/Hello.mp3'),autoStart: true,showNotification: true);
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
                                          Text("Escreva o que foi dito:",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              AnimateIcon();
                                            },
                                            child: Icon(
                                              Icons.volume_up_rounded,
                                              color: Colors.orange[800],
                                              size: 50.0,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(
                                                Icons.pause,
                                                color: Colors.orange[800],
                                                size: 20.0,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  AnimateIcon();
                                                },
                                                child: AnimatedIcon(
                                                  icon: AnimatedIcons.play_pause,
                                                  progress: iconController,
                                                  size: 20.0,
                                                  color: Colors.orange[800],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ],
                              )
                          )
                      ),
                      Card(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Digite sua resposta',
                          ),
                          onChanged: (text) {
                            setState(() {
                              //you can access nameController in its scope to get
                              // the value of text entered as shown below
                              _texto = text;
                              _texto = _texto.toLowerCase();
                            });
                          },
                        ),
                      ),
                      Card(
                        child: OutlinedButton(
                            onPressed: () {
                              if(_texto == "hello"){
                                setState(() {
                                  _Acertou(context);
                                  _currentColorIndex = 1;
                                });
                              }
                              else if(_texto=="" || _texto==" "){
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
    setState(() {
      audioPlayer.play();
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    //iconController.dispose();
    audioPlayer.dispose();
    super.dispose();
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
