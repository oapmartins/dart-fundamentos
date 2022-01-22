import 'package:dart_fundamentos/6_desafio_final/database.dart';
import 'package:dart_fundamentos/6_desafio_final/repositories/cidade_repository.dart';
import 'package:dart_fundamentos/6_desafio_final/repositories/estado_repository.dart';

Future<void> main() async {
  final database = Database();
  final conn = await database.openConnection();

  final estado = EstadoRepository();
  final cidade = CidadeRepository();

  // Limpando a tabela antes de inserir os dados. (Limpando primeiro a tabela de Cidade para não dar erro de chave)
  await cidade.limparTabela(conn);
  await estado.limparTabela(conn);

  // Cadastrando os Estados e as Cidades.
  final mapEstados = await estado.cadastrarEstados(conn);
  await cidade.cadastrarCidades(mapEstados, conn);
}
