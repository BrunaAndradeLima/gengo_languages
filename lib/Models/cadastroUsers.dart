
class CadastroUsers{
  int id;
  String nome;
  String sobrenome;
  String email;
  String senha;
  String teste_vac;
  int pontuacao;

  CadastroUsers(this.id, this.nome, this.sobrenome, this.email, this.senha, this.teste_vac, this.pontuacao);

  Map<String, dynamic> toMap(){
    var map = <String,dynamic>{
      'id':id,
      'nome': nome,
      'sobrenome': sobrenome,
      'email': email,
      'senha': senha,
      'teste_vac': teste_vac,
      'pontuacao': pontuacao
    };
    return map;
  }

  CadastroUsers.fromMap(Map<String,dynamic> map){
    id = map['id'];
    nome = map['nome'];
    sobrenome = map['sobrenome'];
    email = map['email'];
    senha = map['senha'];
    teste_vac = map['teste_vac'];
    pontuacao = map['pontuacao'];
  }

  @override
  String toString(){
    return "CadastroUsers => (id: $id, nome: $nome, sobrenome: $sobrenome, email: $email, senha: $senha, teste_vac: $teste_vac, pontuacao: $pontuacao)";
  }
}