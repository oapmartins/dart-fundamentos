import 'dart:async';
import 'dart:convert';

import 'package:dart_fundamentos/6_desafio_final/database.dart';
import 'package:dart_fundamentos/6_desafio_final/models/cidade.dart';
import 'package:dart_fundamentos/6_desafio_final/models/estado.dart';
import 'package:http/http.dart';
import 'package:mysql1/mysql1.dart';

class CidadeRepository {
  final database = Database();

  //! RR - Novamente é sempre importante declarar os tipos das variáveis
  //! no caso o MapEstados está sendo setado como dynamic
  //! RR - Nesse método você também deixou de declarar o tipo do retorn
  //! fazendo com que esse método retorne dynamic e acredito que a sua
  //! ideia era que retorna-se void
  Future cadastrarCidades(mapEstados, MySqlConnection conn) async {
    print('- Iniciando cadastro Cidades');

    for (var estado in mapEstados) {
      final idEstado = estado['id'];

      final url =
          'https://servicodados.ibge.gov.br/api/v1/localidades/estados/$idEstado/distritos';
      final response = await get(Uri.parse(url));

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        //!RR - Mesma questão do if inline que acho difícil de ler
        if (responseData is List) _cadastrarCidades(responseData, conn);
      } else {
        //! RR - PERFEITO tratamento de erro por Exception gosto muito da estratégia
        throw Exception();
      }
    }
    print('- Finalizando cadastro Cidades');
  }

  Future<bool> _cadastrarCidades(cidades, MySqlConnection conn) async {
    // Iniciando Strams
    final streamController = StreamController<Map<String,dynamic>>.broadcast();
    final inStream = streamController.sink;
    final outStream = streamController.stream;

    try {
      //! RR - aqui como vc está fazendo uma conversão,
      //! você poderia utilizar a própria stream para fazer isso,
      //! vou deixar o exemplo aqui
      outStream.map((Map<String,dynamic> cidade) {
        final nomeCidade = cidade['nome'];
        final idUf =
            cidade['municipio']['microrregiao']['mesorregiao']['UF']['id'];
        return Cidade.fromMap({'id_uf': idUf, 'nome': nomeCidade});
      }).listen((cidade) => _inserirCidade(cidade, conn));

      // outStream.listen((cidade) => _inserirCidade(cidade, conn));
    } on MySqlException catch (e) {
      print('Ocorreu um erro ao tentar cadastrar os dados da Cidade');
      return false;
    }

    //! RR - no caso como vc não tem await vc pode utilizar o forEach.
    cidades.forEach(inStream.add);
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
