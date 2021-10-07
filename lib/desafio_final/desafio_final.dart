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

  print('Lista dos Pacientes com maios de 20 anos');
  var listaPacientesAcima20 =
      pacientes.where((element) => int.parse(element.split("|")[1]) > 20);

  for (var paciente in listaPacientesAcima20) {
    final pacienteSeparado = paciente.split('|');
    print(
        'Seu nome é ${pacienteSeparado.first}, e sua idade é ${pacienteSeparado[1]}');
  }
}
