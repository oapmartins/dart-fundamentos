void main() {
  var pessoa = Pessoa();
  pessoa.nome = "octávio";
  print(pessoa.nome);
}

class Pessoa {
  String? _nome;

  String? get nome => _nome;
  set nome(String? nome) => _nome = nome;
}
