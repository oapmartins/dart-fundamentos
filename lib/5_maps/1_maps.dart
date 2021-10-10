void main() {
  // O mapa é uma representação de chave e valor, tipo objeto.
  final paciente = <String, String>{
    'nome': 'Octávio Augusto',
    'curso': 'Academia do Flutter',
  };

  // Aqui o Map pode ser nulo
  Map<String, String>? pacienteNullSafety = null;

  // Aqui a chave do map pode ser nula.
  var pacienteNullSafety2 = <String?, String>{
    null: 'Academia do Flutter',
  };

  // Aqui somente os valores podem ser nulos.
  var pacienteNullSafety3 = <String, String?>{
    'curso': null,
  };

  // Aqui a tanto a chave do map e o valor podem ser nulos.
  var pacienteNullSafety4 = <String?, String?>{
    null: null,
  };

  var produtos = <String, String>{};

  // Só adiciona se já não existir uma chave com o mesmo nome
  produtos.putIfAbsent('nome', () => 'Biscoito');
  print(produtos);

  // Com esse método podemos atualizar uma chave já existente.
  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);

  // Ao atualziar, com o ifAbsent podemos criar o valor caso ele não exista.
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor dentro do map
  print('Produto ${produtos['nome']}');
  print('Produto ${produtos['preco']}');

  // Percorrendo o map com foreach
  produtos.forEach((key, value) {
    print('Chave: $key, Valor: $value');
  });

  // Percorrendo o map com for in ( UTILIZAR QUANDO QUISER FAZER UM PROCESSO ASYNC DENTRO DO METODO).
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}, Valor: ${entry.value}');
  }

  // Pegando as chaves.
  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  // Pegando os valores
  for (var values in produtos.values) {
    print('Valores: $values');
  }

  // Para utilizar os metodos, deve ser retornado um mapEntry.
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });

  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Octávio Augusto',
    'cursos': [
      {'nome': 'Academia do Flutter', 'descricao': 'Curso de Flutter'},
      {'nome': 'Arquiteto Flutter', 'descricao': 'Curso de Flutter'},
    ]
  };

  print(mapa);
}
