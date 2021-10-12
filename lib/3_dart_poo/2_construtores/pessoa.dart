class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // Construtor Default. Todas clases tem automaticamente.
  // Pessoa();

  // Podemos utilizar essa sintaxe encurtada para passar parâmetros para o construtor.
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  // Construtores nomeados
  Pessoa.semNome({
    this.nome = 'Fábia',
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazio();

  // Construtor Factory é utilizado quando eu preciso criar alguma regra
  // antes de criar a minha instância da classe. Antes de chamar o construtor.
  factory Pessoa.fabrica(String nomeConstr) {
    var nome = nomeConstr + '_fabrica';
    var pessoa = Pessoa.vazio();
    pessoa.nome = nome;
    return pessoa;
  }
}
