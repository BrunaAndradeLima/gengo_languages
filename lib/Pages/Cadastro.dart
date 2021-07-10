import 'package:flutter/material.dart';
import 'package:gengo_languages/Helpers/database_helper.dart';
import 'package:gengo_languages/Models/cadastroUsers.dart';
import 'package:gengo_languages/Pages/Teste.dart';
import 'package:gengo_languages/Layout.dart';

class Cadastro extends StatefulWidget {
  static String tag = 'Cadastro';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Cadastro> {
  GlobalKey<FormState> _key = new GlobalKey();
  int _validate = 0;
  String nome, sobrenome, email, celular, senha;

  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  DatabaseHelper db = DatabaseHelper();
  List<CadastroUsers> usuarios = <CadastroUsers>[];

/*  @override
  void initState(){
    super.initState();
    db.initializeDatabase();
    CadastroUsers c = CadastroUsers(2, "Bruna","Lima","teste@teste.com","aluno123","Cinestésico",0);
    db.insertUser(c);

    db.getUsers().then((lista){
      print(lista);
    });
    db.getUsers().then ((lista){
      setState((){
        usuarios = lista;
      });
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Scaffold(
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidateMode: AutovalidateMode.values[_validate],
              child: _formUI(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formUI(BuildContext context) {
    return new Column(
      children: <Widget>[
        Card(
            child: Padding (
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                child: Center(
                  child: Text("Por favor, informe seus dados:",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.orange[800],
                      fontSize: 20,
                    ),
                  ),
                )
            )
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Nome:'),
          maxLength: 20,
          validator: _validarNome,
          onSaved: (String val) {
            nome = val;
          },
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Sobrenome'),
          maxLength: 30,
          validator: _validarNome,
          onSaved: (String val) {
            sobrenome = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Celular'),
            keyboardType: TextInputType.phone,
            maxLength: 11,
            validator: _validarCelular,
            onSaved: (String val) {
              celular = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            maxLength: 40,
            validator: _validarEmail,
            onSaved: (String val) {
              email = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Senha'),
            keyboardType: TextInputType.visiblePassword,
            maxLength: 20,
            validator: _validarSenha,
            obscureText: _obscureText,
            onSaved: (String val) {
              senha = val;
            }),
        new SizedBox(height: 15.0),
        new ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent, // background
            ),
            onPressed: _sendForm,
            child: new Text('Enviar')
        ),
      ],
    );
  }
  String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome e sobrenome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }
  String _validarCelular(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o celular";
    } else if(value.length < 10){
      return "O celular deve ter no mínimo 10 dígitos";
    }else if (!regExp.hasMatch(value)) {
      return "O número do celular so deve conter dígitos";
    }
    return null;
  }
  String _validarEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if(!regExp.hasMatch(value)){
      return "Email inválido";
    }else {
      return null;
    }
  }
  String _validarSenha(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe uma senha";
    } else if(!regExp.hasMatch(value)){
      return "Senha inválida";
    }else if(value.length < 4){
      return "A senha deve ter mais de 4 dígitos";
    }else {
      return null;
    }
  }
  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $nome");
      print("Sobrenome $sobrenome");
      print("Celular $celular");
      print("Email $email");
      print("Senha $senha");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Teste()),
      );
    } else {
      // erro de validação
      setState(() {
        _validate = 1;
      });
    }
  }
}
