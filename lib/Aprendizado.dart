import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Layout.dart';
import 'package:gengo_languages/TipoGame.dart';

class Carousel extends StatefulWidget {
  static String tag = 'Aprendizado';
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<Carousel> {
  int _current = 0;
  List<String> list = ["Hi = Oi", "Hello = Olá", "Good morning\n=\nBom dia", "Good afternoon\n=\nBoa tarde",
    "Good evening \n = \n Boa noite\n(Quando chega)", "Good night\n=\nBoa noite\n(Quando sai)", "See you later\n=\nTe vejo depois", "Bye = Tchau", "Welcome\n=\nBem-vindo", "Take care = Se cuida"];
  final CarouselController _controller = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Scaffold(
      body: Column(children: [
        Card(
            child: Padding (
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Text("Vamos aprender novas palavras?",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.orange[800],
                    fontSize: 20,
                  ),
                )
            )
        ),
        Card(
          child: Column(
            children: [

            ],
          ),
        ),

        Expanded(
          child: CarouselSlider(
            items: list
            .map((item) => Container(
              child: Center(
                child: Text(item.toString(),style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 30,
                ),
                )
              ),
              color: Colors.orangeAccent,
              ))
                .toList(),
            carouselController: _controller,

            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                height: 500,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        Card(
          child: OutlinedButton(
              onPressed: () {
                print("Prosseguir");
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tipo_Game())
                );
                },
              child: Padding (
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Column (
                    children: [
                      Text("Prosseguir",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.orange[800],
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
              )
          ),
        ),
      ]),
    ));
  }
}