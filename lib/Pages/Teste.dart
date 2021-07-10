import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gengo_languages/HomeScreen_Home.dart';

class Teste extends StatefulWidget {
  static String tag = 'Teste';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
enum SingingCharacter { A, B, C }
class _MyHomePageState extends State<Teste>
    with SingleTickerProviderStateMixin{

  SingingCharacter _character;

  bool _value = false;
  int val = -1, val2 = -1, val3 = -1, val4 = -1, val5 = -1;
  int val6 = -1, val7 = -1, val8 = -1, val9 = -1, val10 = -1;

  int pontuacao = 0;
  var tipo = ["Visual", "Auditivo","Cinestésico"];
  var tipoDescricao = ["As cores e as formas são a primeira coisa que chamam a sua atenção. Muitas vezes, ao pensar em algum conceito, você costuma associá-lo rapidamente com uma imagem, e prefere lembrar o que lê, e não o que escuta. Para organizar a informação na sua cabeça, é importante fazer mapas mentais para lembrar a ideia inicial e colocá-la em prática. Além disso, você precisa de espaço para absorver toda a informação que os seus olhos recebem.",
    "Para você, o auditivo é mais importante que o visual. Na escola, não tem — ou não tinha — necessidade de anotar nada, já que tudo que é dito vai diretamente para a sua memória. É por isso que você adora escutar histórias. A música é a chave para a sua concentração, já que o som de cada lugar onde você está chama muito a sua atenção. Para você, a melhor coisa do mundo é passar uma tarde escutando um audiolivro ou ouvindo algumas de suas músicas preferidas.",
    "Paara aprender algo, você precisa viver a experiência. Não importa se as pessoas dizem que a água evapora após tanto tempo; você precisa fazer o experimento para acreditar. Os jogos didáticos foram criados para pessoas com a sua capacidade de aprendizado e é por isso que visitar novos lugares, conviver com novas pessoas, mover o corpo e experimentar sensações é algo que não apenas te faz feliz e te faz aprender."];

  void _Resultados (BuildContext ctx, int t) {
    showDialog(
      context: ctx,
      builder: (_) {
        return SimpleDialog(
          backgroundColor: _colors[_currentColorIndex],
          title: Text('Você é do tipo ${tipo[t]}!',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.orange[800],
              fontSize: 20,
            ),
          ),
          children: [
            Padding (
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Text("${tipoDescricao[t]}",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.orange[800],
                    fontSize: 14,
                  ),
                ),
            ),
            Card(
              color: Colors.orange[800],
              child: SimpleDialogOption(
                child: Text('Continuar',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 15,
                  ),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen_Home()),
                  );
                },
              ),
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
                    children: [
                      Card(
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                              child: Center(
                                child: Text("Teste VAC",
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
                              padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                              child: Center(
                                child: Text("É bem rapidinho e com ele vamos descobrir o melhor método de aprendizagem para você!",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 14,
                                  ),
                                ),
                              )
                          )
                      ),

                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("1) A que fonte você prefere recorrer para resolver as suas dúvidas no dia a dia?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    print("pontuacao $pontuacao");
                                    setState(() {
                                      val = value;
                                    });
                                  },
                                  title: Text("Wikipédia"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    print("pontuacao $pontuacao");
                                    setState(() {
                                      val = value;
                                    });
                                  },
                                  title: Text("Youtube"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    print("pontuacao $pontuacao");
                                    setState(() {
                                      val = value;
                                    });
                                  },
                                  title: Text("Pergunto para um conhecido"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("2) Qual desses objetos você levaria para as suas próximas férias?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val2,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val2 = value;
                                    });
                                  },
                                  title: Text("Sua música favorita"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val2,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val2 = value;
                                    });
                                  },
                                  title: Text("Câmera fotográfica"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val2,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val2 = value;
                                    });
                                  },
                                  title: Text("Jogos de tabuleiro"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("3) Escolha um programa para o seu próximo encontro",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val3,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val3 = value;
                                    });
                                  },
                                  title: Text("Jogar boliche"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val3,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val3 = value;
                                    });
                                  },
                                  title: Text("Ir a um concerto"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val3,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val3 = value;
                                    });
                                  },
                                  title: Text("Ver um filme no cinema"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("4) Como você prefere trabalhar?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val4,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val4 = value;
                                    });
                                  },
                                  title: Text("Em grupo, assim todos podem contribuir"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val4,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val4 = value;
                                    });
                                  },
                                  title: Text("Sozinho, para poder me concentrar melhor"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val4,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val4 = value;
                                    });
                                  },
                                  title: Text("Prefiro receber indicações precisas, para resolver tudo melhor"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("5) Escolha o seu brinquedo favorito",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val5,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val5 = value;
                                    });
                                  },
                                  title: Text("Instrumento musical"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val5,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val5 = value;
                                    });
                                  },
                                  title: Text("Blocos de construção"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val5,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val5 = value;
                                    });
                                  },
                                  title: Text("Quebra-cabeça"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("6) Qual é a sua ideia de uma tarde tranquila?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val6,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val6 = value;
                                    });
                                  },
                                  title: Text("Jogar videogame"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val6,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val6 = value;
                                    });
                                  },
                                  title: Text("Ver séries ou ler"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val6,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val6 = value;
                                    });
                                  },
                                  title: Text("Escutar música e conversar"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("7) Como é a sua forma de se vestir?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val7,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val7 = value;
                                    });
                                  },
                                  title: Text("Sou informal, prefiro a comodidade"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val7,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val7 = value;
                                    });
                                  },
                                  title: Text("Mudo sempre tudo, nada é casualidade"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val7,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val7 = value;
                                    });
                                  },
                                  title: Text("Visto a moda de acordo com a situação"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("8) Como seriam as suas férias perfeitas?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val8,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val8 = value;
                                    });
                                  },
                                  title: Text("Acampar com minha família ou amigos"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val8,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val8 = value;
                                    });
                                  },
                                  title: Text("Visitar ruínas e povos enigmáticos"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val8,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val8 = value;
                                    });
                                  },
                                  title: Text("Ir para a praia uns dias e aproveitar a vista"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("9) Do que você mais gosta na sua casa?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val9,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val9 = value;
                                    });
                                  },
                                  title: Text("Ela é silenciosa"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val9,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val9 = value;
                                    });
                                  },
                                  title: Text("A luz que entra pela janela"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val9,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val9 = value;
                                    });
                                  },
                                  title: Text("Ela é cômoda"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                          child: Padding (
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("10) Como você sabe que gosta de uma pessoa?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.orange[800],
                                    fontSize: 16,
                                  ),
                                ),
                                RadioListTile(
                                  value: 1,
                                  groupValue: val10,
                                  onChanged: (value) {
                                    if(value == 1){
                                      pontuacao = pontuacao+0;
                                    }
                                    else{
                                      pontuacao = pontuacao-0;
                                    }
                                    setState(() {
                                      val10 = value;
                                    });
                                  },
                                  title: Text("Pelos seus gestos e movimentos"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 2,
                                  groupValue: val10,
                                  onChanged: (value) {
                                    if(value == 2){
                                      pontuacao = pontuacao+1;
                                    }
                                    else{
                                      pontuacao = pontuacao-1;
                                    }
                                    setState(() {
                                      val10 = value;
                                    });
                                  },
                                  title: Text("Por como ela se expressa com os demais"),
                                  toggleable: true,
                                ),
                                RadioListTile(
                                  value: 3,
                                  groupValue: val10,
                                  onChanged: (value) {
                                    if(value == 3){
                                      pontuacao = pontuacao+2;
                                    }
                                    else{
                                      pontuacao = pontuacao-2;
                                    }
                                    setState(() {
                                      val10 = value;
                                    });
                                  },
                                  title: Text("Pela forma como me cumprimenta"),
                                  toggleable: true,
                                ),
                              ],
                            ),
                          )
                      ),
                      Card(
                        child: OutlinedButton(
                            style: outlineButtonStyle,
                            onPressed: () {
                              print("Botão Verificar");
                              print("pontuacao: $pontuacao");

                              if(pontuacao <= 6){
                                setState(() {
                                  _Resultados(context, 0);
                                });
                              }
                              else if(pontuacao >= 7 && pontuacao <= 13){
                                setState(() {
                                  _Resultados(context, 1);
                                });
                              }
                              else{
                                setState(() {
                                  _Resultados(context, 2);
                                });
                              }

                            },
                            child: Padding (
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
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
                  )
                ),
              ),
            )
          ]
      ),
    );
  }
}
