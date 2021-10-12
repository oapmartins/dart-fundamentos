void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  var listaNova = pessoas.toSet().map((e) => e.split('|').toList());
  print('Tamanho da lista: ${listaNova.length}');
  for (var pessoas in listaNova) {
    print(pessoas[0]);
  }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  final mapSexo = <String, List<String>>{};
  for (var pessoa in listaNova) {
    final sexo = pessoa[2].toLowerCase();
    final listaM = mapSexo['M'] ?? <String>[];
    final listaF = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') listaM.add(pessoa[0]);
    if (sexo == 'feminino') listaF.add(pessoa[0]);

    mapSexo['M'] = listaM;
    mapSexo['F'] = listaF;
  }

  final masculinos = mapSexo['M'] ?? <String>[];
  final feminino = mapSexo['F'] ?? <String>[];
  print('\nMasculinos: ${masculinos.length}');
  masculinos.forEach(print);
  print('\nFemininos: ${feminino.length}');
  feminino.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  final pessoasMaiores18 = listaNova.where((p) {
    final idade = int.tryParse(p[1]) ?? 0;
    return idade > 18;
  }).toList();

  print('\nLista maiores de 18');
  for (var p in pessoasMaiores18) {
    print(p[0]);
  }

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  var listaOrdenada = [...listaNova];
  listaOrdenada.sort((p1, p2) {
    var idadePessoa1 = int.tryParse(p1[1]) ?? 0;
    var idadePessoa2 = int.tryParse(p2[1]) ?? 0;
    return idadePessoa2.compareTo(idadePessoa1);
  });
  var pessoaMaisVelha = listaOrdenada.first;
  print(
      '\nA pessoa mais velha é ${pessoaMaisVelha[0]}, com ${pessoaMaisVelha[1]} anos de idade.');
}
