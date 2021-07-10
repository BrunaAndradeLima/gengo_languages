import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/Games/Game_auditivo_4.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

class Game_auditivo_3 extends StatefulWidget {
  static String tag = 'Game-auditivo-3';
  @override
  State<Game_auditivo_3> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Game_auditivo_3> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset('assets/sound/Hi.mp4',);

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    super.dispose();
  }

  void _Acertou(BuildContext ctx) {
    setState(() {
      _controller.pause();
    });
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
                    MaterialPageRoute(builder: (context) => Game_auditivo_4()),
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
    setState(() {
      _controller.pause();
    });
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
                          MaterialPageRoute(builder: (context) => Game_auditivo_4()),
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
                                          Text("O que esse personagem disse?",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.orange[800],
                                              fontSize: 20,
                                            ),
                                          ),

                                          FutureBuilder(
                                            future: _initializeVideoPlayerFuture,
                                            builder: (context, snapshot) {
                                              if (snapshot.connectionState == ConnectionState.done) {
                                                // If the VideoPlayerController has finished initialization, use
                                                // the data it provides to limit the aspect ratio of the video.
                                                return AspectRatio(
                                                  aspectRatio: _controller.value.aspectRatio,
                                                  // Use the VideoPlayer widget to display the video.
                                                  child: VideoPlayer(_controller),
                                                );
                                              } else {
                                                // If the VideoPlayerController is still initializing, show a
                                                // loading spinner.
                                                return Center(child: CircularProgressIndicator());
                                              }
                                            },
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                icon: Icon(
                                                  Icons.pause,
                                                  color: Colors.orange[800],
                                                  size: 20.0,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _controller.pause();
                                                  });
                                                },
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.play_arrow_rounded,
                                                  color: Colors.orange[800],
                                                  size: 20.0,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _controller.play();
                                                  });
                                                },
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
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () {
                              print("Botão 1");
                              setState(() {
                                _Errou(context);
                                _currentColorIndex = 2;
                              });
                            },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Text("House",
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
                            onPressed: () {
                              print("Botão 2");
                              setState(() {
                                _Errou(context);
                                _currentColorIndex = 2;
                              });
                            },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Text("Bye",
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
                            onPressed: () {
                              print("Botão 3");
                              setState(() {
                                _Errou(context);
                                _currentColorIndex = 2;
                              });
                            },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
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
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () {
                              print("Botão 4");
                              setState(() {
                                _Acertou(context);
                                _currentColorIndex = 1;
                              });
                            },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Column (
                                  children: [
                                    Text("Hi",
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
