import 'package:dart_fundamentos/8_repositories/repositories/cidade_repository.dart';
import 'package:dart_fundamentos/8_repositories/repositories/user_repository.dart';
import 'package:dart_fundamentos/8_repositories/repositories/user_types_repositpry.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findAllUsers(1);
    print(user?.name ?? 'Usuário nãp encontrado');
  } on Exception {
    print('Erro ao buscar cidade');
  }
}
