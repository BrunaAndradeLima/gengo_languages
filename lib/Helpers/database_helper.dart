import 'dart:async';
import 'dart:io';
import 'package:gengo_languages/Models/cadastroUsers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{

  static DatabaseHelper _databaseHelper;
  static Database _database;

  //usada para definir as colunas da tabela
  String colId;
  String colNome;
  String colSobrenome;
  String colEmail;
  String colSenha;
  String colTeste_vac;
  String colPontuacao;


  //construtor nomeado para criar instancia da classe
  DatabaseHelper._createInstance();

  factory DatabaseHelper(){
    if(_databaseHelper == null){
      //executado somente uma vez
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  Future<Database> get database async{
    if(_database == null){
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'users.db';

    var CadastroDatabase = await openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute('CREATE TABLE cadastroUsuarios(id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, sobrenome TEXT, email TEXT, senha TEXT, teste_vac TEXT, pontuacao INTEGER)',);
    },);
    return CadastroDatabase;
  }

  Future<int> save(CadastroUsers cadastroUsers) {
    return initializeDatabase().then((db) {
      final Map<String, dynamic> usuarioMap = Map();
      usuarioMap['nome'] = cadastroUsers.nome;
      usuarioMap['sobrenome'] = cadastroUsers.sobrenome;
      usuarioMap['teste_vac'] = cadastroUsers.teste_vac;
      usuarioMap['email'] = cadastroUsers.email;
      usuarioMap['senha'] = cadastroUsers.senha;
      return db.insert('cadastroUsuarios', usuarioMap);
    });
  }

  //salva com um id de inserção no bd
  Future<int> salvaLogin(CadastroUsers user) {
    return initializeDatabase().then((db) async {
      int res = await db.insert("user", user.toMap());
      return res;
    });
  }

  //Incluir um objeto user no banco de dados
  Future<int> insertUser(CadastroUsers user) async{
    print("passou aqui");
    Database db = await this.database;
    print("passou aqui 2");
    var resultado = await db.insert("cadastroUsuarios", user.toMap());
    print("passou aqui 3");
    return resultado;
  }

  //Retorna um user pelo id
  Future<CadastroUsers> getUser(int id) async{
    Database db = await this.database;

    List<Map> maps = await db.query("cadastroUsuarios",
    columns: [colId, colNome, colSobrenome, colEmail, colSenha, colTeste_vac, colPontuacao],
    where: "$colId = ?",
    whereArgs: [id] );

    if(maps.length > 0){
      return CadastroUsers.fromMap(maps.first);
    }else{
      return null;
    }
  }

  //Retorna um user pelo id
  Future<List<CadastroUsers>> getUsers() async{
    Database db = await this.database;
    var resultado = await db.query("cadastroUsuarios");

    List<CadastroUsers> lista =
        resultado.isNotEmpty ? resultado.map(
                (c) => CadastroUsers.fromMap(c)).toList() : [];
    return lista;
  }

  //Atualizar o objeto User e salva no banco de dados
  Future<int> updateUser(CadastroUsers users) async{
    var db = await this.database;

    var resultado =
        await db.update("cadastroUsuarios", users.toMap(),
            where: "$colId = ?",
            whereArgs: [users.id]);

    return resultado;
  }

  //Deletar um objeto User do banco de dados
  Future<int> deleteUser(int id) async{
    var db = await this.database;
    int resultado =
        await db.delete("usersTable",
            where: "$colId = ?",
            whereArgs: [id]);

    return resultado;
  }

  //Obtem o número de objetos Users no banco de dados
  Future<int> getCount() async{
    Database db = await this.database;
    List<Map<String, dynamic>> x = await db.rawQuery('SELECT COUNT (*) from cadastroUsuarios');

    int resultado = Sqflite.firstIntValue(x);
    return resultado;
  }

  Future close() async {
    Database db = await this.database;
    db.close();
  }
}