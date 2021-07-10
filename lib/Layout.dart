import 'package:flutter/material.dart';
import 'package:gengo_languages/Teste/HomeScreen.dart';
import 'package:intl/intl.dart';
import 'Pages/Cadastro.dart';

class Layout {
  static BuildContext scaffoldContext;

  static final pages = [
    //Cadastro.tag,
    HomeScreen.tag,
    //AboutPage.tag,
    //SettingsPage.tag,
  ];

  static int currItem = 0;

  static SingleChildScrollView getContent(
      BuildContext context,
      content, [
        bool showbottom = true,
      ]) {

    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Gengo language', style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 20
            ),
            ),
            backgroundColor: Colors.orangeAccent,
          ),

          body: new Builder(
            builder: (BuildContext context) {
              // Store the scaffold context to show snackbars
              Layout.scaffoldContext = context;
              return content;
            },
          ),
        ),
      ),
    );
  }

  static Color primary([double opacity = 1]) => Colors.orangeAccent.withOpacity(opacity);
  static Color primaryDark([double opacity = 1]) => Color(0xff9a0007).withOpacity(opacity);
  static Color primaryLight([double opacity = 1]) => Color(0xffff6659).withOpacity(opacity);

  static Color secondary([double opacity = 1]) => Colors.teal[700].withOpacity(opacity);
  static Color secondaryDark([double opacity = 1]) => Color(0xff004c40).withOpacity(opacity);
  static Color secondaryLight([double opacity = 1]) => Color(0xff48a999).withOpacity(opacity);

  static Color light([double opacity = 1]) => Color.fromRGBO(242, 234, 228, opacity);
  static Color dark([double opacity = 1]) => Color.fromRGBO(51, 51, 51, opacity);

  static Color danger([double opacity = 1]) => Color.fromRGBO(217, 74, 74, opacity);
  static Color success([double opacity = 1]) => Color.fromRGBO(5, 100, 50, opacity);
  static Color info([double opacity = 1]) => Colors.blue[900].withOpacity(opacity);
  static Color warning([double opacity = 1]) => Color.fromRGBO(166, 134, 0, opacity);
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
