void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // Expand
  var lista = [
    [1, 2],
    [3, 4],
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // Any
  final listaBusca = ['Octávio', 'João', 'José'];
  if (listaBusca.any((nome) => nome == 'José')) {
    print('Tem José');
  }

  // Every
  final listaBusca2 = ['Octávio', 'João', 'José'];
  if (listaBusca2.every((nome) => nome.contains('o'))) {
    print('Todos os nomes tem a letra O');
  } else {
    print('Nem todos os nomes tem a letra O');
  }

  // .Sort
  print('.sort');
  var listaParaOrdenacao = [39, 9, 74, 24, 3, 529, 88, 35, 65, 124, 22, 10];

  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Octávio', 'João', 'José'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  // Também podemos fazer nosa própria regra para ordenação
  final listaPacientes = [
    'Rodrigo Rahman|8|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  listaPacientes.sort((paciente1, paciente2) {
    final idadePaciente1 = int.parse(paciente1.split('|')[1]);
    final idadePaciente2 = int.parse(paciente2.split('|')[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });

  print(listaPacientes);

  // SORT com CompareTo
  final listaPacientes2 = [
    'Rodrigo Rahman|8|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final idadePaciente1 = int.parse(paciente1.split('|')[1]);
    final idadePaciente2 = int.parse(paciente2.split('|')[1]);
    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(listaPacientes2);
}

void printAcademia(int valor) {
  print(valor);
}
