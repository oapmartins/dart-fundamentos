import 'package:dart_fundamentos/6_desafio_final/models/estado.dart';
import 'package:http/http.dart';

class EstadoRepository {
  Future<Estado> buscarEstados() async {
    final url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
    final response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Estado.fromJson(response.body);
    } else {
      throw Exception();
    }
  }
}
