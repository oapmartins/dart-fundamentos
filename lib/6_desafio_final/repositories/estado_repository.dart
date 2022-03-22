import 'dart:async';
import 'dart:convert';

import 'package:dart_fundamentos/6_desafio_final/database.dart';
import 'package:dart_fundamentos/6_desafio_final/models/estado.dart';
import 'package:http/http.dart';
import 'package:mysql1/mysql1.dart';

class EstadoRepository {
  Future cadastrarEstados(MySqlConnection conn) async {
    print('- Iniciando cadastro Estados');

    final url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
    final response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);
      // RR - Eu particularmente não gosto muito de if in line.
      // prefiro sempre que vc utilize as chaves e coloque o método dentro pois assim
      // o código fica mais intuitivo e fácil de ler ;-) 
      if (responseData is List){
        _cadastrarEstados(responseData, conn);
      }

      print('- Finalizando cadastro Estados ');
      return responseData;
    } else {
      throw Exception();
    }
  }

  //! RR - É muito importante vc sempre tipar as variáveis, pois assim
  //! Você economiza tempo do compilador e do runtime do dart para tentar identificar 
  //! o tipo da variável
  Future<bool> _cadastrarEstados(estados, MySqlConnection conn) async {

    //! RR - Acredito que sua ideia era fazer em paralelo e 
    //! para testar as Streams, interessante a forma que vc resolveu
    // Iniciando Strams
    final streamController = StreamController<Estado>.broadcast();
    final inStream = streamController.sink;
    final outStream = streamController.stream;

    try {
      outStream.listen((estado) => _inserirEstado(estado, conn));
      //! RR - Não entendi muito bem esse tryCatch pois a principio o 
      //! Listen vai executar o onError quando ocorrer algum problema no insert!!!.
    } on MySqlException catch (e) {
      print('Ocorreu um erro ao tentar cadastrar os dados do Estado');
      return false;
    }

    for (var estado in estados) {
      inStream.add(Estado.fromMap(estado));
    }
    await streamController.close();
    return true;
  }

  Future<bool> _inserirEstado(Estado estado, MySqlConnection conn) async {
    // Iniciando Banco de dados.

    try {
      await conn.query(
        'insert into estado values(?,?,?)',
        [estado.id, estado.sigla, estado.nome],
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
        "DELETE FROM estado where id != ?",
        [0],
      );
      print('Tabela de Estados Limpa');
    } on MySqlException catch (e) {
      print('Erro ao excluir os Estados.');
    }
  }
}
