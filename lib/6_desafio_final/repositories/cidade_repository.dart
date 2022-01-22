import 'dart:async';
import 'dart:convert';

import 'package:dart_fundamentos/6_desafio_final/database.dart';
import 'package:dart_fundamentos/6_desafio_final/models/cidade.dart';
import 'package:dart_fundamentos/6_desafio_final/models/estado.dart';
import 'package:http/http.dart';
import 'package:mysql1/mysql1.dart';

class CidadeRepository {
  final database = Database();

  Future cadastrarCidades(mapEstados, MySqlConnection conn) async {
    print('- Iniciando cadastro Cidades');

    for (var estado in mapEstados) {
      final idEstado = estado['id'];

      final url =
          'https://servicodados.ibge.gov.br/api/v1/localidades/estados/$idEstado/distritos';
      final response = await get(Uri.parse(url));

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData is List) _cadastrarCidades(responseData, conn);
      } else {
        throw Exception();
      }
    }
    print('- Finalizando cadastro Cidades');
  }

  Future<bool> _cadastrarCidades(cidades, MySqlConnection conn) async {
    // Iniciando Strams
    final streamController = StreamController<Cidade>.broadcast();
    final inStream = streamController.sink;
    final outStream = streamController.stream;

    try {
      outStream.listen((cidade) => _inserirCidade(cidade, conn));
    } on MySqlException catch (e) {
      print('Ocorreu um erro ao tentar cadastrar os dados da Cidade');
      return false;
    }

    for (var cidade in cidades) {
      final nomeCidade = cidade['nome'];
      final idUf =
          cidade['municipio']['microrregiao']['mesorregiao']['UF']['id'];
      inStream.add(Cidade.fromMap({'id_uf': idUf, 'nome': nomeCidade}));
    }
    await streamController.close();
    return true;
  }

  Future<bool> _inserirCidade(Cidade cidade, MySqlConnection conn) async {
    try {
      await conn.query(
        'insert into cidade values(?,?,?)',
        [null, cidade.idUf, cidade.nome],
      );
      return true;
    } on MySqlException catch (e) {
      print('Não foi possível inserir os Estados');
      return false;
    }
  }

  Future<void> limparTabela(MySqlConnection conn) async {
    try {
      await conn.query(
        "DELETE FROM cidade where id != ?",
        [0],
      );
      print('Tabela de Cidades Limpa');
    } on MySqlException catch (e) {
      print('Erro ao excluir as Cidades.');
    }
  }
}
