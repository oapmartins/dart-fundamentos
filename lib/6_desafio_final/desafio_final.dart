import 'package:dart_fundamentos/6_desafio_final/database.dart';
import 'package:dart_fundamentos/6_desafio_final/repositories/cidade_repository.dart';
import 'package:dart_fundamentos/6_desafio_final/repositories/estado_repository.dart';

Future<void> main() async {
  final database = Database();
  //! RR um ponto importante o ideal é você não manter a conexão ativa
  //! por todo o processo, pois isso pode te dar problema de timeout
  //! e estouro de maximo de conexões com o banco
  final conn = await database.openConnection();

  final estado = EstadoRepository();
  final cidade = CidadeRepository();

  // Limpando a tabela antes de inserir os dados. (Limpando primeiro a tabela de Cidade para não dar erro de chave)
  
  //! RR - Muito boa a estratégia, mas só pense que talvez isso possa gerar um problema
  //! em um app real, pois os ids da tabela cidade podem já terem sido utilizados
  //! mas a ideia foi boa pois assim vc pode rodar o script várias vezes.
  await cidade.limparTabela(conn);
  await estado.limparTabela(conn);

  // Cadastrando os Estados e as Cidades.
  final mapEstados = await estado.cadastrarEstados(conn);
  await cidade.cadastrarCidades(mapEstados, conn);

  //! RR - PONTO DE ATENÇÃO!!!!
  //! FALTOU FECHAR A CONEXÃO COM O BANCO!!!!
}
