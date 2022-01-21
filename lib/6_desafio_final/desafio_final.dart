import 'package:dart_fundamentos/5_dart_banco_dados/database.dart';
import 'package:dart_fundamentos/6_desafio_final/repositories/estado_repository.dart';
import 'package:http/http.dart';

Future<void> main() async {
  // Abrindo a conexão com o banco.
  final database = Database();
  final conn = await database.openConnection();

  final estado = EstadoRepository();
  print(estado.buscarEstados());
}
