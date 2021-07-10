import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gengo_languages/Games/Game_auditivo_1.dart';
import 'package:gengo_languages/Games/Game_auditivo_2.dart';
import 'package:gengo_languages/Games/Game_auditivo_3.dart';
import 'package:gengo_languages/Games/Game_auditivo_4.dart';
import 'package:gengo_languages/Games/Game_auditivo_5.dart';
import 'package:gengo_languages/Games/Game_cinestesico_1.dart';
import 'package:gengo_languages/Games/Game_cinestesico_2.dart';
import 'package:gengo_languages/Games/Game_cinestesico_3.dart'; // terminar
import 'package:gengo_languages/Games/Game_visual_1.dart';
import 'package:gengo_languages/Games/Game_visual_2.dart';
import 'package:gengo_languages/Games/Game_visual_3.dart';
import 'package:gengo_languages/Games/Game_visual_4.dart'; // colocar A, B, C, D na frente
import 'package:gengo_languages/Games/Game_visual_5.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gengo_languages/HomeScreen_Home.dart';
import 'layout.dart';
import 'package:gengo_languages/Aprendizado.dart';
import 'package:gengo_languages/TelaInicial.dart';
import 'package:gengo_languages/Pages/Cadastro.dart';
import 'package:gengo_languages/Pages/Teste.dart';

void main() => runApp(GengoLanguage());

class GengoLanguage extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    TelaInicial.tag: (context) => TelaInicial(),
    Cadastro.tag: (context) => Cadastro(),
    HomeScreen_Home.tag: (context) => HomeScreen_Home(),
    Game_auditivo_1.tag: (context) => Game_auditivo_1(),
    Game_auditivo_2.tag: (context) => Game_auditivo_2(),
    Game_auditivo_3.tag: (context) => Game_auditivo_3(),
    Game_auditivo_4.tag: (context) => Game_auditivo_4(),
    Game_auditivo_5.tag: (context) => Game_auditivo_5(),
    Game_visual_1.tag: (context) => Game_visual_1(),
    Game_visual_2.tag: (context) => Game_visual_2(),
    Game_visual_3.tag: (context) => Game_visual_3(),
    Game_visual_4.tag: (context) => Game_visual_4(),
    Game_visual_5.tag: (context) => Game_visual_5(),
    Game_cinestesico_1.tag: (context) => Game_cinestesico_1(),
    Game_cinestesico_2.tag: (context) => Game_cinestesico_2(),
    Game_cinestesico_3.tag: (context) => Game_cinestesico_3(),

    Carousel.tag: (context) => Carousel(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gengo Language',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Layout.primary(),
        accentColor: Layout.secondary(),
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
            color: Layout.primary(),
          ),
          bodyText2: TextStyle(fontSize: 14),
        ),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('pt', 'BR'),
        Locale('en'),
      ],
      home:
      TelaInicial(),
      routes: routes,
    );
  }
}