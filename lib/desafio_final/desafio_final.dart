void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  // Resolução

  // PACIENTES COM MAIS DE 20 ANOS DE IDADE.
  print(
      '\n1 - Apresente os pacientes com mais de 20 anos e print o nome deles');
  for (final paciente in pacientes) {
    final pacientesDados = paciente.split('|');
    final idade = int.tryParse(pacientesDados[1]) ?? 0;
    if (idade > 20) {
      print(
          'Seu nome é ${pacientesDados.first}, e sua idade é ${pacientesDados[1]}');
    }
  }
  // PACIENTES EXISTENSTES EM CADA PROFISSAO.
  print(
      '\n2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');
  final arrayProfissoes = [
    'desenvolvedor',
    'estudante',
    'dentista',
    'jornalista'
  ];

  arrayProfissoes.forEach((profissao) {
    print(
        '$profissao: ${pacientes.where((p) => p.split("|")[2].toLowerCase() == profissao).toList().length}');
  });

  // PACIENTES QUE MORAM EM SP.
  print('\n3 - Apresente a quantidade de pacientes que moram em SP');
  var listaPacientesSP = pacientes
      .where((element) => element.split("|").last.toLowerCase() == 'sp');

  print('Quantidade de pessoas que moram em SP: ${listaPacientesSP.length}');
}
